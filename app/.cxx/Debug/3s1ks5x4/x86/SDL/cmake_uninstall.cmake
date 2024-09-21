if (NOT EXISTS "/home/david_marinho/AndroidStudioProjects/android-project/app/.cxx/Debug/3s1ks5x4/x86/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: \"/home/david_marinho/AndroidStudioProjects/android-project/app/.cxx/Debug/3s1ks5x4/x86/install_manifest.txt\"")
endif(NOT EXISTS "/home/david_marinho/AndroidStudioProjects/android-project/app/.cxx/Debug/3s1ks5x4/x86/install_manifest.txt")

file(READ "/home/david_marinho/AndroidStudioProjects/android-project/app/.cxx/Debug/3s1ks5x4/x86/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach (file ${files})
    message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
    execute_process(
        COMMAND /home/david_marinho/Android/Sdk/cmake/3.22.1/bin/cmake -E remove "$ENV{DESTDIR}${file}"
        OUTPUT_VARIABLE rm_out
        RESULT_VARIABLE rm_retval
    )
    if(NOT ${rm_retval} EQUAL 0)
        message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif (NOT ${rm_retval} EQUAL 0)
endforeach(file)

