README.txt

$ cd rubymotion-libpd/
$ mkdir vendor
$ cd vendor/

$ git clone https://github.com/libpd/pd-for-ios.git
$ cd pd-for-ios/
$ cat subl README.txt 
$ git submodule init
$ git submodule update

$ cd libpd/
$ git apply ../../libpd_patch.diff.txt
