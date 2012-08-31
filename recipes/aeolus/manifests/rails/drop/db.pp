define aeolus::rails::drop::db($cwd="", $rails_env=""){
  exec{"drop_rails_database":
         cwd         => $cwd,
         onlyif      => "test -f ${cwd}/Rakefile",
         environment => "RAILS_ENV=${rails_env}",
         logoutput   => true,
         command     => "rake db:drop"}
}
