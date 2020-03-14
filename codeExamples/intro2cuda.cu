#include <iostream>
#include <math.h>

using namespace std;

__global__ void add(int n, float* x, float* y){ //__global__ establishes device to managed by CUDA
    for (int i = 0; i < n; i++) {
        y[i] = x[i] + y[i];
    }
}

int main()
{
    int N = 1 << 20;

    float*x, *y;
    cudaMallocManaged(&x, N * sizeof(float)); //allocate memory on GPU
    cudaMallocManaged(&y, N * sizeof(float));

    for (int i = 0; i < N; i++) {
        x[i] = 1.0f;
        y[i] = 2.0f;
    }

    add<<<1, 1>>>(N, x, y);

    cudaDeviceSynchronize();

    float maxError = 0.0f;
    for (int i = 0; i < N; i++)
        maxError = fmax(maxError, fabs(y[i] - 3.0f));
    cout << "Max error:" << maxError << endl;

    delete[] x;
    delete[] y;

    return 0;

}
