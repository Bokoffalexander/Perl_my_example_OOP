#!/usr/bin/perl
use 5.30.0;
use strict;
use warnings;
use lib qw(/home/san/perl/oop);
use Usera; # Созданный нами пакет
# Создадим новый объект Юзер
my $user = Usera->new("Sasha", "Olordjesus");
# Вызываем метод получить Имя
my $userName = $user->getUserName();
print "User name: $userName\n";
# Вызываем метод получить пароль
my $userPassword = $user->getUserPassword();
print "User password: $userPassword\n";
# Вызываем метод установить новый пароль для объекта юзер
$user->setUserPassword("Triunegod");
$userPassword = $user->getUserPassword();
print "New user password: $userPassword\n";
