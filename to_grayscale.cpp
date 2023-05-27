#include <opencv2/opencv.hpp>
#include <vector>
#include <fstream>
using namespace std;
int main()
{
    char table[] = {'.', ':', ';', '7', '2', '5', '4', '6', '9', '0', '8'};
    // Load the image
    cv::Mat image = cv::imread("morningchina.jpg");

    if (image.empty())
    {
        std::cout << "Failed to load the image." << std::endl;
        return -1;
    }

    // Convert the image to grayscale
    cv::Mat grayImage;
    cv::cvtColor(image, grayImage, cv::COLOR_BGR2GRAY);

    // output grayscale image
    cv::imwrite("test_output.jpg", grayImage);

    // Access the pixel values
    int rows = grayImage.rows;
    int cols = grayImage.cols;

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
            pixelValues[i][j] = static_cast<int>(grayImage.at<uchar>(i, j));
        }
    }

    vector<vector<char>> result;

    for (int i = 0; i < rows - 3; i += 3)
    {
        vector<char> tmp;
        for (int j = 0; j < cols - 3; j += 3)
        {
            int avg = (pixelValues[i][j] + pixelValues[i + 1][j] + pixelValues[i + 2][j] + pixelValues[i][j + 1] + pixelValues[i + 1][j + 1] + pixelValues[i + 2][j + 1] + pixelValues[i][j + 2] + pixelValues[i + 1][j + 2] + pixelValues[i + 2][j + 2]) / 9;
            tmp.push_back(table[avg / 24]);
        }
        result.push_back(tmp);
    }

    // Save the pixel values to a file
    std::ofstream outputFile("pixel_values.txt");
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
        std::cout << "Pixel values saved to pixel_values.txt" << std::endl;
    }
    else
    {
        std::cout << "Failed to open the output file." << std::endl;
    }
    return 0;
}
