require 'formula'

class I386JosElfGdb < Formula
  homepage 'http://www.gnu.org/software/gdb/'
  url 'http://ftp.gnu.org/gnu/gdb/gdb-7.8.2.tar.xz'
  sha1 '85a9cc2a4dfb748bc8eb74113af278524126a9bd'

  depends_on 'i386-jos-elf-binutils'
  depends_on 'i386-jos-elf-gcc'

  def install
    mkdir 'build' do
      system '../configure', '--target=i386-jos-elf', "--prefix=#{prefix}", '--disable-werror'
      system 'make'
      system 'make install'
    end
  end
end
