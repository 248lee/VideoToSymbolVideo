#include <opencv2/opencv.hpp>
#include <vector>
#include <fstream>
using namespace std;
int main()
{
    char table[] = {'.', ':', ';', '7', '2', '5', '4', '6', '9', '0', '8'};
    // Load the video
    cv::VideoCapture video("input.mp4");

    if (!video.isOpened())
    {
        std::cout << "Failed to open the video file." << std::endl;
        return -1;
    }

    // Set the position to the end of the video
    // video.set(cv::CAP_PROP_POS_AVI_RATIO, 1);

    // Retrieve video properties
    int frameCount = (video.get(cv::CAP_PROP_FRAME_COUNT));
    int frameWidth = static_cast<int>(video.get(cv::CAP_PROP_FRAME_WIDTH));
    int frameHeight = static_cast<int>(video.get(cv::CAP_PROP_FRAME_HEIGHT));

    const int extract_frame_count = 1;
    const int extract_pixel_count = 3;
    std::cout << "Totally " << frameCount << " frames.\n";

    // Process each frame
    for (int frameIndex = 0; frameIndex < frameCount; ++frameIndex)
    {
        // Read the current frame
        cv::Mat frame;
        video >> frame;

        // extract frame count
        if (frameIndex % extract_frame_count != 0)
            continue;

        if (frame.empty())
        {
            std::cout << "Failed to load frame " << frameIndex << '\n';
            break;
        }

        // Convert the frame to grayscale
        cv::Mat grayFrame;
        cv::cvtColor(frame, grayFrame, cv::COLOR_BGR2GRAY);

        // Access the pixel values
        int rows = grayFrame.rows;
        int cols = grayFrame.cols;

        // Create a 2D array to store the pixel values
        int **pixelValues = new int *[rows];
        for (int i = 0; i < rows; ++i)
        {
            pixelValues[i] = new int[cols];
        }

        // Copy the pixel values to the 2D array
        for (int i = 0; i < rows; ++i)
        {
            for (int j = 0; j < cols; ++j)
            {
                pixelValues[i][j] = static_cast<int>(grayFrame.at<uchar>(i, j));
            }
        }

        vector<vector<char>> result;

        for (int i = 0; i < rows - 3; i += 3)
        {
            vector<char> tmp;
            for (int j = 0; j < cols - 3; j += 3)
            {
                int avg = 0;
                for (int k = 0; k < extract_pixel_count; k++)
                {
                    for (int l = 0; l < extract_pixel_count; l++)
                    {
                        avg += pixelValues[i + k][j + l];
                    }
                }
                avg /= (extract_pixel_count * extract_pixel_count);
                tmp.push_back(table[avg / 24]);
            }
            result.push_back(tmp);
        }

        // Save the pixel values to a file
        std::ofstream outputFile("processed_video/frame_" + std::to_string(frameIndex) + ".txt");
        if (outputFile.is_open())
        {
            for (int i = 0; i < result.size(); ++i)
            {
                for (int j = 0; j < result[i].size(); ++j)
                {
                    outputFile << result[i][j] << " ";
                }
                outputFile << "\n";
            }
            outputFile.close();
            std::cout << "Frame " << frameIndex << " save to file.\n";
        }
        else
        {
            std::cout << "Failed to open the output file for frame " << frameIndex << '\n';
        }

        // Clean up the dynamically allocated memory
        for (int i = 0; i < rows; i++)
        {
            delete[] pixelValues[i];
        }
        delete[] pixelValues;
    }

    // Release the video capture object
    video.release();

    return 0;
}
