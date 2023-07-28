#!/usr/bin/perl
use 5.30.0;
use strict;
use warnings;
# Определим класс под именем Юзер
package Usera;
# Конструктор с двумя полями
sub new {
        my $class = shift;
        my $self = {
                _userName => shift, # нельзя менять методом
                _userPassword => shift, # можно менять методом
        };
        # Благославим ссылку как объект класса Юзер
        bless $self, $class;
        return $self;
}
# Получить имя
sub getUserName {
        my ($self) = @_;
        return $self->{_userName};
}
# Получить пароль
sub getUserPassword {
        my ($self) = @_;
        return $self->{_userPassword};
}
# Установить новый пароль и получить его
sub setUserPassword {
        my ($self, $userPassword) = @_;
        $self->{_userPassword} = $userPassword if defined($userPassword);
        return $self->{_userPassword};
}
1; # возвращаем тру, иначе ошибка
# Конец объявления пакета Usera.pm
