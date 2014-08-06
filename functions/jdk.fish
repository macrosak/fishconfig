function jdk --description 'Switch jdk' --no-scope-shadowing
  set -x JAVA_HOME (/usr/libexec/java_home -v$argv)
end

