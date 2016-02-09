name "development"
description "The development branch"
cookbook_versions({
    "nginx" => "= 0.1.3",
})
override_attributes ({
    "nginx" => {
        "listen" => [ "80", "443" ]
    },
    'ntp' => {
        'servers' => ['2.uk.pool.ntp.org', '3.uk.pool.ntp.org']
    }

})
