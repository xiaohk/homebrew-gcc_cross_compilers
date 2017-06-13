require 'formula'

class ArmElfGdb < Formula
  homepage 'http://www.gnu.org/software/gdb/'
  url 'http://ftp.gnu.org/gnu/gdb/gdb-7.8.2.tar.xz'
  sha256 '605954d5747d5f08ea4b7f48e958d1ebbf39265e18f7f36738deeabb83744485'

  depends_on 'arm-elf-binutils'
  depends_on 'arm-elf-gcc'

  def install
    mkdir 'build' do
      system '../configure', '--target=arm-elf-eabi', "--prefix=#{prefix}" ,'--disable-werror'
      system 'make'
      system 'make install'
      FileUtils.rm_rf share/"locale"
      FileUtils.mv lib, libexec
    end
  end
end
