## Docker-KECC

Docker-KECC is a Docker environment created to help CS420 course students who use macOS deal with an [issue](https://github.com/kaist-cp/cs420/issues/165) where they cannot use fuzzer in their environment. It is a simple Ubuntu 20.04 image with some setup. **Please note that this repository is not affiliated with KAIST or the CS420 course.**

## Setup

1. Install [docker](https://docs.docker.com/engine/install/)
2. In the `run.sh` file, replace `${ABSOLUTE_PATH_OF_YOUR_KECC}` with the absolute path of your kecc repository.
3. Build the Docker image by running the following command:
    ```sh
    ./build.sh
    ```

## Usage

To execute the bash of your kecc environment, run the following command in your terminal:

```sh
./run.sh
```

This will start a Docker container with your kecc environment and drop you into a bash shell. From here, you can run the necessary commands for your CS420 course assignments.
