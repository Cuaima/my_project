## Week 2 project for RS: Reproducibility & Model Deployment

This week covers basic command line skills, executable files, makefile, and ruff.

In order to download this file:
- Go to the command line and navigate to the desired folder.
- Use the command `git clone` along with the address of the file provided by github

In order to execute the script:
- CD into my_project
- Make sure the bash script is executable by running `chmod +x scripts/prep_data.sh`
- execute `./scripts/prep_data.sh` OR use Makefile* to run the commands:
    - `make prep` - Run data preparation.
    - `make clean` - Remove data files.
    - `make all` - Clean and prepare data.

*You will need to have makefile build system installed in order to run the makefile commands.

