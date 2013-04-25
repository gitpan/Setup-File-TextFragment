
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Slurp" => 0,
    "File::chdir" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => "0.98",
    "Test::Perinci::Tx::Manager" => "0.42"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Insert/delete text fragment in a file, with undo support",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Setup-File-TextFragment",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "Setup::File::TextFragment",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "File::Trash::Undoable" => "0.09",
    "Log::Any" => 0,
    "Rinci" => "v1.1.29",
    "Setup" => "v1.0.4",
    "Text::Fragment" => 0,
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
