# Instala uma JVM
#
# @summary Instala uma JVM
#
# @example
#   include profiles::linux::jvm
class profiles::linux::jvm (
  String $java_version = '1.8.0.171-8.b10.el7_5',
) {
  if 'linux' == $facts['kernel'] {
    class  { 'java':
      distribution => 'jre',
      version      => $java_version,
    }
  }
}
