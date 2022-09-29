# Install puppet-lint package with provider gem:
    package {'flask':
      ensure   =>  '2.1.0',
      name     =>  'flask',
      provider =>  'pip3'
    }
