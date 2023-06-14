
local S = {
    mem = {
        x                 = 1020,
        y                 = 200,
        radius            = 160,
        text = {
            indicators    = { x = 950, y = 40 },
            process_title = { x = 930, y = 150 },
            processes     = { x = 945, y = 170 },
            ring_title    = { x = 990, y = 320 },
        }
    },


    battery = {
        x              = 610,
        y              = -900,
        radius         = 1600,
        width          = 3,
        begin          = -160,
        end_           = -200,
        text = {
            perc  = { x = 1160, y = 608 }, 
            title = { x = 570, y = 720 }, 
        },
    },


    clock = {
        x              = 600,
        y              = 300,
        width          = 10,
        radius         = 140,
        font_height    = 110,
        font_m         = 84,
        hr             = { x = 510, y = 290 },
        mn             = { x = 590, y = 380 },
        dt             = { x = 550, y = 310 },
        ut             = { x = 550, y = 410 },
    },


    disk = {
        x              = 840,
        y              = 500,
        radius         = 120,
        thickness      = 18,
        begin_angle    = 20,
        end_angle      = -260,
        text = {

        }
    },

    net = {
        x              = 360,
        y              = 500,
        width          = 10,
        radius         = 120,
        begin_angle    = 0,
        end_angle      = 320,
        indicators = {
            down       = {x = 295, y = 385},
            up         = {x = 295, y = 405},
        },
        total = {
            down       = {x = 360, y = 510},
            up         = {x = 360, y = 490},
        },
        list = {x = 10, y = 440},
    },


    cpu = {
        x = 200,
        y = 200,
        begin_angle = 0,
        end_angle = -260,

        cores = {
            _0cores = {     -- display only total cpu usage
                total = {
                    number = 0,
                    radius = 130,
                    thickness = 35,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 75,
                        post_particle = "%"
                    }
                },
                temperature = {
                    number = -1,
                    radius = 163,
                    thickness = 10,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 315,
                        y = 110,
                        post_particle = "°C"
                    }
                },

            },

            _2cores = {
                core1 = {
                    number = 1,
                    radius = 123,
                    thickness = 24,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 80,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 150,
                    thickness = 26,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 55,
                        post_particle = "%"
                    }
                },
                total = {
                    number = 0,
                    radius = 171,
                    thickness = 10,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                temperature = {
                    number = -1,
                    radius = 183,
                    thickness = 3,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 330,
                        y = 90,
                        post_particle = "°C"
                    }
                },

            },

            _4cores = {
                core1 = {
                    number = 1,
                    radius = 103,
                    thickness = 15,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 100,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 120,
                    thickness = 16,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 85,
                        post_particle = "%"
                    }
                },
                core3 = {
                    number = 3,
                    radius = 139,
                    thickness = 18,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 68,
                        post_particle = "%"
                    }
                },
                core4 = {
                    number = 4,
                    radius = 160,
                    thickness = 20,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 45,
                        post_particle = "%"
                    }
                },
                total = {
                    number = 0,
                    radius = 175,
                    thickness = 5,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                temperature = {
                    number = -1,
                    radius = 183,
                    thickness = 3,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 330,
                        y = 90,
                        post_particle = "°C"
                    }
                },
            },

            _6cores = {
                core1 = {
                    number = 1,
                    radius = 94,
                    thickness = 12,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 110,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 107,
                    thickness = 12,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 95,
                        post_particle = "%"
                    }
                },
                core3 = {
                    number = 3,
                    radius = 121,
                    thickness = 14,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 80,
                        post_particle = "%"
                    }
                },
                core4 = {
                    number = 4,
                    radius = 137,
                    thickness = 15,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 63,
                        post_particle = "%"
                    }
                },
                core5 = {
                    number = 5,
                    radius = 154,
                    thickness = 16,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 45,
                        post_particle = "%"
                    }
                },
                core6 = {
                    number = 6,
                    radius = 172,
                    thickness = 17,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 27,
                        post_particle = "%"
                    }
                },
                total = {
                    number = 0,
                    radius = 184,
                    thickness = 4,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                temperature = {
                    number = -1,
                    radius = 190,
                    thickness = 3,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 337,
                        y = 89,
                        post_particle = "°C"
                    }
                },
            },

            _8cores = {
                core1 = {
                    number = 1,
                    radius = 88,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 119,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 99,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 106,
                        post_particle = "%"
                    }
                },
                core3 = {
                    number = 3,
                    radius = 109,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 94,
                        post_particle = "%"
                    }
                },
                core4 = {
                    number = 4,
                    radius = 120,
                    thickness = 10,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 82,
                        post_particle = "%"
                    }
                },
                core5 = {
                    number = 5,
                    radius = 132,
                    thickness = 11,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 70,
                        post_particle = "%"
                    }
                },
                core6 = {
                    number = 6,
                    radius = 145,
                    thickness = 12,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 56,
                        post_particle = "%"
                    }
                },
                core7 = {
                    number = 7,
                    radius = 159,
                    thickness = 13,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 40,
                        post_particle = "%"
                    }
                },
                core8 = {
                    number = 8,
                    radius = 174,
                    thickness = 14,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 27,
                        post_particle = "%"
                    }
                },
                total = {
                    number = 0,
                    radius = 184,
                    thickness = 4,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                temperature = {
                    number = -1,
                    radius = 190,
                    thickness = 3,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 337,
                        y = 89,
                        post_particle = "°C"
                    }
                },
            },

            _10cores = {
                core1 = {
                    number = 1,
                    radius = 81,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 125,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 88,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core3 = {
                    number = 3,
                    radius = 96,
                    thickness = 7,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 110,
                        post_particle = "%"
                    }
                },
                core4 = {
                    number = 4,
                    radius = 105,
                    thickness = 8,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 95,
                        post_particle = "%"
                    }
                },
                core5 = {
                    number = 5,
                    radius = 115,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core6 = {
                    number = 6,
                    radius = 126,
                    thickness = 10,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 80,
                        post_particle = "%"
                    }
                },
                core7 = {
                    number = 7,
                    radius = 138,
                    thickness = 11,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 66,
                        post_particle = "%"
                    }
                },
                core8 = {
                    number = 8,
                    radius = 151,
                    thickness = 12,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 52,
                        post_particle = "%"
                    }
                },
                core9 = {
                    number = 9,
                    radius = 165,
                    thickness = 13,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 39,
                        post_particle = "%"
                    }
                },
                core10 = {
                    number = 10,
                    radius = 180,
                    thickness = 14,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 23,
                        post_particle = "%"
                    }
                },
                total = {
                    number = 0,
                    radius = 192,
                    thickness = 5,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                temperature = {
                    number = -1,
                    radius = 199,
                    thickness = 3,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 345,
                        y = 85,
                        post_particle = "°C"
                    }
                },
            },

            _12cores = {
                core1 = {
                    number = 1,
                    radius = 82,
                    thickness = 5,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 125,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 88,
                    thickness = 5,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core3 = {
                    number = 3,
                    radius = 94,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 110,
                        post_particle = "%"
                    }
                },
                core4 = {
                    number = 4,
                    radius = 102,
                    thickness = 8,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core5 = {
                    number = 5,
                    radius = 111,
                    thickness = 8,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 95,
                        post_particle = "%"
                    }
                },
                core6 = {
                    number = 6,
                    radius = 120,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core7 = {
                    number = 7,
                    radius = 130,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 80,
                        post_particle = "%"
                    }
                },
                core8 = {
                    number = 8,
                    radius = 141,
                    thickness = 10,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 65,
                        post_particle = "%"
                    }
                },
                core9 = {
                    number = 9,
                    radius = 152,
                    thickness = 10,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 52,
                        post_particle = "%"
                    }
                },
                core10 = {
                    number = 10,
                    radius = 163,
                    thickness = 10,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 40,
                        post_particle = "%"
                    }
                },
                core11 = {
                    number = 11,
                    radius = 174,
                    thickness = 10,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 28,
                        post_particle = "%"
                    }
                },
                core12 = {
                    number = 12,
                    radius = 186,
                    thickness = 11,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 17,
                        post_particle = "%"
                    }
                },
                total = {
                    number = 0,
                    radius = 195,
                    thickness = 2,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                temperature = {
                    number = -1,
                    radius = 199,
                    thickness = 2,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 345,
                        y = 85,
                        post_particle = "°C"
                    }
                },
            },
        }
    }
}

return S
