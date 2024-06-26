WITH account_434519024304 AS (
   SELECT 
       '434519024304' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_shared"."reserved_instance_ec2"
),
account_014229765626 AS (
   SELECT 
       '014229765626' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_014229765626"."reserved_instance_ec2"
),
account_014730125768 AS (
   SELECT 
       '014730125768' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_014730125768"."reserved_instance_ec2"
),
account_015166320012 AS (
   SELECT 
       '015166320012' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_015166320012"."reserved_instance_ec2"
),
account_023280770555 AS (
   SELECT 
       '023280770555' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_023280770555"."reserved_instance_ec2"
),
account_034783791145 AS (
   SELECT 
       '034783791145' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_034783791145"."reserved_instance_ec2"
),
account_073858585757 AS (
   SELECT 
       '073858585757' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_073858585757"."reserved_instance_ec2"
),
account_127466939911 AS (
   SELECT 
       '127466939911' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_127466939911"."reserved_instance_ec2"
),
account_189585356497 AS (
   SELECT 
       '189585356497' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_189585356497"."reserved_instance_ec2"
),
account_226060598830 AS (
   SELECT 
       '226060598830' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_226060598830"."reserved_instance_ec2"
),
account_247364657386 AS (
   SELECT 
       '247364657386' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_247364657386"."reserved_instance_ec2"
),
account_291957535319 AS (
   SELECT 
       '291957535319' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_291957535319"."reserved_instance_ec2"
),
account_338834536339 AS (
   SELECT 
       '338834536339' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_338834536339"."reserved_instance_ec2"
),
account_341267347886 AS (
   SELECT 
       '341267347886' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_341267347886"."reserved_instance_ec2"
),
account_346402807177 AS (
   SELECT 
       '346402807177' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_346402807177"."reserved_instance_ec2"
),
account_366519242445 AS (
   SELECT 
       '366519242445' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_366519242445"."reserved_instance_ec2"
),
account_394759194433 AS (
   SELECT 
       '394759194433' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_394759194433"."reserved_instance_ec2"
),
account_430092958156 AS (
   SELECT 
       '430092958156' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_430092958156"."reserved_instance_ec2"
),
account_460564462217 AS (
   SELECT 
       '460564462217' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_460564462217"."reserved_instance_ec2"
),
account_507776553901 AS (
   SELECT 
       '507776553901' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_507776553901"."reserved_instance_ec2"
),
account_514831055183 AS (
   SELECT 
       '514831055183' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_514831055183"."reserved_instance_ec2"
),
account_552721663264 AS (
   SELECT 
       '552721663264' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_552721663264"."reserved_instance_ec2"
),
account_582087840222 AS (
   SELECT 
       '582087840222' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_582087840222"."reserved_instance_ec2"
),
account_634487139226 AS (
   SELECT 
       '634487139226' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_634487139226"."reserved_instance_ec2"
),
account_638346777360 AS (
   SELECT 
       '638346777360' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_638346777360"."reserved_instance_ec2"
),
account_672604971719 AS (
   SELECT 
       '672604971719' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_672604971719"."reserved_instance_ec2"
),
account_727023716560 AS (
   SELECT 
       '727023716560' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_727023716560"."reserved_instance_ec2"
),
account_856753954371 AS (
   SELECT 
       '856753954371' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_856753954371"."reserved_instance_ec2"
),
account_862340440120 AS (
   SELECT 
       '862340440120' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_862340440120"."reserved_instance_ec2"
),
account_863071450033 AS (
   SELECT 
       '863071450033' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_863071450033"."reserved_instance_ec2"
),
account_875144205584 AS (
   SELECT 
       '875144205584' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_875144205584"."reserved_instance_ec2"
),
account_884103735193 AS (
   SELECT 
       '884103735193' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_884103735193"."reserved_instance_ec2"
),
account_897706971707 AS (
   SELECT 
       '897706971707' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_897706971707"."reserved_instance_ec2"
),
account_918821427740 AS (
   SELECT 
       '918821427740' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_918821427740"."reserved_instance_ec2"
),
account_955737177772 AS (
   SELECT 
       '955737177772' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_955737177772"."reserved_instance_ec2"
),
account_963065819957 AS (
   SELECT 
       '963065819957' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_963065819957"."reserved_instance_ec2"
),
account_969325077577 AS (
   SELECT 
       '969325077577' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_969325077577"."reserved_instance_ec2"
),
account_999564223101 AS (
   SELECT 
       '999564223101' AS title, 
       count(*) AS reserved_instance_ec2 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_999564223101"."reserved_instance_ec2"
)
SELECT title, reserved_instance_ec2 FROM account_434519024304
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_014229765626
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_014730125768
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_015166320012
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_023280770555
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_034783791145
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_073858585757
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_127466939911
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_189585356497
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_226060598830
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_247364657386
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_291957535319
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_338834536339
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_341267347886
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_346402807177
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_366519242445
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_394759194433
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_430092958156
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_460564462217
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_507776553901
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_514831055183
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_552721663264
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_582087840222
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_634487139226
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_638346777360
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_672604971719
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_727023716560
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_856753954371
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_862340440120
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_863071450033
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_875144205584
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_884103735193
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_897706971707
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_918821427740
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_955737177772
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_963065819957
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_969325077577
UNION ALL
SELECT title, reserved_instance_ec2 FROM account_999564223101
;