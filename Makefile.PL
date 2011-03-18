use inc::Module::Install;

name 'HeadFirstMoose';
version '0.05';
author 'Beckheng Lam <beckheng@gmail.com>';

requires 'Moose';
requires 'MooseX::ClassAttribute';
requires 'MooseX::Singleton';
requires 'namespace::autoclean';

auto_install;

WriteAll;