WITH account_434519024304 AS (
   SELECT 
       '434519024304' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_shared"."reserved_instance_dynamodb"
),
account_014229765626 AS (
   SELECT 
       '014229765626' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_014229765626"."reserved_instance_dynamodb"
),
account_014730125768 AS (
   SELECT 
       '014730125768' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_014730125768"."reserved_instance_dynamodb"
),
account_015166320012 AS (
   SELECT 
       '015166320012' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_015166320012"."reserved_instance_dynamodb"
),
account_023280770555 AS (
   SELECT 
       '023280770555' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_023280770555"."reserved_instance_dynamodb"
),
account_034783791145 AS (
   SELECT 
       '034783791145' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_034783791145"."reserved_instance_dynamodb"
),
account_073858585757 AS (
   SELECT 
       '073858585757' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_073858585757"."reserved_instance_dynamodb"
),
account_127466939911 AS (
   SELECT 
       '127466939911' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_127466939911"."reserved_instance_dynamodb"
),
account_189585356497 AS (
   SELECT 
       '189585356497' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_189585356497"."reserved_instance_dynamodb"
),
account_226060598830 AS (
   SELECT 
       '226060598830' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_226060598830"."reserved_instance_dynamodb"
),
account_247364657386 AS (
   SELECT 
       '247364657386' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_247364657386"."reserved_instance_dynamodb"
),
account_291957535319 AS (
   SELECT 
       '291957535319' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_291957535319"."reserved_instance_dynamodb"
),
account_341267347886 AS (
   SELECT 
       '341267347886' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_341267347886"."reserved_instance_dynamodb"
),
account_346402807177 AS (
   SELECT 
       '346402807177' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_346402807177"."reserved_instance_dynamodb"
),
account_366519242445 AS (
   SELECT 
       '366519242445' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_366519242445"."reserved_instance_dynamodb"
),
account_394759194433 AS (
   SELECT 
       '394759194433' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_394759194433"."reserved_instance_dynamodb"
),
account_430092958156 AS (
   SELECT 
       '430092958156' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_430092958156"."reserved_instance_dynamodb"
),
account_460564462217 AS (
   SELECT 
       '460564462217' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_460564462217"."reserved_instance_dynamodb"
),
account_507776553901 AS (
   SELECT 
       '507776553901' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_507776553901"."reserved_instance_dynamodb"
),
account_514831055183 AS (
   SELECT 
       '514831055183' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_514831055183"."reserved_instance_dynamodb"
),
account_552721663264 AS (
   SELECT 
       '552721663264' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_552721663264"."reserved_instance_dynamodb"
),
account_582087840222 AS (
   SELECT 
       '582087840222' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_582087840222"."reserved_instance_dynamodb"
),
account_634487139226 AS (
   SELECT 
       '634487139226' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_634487139226"."reserved_instance_dynamodb"
),
account_638346777360 AS (
   SELECT 
       '638346777360' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_638346777360"."reserved_instance_dynamodb"
),
account_672604971719 AS (
   SELECT 
       '672604971719' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_672604971719"."reserved_instance_dynamodb"
),
account_727023716560 AS (
   SELECT 
       '727023716560' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_727023716560"."reserved_instance_dynamodb"
),
account_862340440120 AS (
   SELECT 
       '862340440120' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_862340440120"."reserved_instance_dynamodb"
),
account_863071450033 AS (
   SELECT 
       '863071450033' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_863071450033"."reserved_instance_dynamodb"
),
account_875144205584 AS (
   SELECT 
       '875144205584' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_875144205584"."reserved_instance_dynamodb"
),
account_884103735193 AS (
   SELECT 
       '884103735193' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_884103735193"."reserved_instance_dynamodb"
),
account_897706971707 AS (
   SELECT 
       '897706971707' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_897706971707"."reserved_instance_dynamodb"
),
account_918821427740 AS (
   SELECT 
       '918821427740' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_918821427740"."reserved_instance_dynamodb"
),
account_955737177772 AS (
   SELECT 
       '955737177772' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_955737177772"."reserved_instance_dynamodb"
),
account_963065819957 AS (
   SELECT 
       '963065819957' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_963065819957"."reserved_instance_dynamodb"
),
account_969325077577 AS (
   SELECT 
       '969325077577' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_969325077577"."reserved_instance_dynamodb"
),
account_999564223101 AS (
   SELECT 
       '999564223101' AS title, 
       count(*) AS reserved_instance_dynamodb 
   FROM 
       "production_a2b_common_aws_aggregate_dedicated_999564223101"."reserved_instance_dynamodb"
)
SELECT title, reserved_instance_dynamodb FROM account_434519024304
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_014229765626
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_014730125768
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_015166320012
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_023280770555
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_034783791145
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_073858585757
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_127466939911
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_189585356497
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_226060598830
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_247364657386
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_291957535319
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_341267347886
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_346402807177
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_366519242445
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_394759194433
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_430092958156
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_460564462217
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_507776553901
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_514831055183
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_552721663264
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_582087840222
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_634487139226
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_638346777360
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_672604971719
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_727023716560
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_862340440120
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_863071450033
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_875144205584
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_884103735193
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_897706971707
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_918821427740
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_955737177772
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_963065819957
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_969325077577
WHERE reserved_instance_dynamodb > 0
UNION ALL
SELECT title, reserved_instance_dynamodb FROM account_999564223101
WHERE reserved_instance_dynamodb > 0
;