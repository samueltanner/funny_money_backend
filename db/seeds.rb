# Position.create!([
#   {symbol: "BA"},
#   {symbol: "ROKU"},
#   {symbol: "LABU"},
#   {symbol: "TSLA"},
#   {symbol: "ARKW"},
#   {symbol: "ARKJ"},
#   {symbol: "SCHB"}
# ])
# Group.create!([
#   {name: "See My Stocks", description: "Just friends sharing stock picks", private: false},
#   {name: "Mark's big bets", description: "Mark's most successful picks", private: false},
#   {name: "Sam's group", description: "sam's group stock picks", private: false},
#   {name: "Big Risky", description: "the worst picks yet!", private: false},
#   {name: "Eugene's sane stock picks", description: "3% APR bb", private: false}
# ])
# Transaction.create!([
#   {user_id: 2, position_id: 2, purchase_price: "320.01", purchase_qty: "100.0", status_open: true, symbol: "ROKU"},
#   {user_id: 6, position_id: nil, purchase_price: "84.0", purchase_qty: "6.0", status_open: nil, symbol: "ARKK"},
#   {user_id: 6, position_id: nil, purchase_price: "650.0", purchase_qty: "3.0", status_open: nil, symbol: "TSLA"},
#   {user_id: 2, position_id: nil, purchase_price: "20.0", purchase_qty: "100.0", status_open: nil, symbol: "SPOT"},
#   {user_id: 2, position_id: nil, purchase_price: "800.0", purchase_qty: "10.0", status_open: true, symbol: "BA"},
#   {user_id: 7, position_id: nil, purchase_price: "30.0", purchase_qty: "500.0", status_open: true, symbol: "GME"},
#   {user_id: 7, position_id: nil, purchase_price: "11.0", purchase_qty: "200.0", status_open: true, symbol: "F"},
#   {user_id: 6, position_id: nil, purchase_price: "40.0", purchase_qty: "41.0", status_open: true, symbol: "BA"},
#   {user_id: 8, position_id: nil, purchase_price: "3.0", purchase_qty: "10000.0", status_open: true, symbol: "TWTR"},
#   {user_id: 8, position_id: nil, purchase_price: "1.0", purchase_qty: "69000.0", status_open: true, symbol: "AAPL"},
#   {user_id: 4, position_id: nil, purchase_price: "500.0", purchase_qty: "20.0", status_open: true, symbol: "AGPL"},
#   {user_id: 1, position_id: nil, purchase_price: "300.0", purchase_qty: "50.0", status_open: true, symbol: "COST"},
#   {user_id: 10, position_id: nil, purchase_price: "80.0", purchase_qty: "10.0", status_open: true, symbol: "AAPL"},
#   {user_id: 10, position_id: nil, purchase_price: "14.0", purchase_qty: "15.0", status_open: true, symbol: "HD"},
#   {user_id: 1, position_id: nil, purchase_price: "780.0", purchase_qty: "10.0", status_open: true, symbol: "TSLA"}
# ])
# UserGroup.create!([
#   {user_id: 2, group_id: 1},
#   {user_id: 1, group_id: 2},
#   {user_id: 8, group_id: 1},
#   {user_id: 10, group_id: 1},
#   {user_id: 10, group_id: 12},
#   {user_id: 1, group_id: 13},
#   {user_id: 2, group_id: 14},
#   {user_id: 2, group_id: 8},
#   {user_id: 1, group_id: 8},
#   {user_id: 1, group_id: 1}
# ])
# User.create!([
#   {name: "Sam", email: "sam@example.com", password_digest: "$2a$12$UEsU9cun5E5PEhVRszHZzuGJX8t/qFRU0sgbqpx1N.J7DmbbJRM4u"},
#   {name: "Eugene", email: "eugene@example.com", password_digest: "$2a$12$.t5XiqsNVKlnaKI/lHKyQeuHq80wgYQGqSEMSWsVSxxUK.Ru2HeGq"},
#   {name: "Mark", email: "mark@example.com", password_digest: "$2a$12$JqrLGhILYVamqhLuFNBVyevbChLSIiaScR.nRpArXL/VjB5gHHysu"},
#   {name: "tess", email: "tess@example.com", password_digest: "$2a$12$WHBvvZTVSmcL.T.zYvlVeeXKTskfO9v1wgh6kWvOxuyvyI4Tq5s.."},
#   {name: "tesslevin", email: "tesslevin@example.com", password_digest: "$2a$12$2DVkH6W2RAVFFcHm8G6AGuO2O2mdTCqAJD9GMnvBDzO2cenqDe98q"},
#   {name: "Timm", email: "timm@example.com", password_digest: "$2a$12$MRpyvebzCxa8JTo/QQa4T.faj1bLzmHmwSMdWHpgy53Ko1ZIeaxSy"},
#   {name: "Tyler", email: "tyler@example.com", password_digest: "$2a$12$90SU/mXaFh7.xPCKzIEBYOslB4zm.FgTB/HWTJmvV8bn0kDlo4vUy"},
#   {name: "dillon", email: "dillon@example.com", password_digest: "$2a$12$64Q0bOpGoIpws/UT0HAEQuqNxbqXS3YFR7L7.t1hxuTaJQMuXnBOy"},
#   {name: "testuser", email: "test@example.com", password_digest: "$2a$12$BiclJ.3B5RiPgEhKodTxr.ZGf36KEpRwFfUpWCkKOdZBE6JlUBB2e"},
#   {name: "Allie Neal", email: "allie@example.com", password_digest: "$2a$12$EfQtMeyLUdMkU4MDNF3f2unpWB6qmO0jviO9mfx8a5f/NjR3wKAca"}
# ])
