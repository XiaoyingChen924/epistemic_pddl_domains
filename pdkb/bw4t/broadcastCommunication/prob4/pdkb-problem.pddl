(define (problem bw4t2-prob)

    (:domain bw4t2)

    (:init
        (Pa_not_block_blue_1_dropzone)
        (Pa_not_block_blue_1_roomb1)
        (Pa_not_block_blue_1_roomb2)
        (Pa_not_block_blue_1_roomb3)
        (Pa_not_block_blue_1_roomc1)
        (Pa_not_block_blue_1_roomc2)
        (Pa_not_block_blue_1_roomc3)
        (Pa_not_block_blue_2_dropzone)
        (Pa_not_block_blue_2_roomb1)
        (Pa_not_block_blue_2_roomb2)
        (Pa_not_block_blue_2_roomb3)
        (Pa_not_block_blue_2_roomc1)
        (Pa_not_block_blue_2_roomc2)
        (Pa_not_block_blue_2_roomc3)
        (Pa_not_block_red_1_dropzone)
        (Pa_not_block_red_1_roomb1)
        (Pa_not_block_red_1_roomb2)
        (Pa_not_block_red_1_roomb3)
        (Pa_not_block_red_1_roomc1)
        (Pa_not_block_red_1_roomc2)
        (Pa_not_block_red_1_roomc3)
        (Pa_not_block_red_2_dropzone)
        (Pa_not_block_red_2_roomb1)
        (Pa_not_block_red_2_roomb2)
        (Pa_not_block_red_2_roomb3)
        (Pa_not_block_red_2_roomc1)
        (Pa_not_block_red_2_roomc2)
        (Pa_not_block_red_2_roomc3)
        (Pa_not_hiddenblock_blue_1_dropzone)
        (Pa_not_hiddenblock_blue_1_roomb1)
        (Pa_not_hiddenblock_blue_1_roomb2)
        (Pa_not_hiddenblock_blue_1_roomb3)
        (Pa_not_hiddenblock_blue_1_roomc1)
        (Pa_not_hiddenblock_blue_1_roomc2)
        (Pa_not_hiddenblock_blue_1_roomc3)
        (Pa_not_hiddenblock_blue_2_dropzone)
        (Pa_not_hiddenblock_blue_2_roomb1)
        (Pa_not_hiddenblock_blue_2_roomb2)
        (Pa_not_hiddenblock_blue_2_roomb3)
        (Pa_not_hiddenblock_blue_2_roomc1)
        (Pa_not_hiddenblock_blue_2_roomc2)
        (Pa_not_hiddenblock_blue_2_roomc3)
        (Pa_not_hiddenblock_red_1_dropzone)
        (Pa_not_hiddenblock_red_1_roomb1)
        (Pa_not_hiddenblock_red_1_roomb2)
        (Pa_not_hiddenblock_red_1_roomb3)
        (Pa_not_hiddenblock_red_1_roomc1)
        (Pa_not_hiddenblock_red_1_roomc2)
        (Pa_not_hiddenblock_red_1_roomc3)
        (Pa_not_hiddenblock_red_2_dropzone)
        (Pa_not_hiddenblock_red_2_roomb1)
        (Pa_not_hiddenblock_red_2_roomb2)
        (Pa_not_hiddenblock_red_2_roomb3)
        (Pa_not_hiddenblock_red_2_roomc1)
        (Pa_not_hiddenblock_red_2_roomc2)
        (Pa_not_hiddenblock_red_2_roomc3)
        (Pa_not_obs_blue_1_dropzone)
        (Pa_not_obs_blue_1_roomb1)
        (Pa_not_obs_blue_1_roomb2)
        (Pa_not_obs_blue_1_roomb3)
        (Pa_not_obs_blue_1_roomc1)
        (Pa_not_obs_blue_1_roomc2)
        (Pa_not_obs_blue_1_roomc3)
        (Pa_not_obs_blue_2_dropzone)
        (Pa_not_obs_blue_2_roomb1)
        (Pa_not_obs_blue_2_roomb2)
        (Pa_not_obs_blue_2_roomb3)
        (Pa_not_obs_blue_2_roomc1)
        (Pa_not_obs_blue_2_roomc2)
        (Pa_not_obs_blue_2_roomc3)
        (Pa_not_obs_red_1_dropzone)
        (Pa_not_obs_red_1_roomb1)
        (Pa_not_obs_red_1_roomb2)
        (Pa_not_obs_red_1_roomb3)
        (Pa_not_obs_red_1_roomc1)
        (Pa_not_obs_red_1_roomc2)
        (Pa_not_obs_red_1_roomc3)
        (Pa_not_obs_red_2_dropzone)
        (Pa_not_obs_red_2_roomb1)
        (Pa_not_obs_red_2_roomb2)
        (Pa_not_obs_red_2_roomb3)
        (Pa_not_obs_red_2_roomc1)
        (Pa_not_obs_red_2_roomc2)
        (Pa_not_obs_red_2_roomc3)
        (Pa_block_blue_1_dropzone)
        (Pa_block_blue_1_roomb1)
        (Pa_block_blue_1_roomb2)
        (Pa_block_blue_1_roomb3)
        (Pa_block_blue_1_roomc1)
        (Pa_block_blue_1_roomc2)
        (Pa_block_blue_1_roomc3)
        (Pa_block_blue_2_dropzone)
        (Pa_block_blue_2_roomb1)
        (Pa_block_blue_2_roomb2)
        (Pa_block_blue_2_roomb3)
        (Pa_block_blue_2_roomc1)
        (Pa_block_blue_2_roomc2)
        (Pa_block_blue_2_roomc3)
        (Pa_block_red_1_dropzone)
        (Pa_block_red_1_roomb1)
        (Pa_block_red_1_roomb2)
        (Pa_block_red_1_roomb3)
        (Pa_block_red_1_roomc1)
        (Pa_block_red_1_roomc2)
        (Pa_block_red_1_roomc3)
        (Pa_block_red_2_dropzone)
        (Pa_block_red_2_roomb1)
        (Pa_block_red_2_roomb2)
        (Pa_block_red_2_roomb3)
        (Pa_block_red_2_roomc1)
        (Pa_block_red_2_roomc2)
        (Pa_block_red_2_roomc3)
        (Pa_hiddenblock_blue_1_dropzone)
        (Pa_hiddenblock_blue_1_roomb1)
        (Pa_hiddenblock_blue_1_roomb2)
        (Pa_hiddenblock_blue_1_roomb3)
        (Pa_hiddenblock_blue_1_roomc1)
        (Pa_hiddenblock_blue_1_roomc2)
        (Pa_hiddenblock_blue_1_roomc3)
        (Pa_hiddenblock_blue_2_dropzone)
        (Pa_hiddenblock_blue_2_roomb1)
        (Pa_hiddenblock_blue_2_roomb2)
        (Pa_hiddenblock_blue_2_roomb3)
        (Pa_hiddenblock_blue_2_roomc1)
        (Pa_hiddenblock_blue_2_roomc2)
        (Pa_hiddenblock_blue_2_roomc3)
        (Pa_hiddenblock_red_1_dropzone)
        (Pa_hiddenblock_red_1_roomb1)
        (Pa_hiddenblock_red_1_roomb2)
        (Pa_hiddenblock_red_1_roomb3)
        (Pa_hiddenblock_red_1_roomc1)
        (Pa_hiddenblock_red_1_roomc2)
        (Pa_hiddenblock_red_1_roomc3)
        (Pa_hiddenblock_red_2_dropzone)
        (Pa_hiddenblock_red_2_roomb1)
        (Pa_hiddenblock_red_2_roomb2)
        (Pa_hiddenblock_red_2_roomb3)
        (Pa_hiddenblock_red_2_roomc1)
        (Pa_hiddenblock_red_2_roomc2)
        (Pa_hiddenblock_red_2_roomc3)
        (Pa_obs_blue_1_dropzone)
        (Pa_obs_blue_1_roomb1)
        (Pa_obs_blue_1_roomb2)
        (Pa_obs_blue_1_roomb3)
        (Pa_obs_blue_1_roomc1)
        (Pa_obs_blue_1_roomc2)
        (Pa_obs_blue_1_roomc3)
        (Pa_obs_blue_2_dropzone)
        (Pa_obs_blue_2_roomb1)
        (Pa_obs_blue_2_roomb2)
        (Pa_obs_blue_2_roomb3)
        (Pa_obs_blue_2_roomc1)
        (Pa_obs_blue_2_roomc2)
        (Pa_obs_blue_2_roomc3)
        (Pa_obs_red_1_dropzone)
        (Pa_obs_red_1_roomb1)
        (Pa_obs_red_1_roomb2)
        (Pa_obs_red_1_roomb3)
        (Pa_obs_red_1_roomc1)
        (Pa_obs_red_1_roomc2)
        (Pa_obs_red_1_roomc3)
        (Pa_obs_red_2_dropzone)
        (Pa_obs_red_2_roomb1)
        (Pa_obs_red_2_roomb2)
        (Pa_obs_red_2_roomb3)
        (Pa_obs_red_2_roomc1)
        (Pa_obs_red_2_roomc2)
        (Pa_obs_red_2_roomc3)
        (Pb_not_block_blue_1_dropzone)
        (Pb_not_block_blue_1_roomb1)
        (Pb_not_block_blue_1_roomb2)
        (Pb_not_block_blue_1_roomb3)
        (Pb_not_block_blue_1_roomc1)
        (Pb_not_block_blue_1_roomc2)
        (Pb_not_block_blue_1_roomc3)
        (Pb_not_block_blue_2_dropzone)
        (Pb_not_block_blue_2_roomb1)
        (Pb_not_block_blue_2_roomb2)
        (Pb_not_block_blue_2_roomb3)
        (Pb_not_block_blue_2_roomc1)
        (Pb_not_block_blue_2_roomc2)
        (Pb_not_block_blue_2_roomc3)
        (Pb_not_block_red_1_dropzone)
        (Pb_not_block_red_1_roomb1)
        (Pb_not_block_red_1_roomb2)
        (Pb_not_block_red_1_roomb3)
        (Pb_not_block_red_1_roomc1)
        (Pb_not_block_red_1_roomc2)
        (Pb_not_block_red_1_roomc3)
        (Pb_not_block_red_2_dropzone)
        (Pb_not_block_red_2_roomb1)
        (Pb_not_block_red_2_roomb2)
        (Pb_not_block_red_2_roomb3)
        (Pb_not_block_red_2_roomc1)
        (Pb_not_block_red_2_roomc2)
        (Pb_not_block_red_2_roomc3)
        (Pb_not_hiddenblock_blue_1_dropzone)
        (Pb_not_hiddenblock_blue_1_roomb1)
        (Pb_not_hiddenblock_blue_1_roomb2)
        (Pb_not_hiddenblock_blue_1_roomb3)
        (Pb_not_hiddenblock_blue_1_roomc1)
        (Pb_not_hiddenblock_blue_1_roomc2)
        (Pb_not_hiddenblock_blue_1_roomc3)
        (Pb_not_hiddenblock_blue_2_dropzone)
        (Pb_not_hiddenblock_blue_2_roomb1)
        (Pb_not_hiddenblock_blue_2_roomb2)
        (Pb_not_hiddenblock_blue_2_roomb3)
        (Pb_not_hiddenblock_blue_2_roomc1)
        (Pb_not_hiddenblock_blue_2_roomc2)
        (Pb_not_hiddenblock_blue_2_roomc3)
        (Pb_not_hiddenblock_red_1_dropzone)
        (Pb_not_hiddenblock_red_1_roomb1)
        (Pb_not_hiddenblock_red_1_roomb2)
        (Pb_not_hiddenblock_red_1_roomb3)
        (Pb_not_hiddenblock_red_1_roomc1)
        (Pb_not_hiddenblock_red_1_roomc2)
        (Pb_not_hiddenblock_red_1_roomc3)
        (Pb_not_hiddenblock_red_2_dropzone)
        (Pb_not_hiddenblock_red_2_roomb1)
        (Pb_not_hiddenblock_red_2_roomb2)
        (Pb_not_hiddenblock_red_2_roomb3)
        (Pb_not_hiddenblock_red_2_roomc1)
        (Pb_not_hiddenblock_red_2_roomc2)
        (Pb_not_hiddenblock_red_2_roomc3)
        (Pb_not_obs_blue_1_dropzone)
        (Pb_not_obs_blue_1_roomb1)
        (Pb_not_obs_blue_1_roomb2)
        (Pb_not_obs_blue_1_roomb3)
        (Pb_not_obs_blue_1_roomc1)
        (Pb_not_obs_blue_1_roomc2)
        (Pb_not_obs_blue_1_roomc3)
        (Pb_not_obs_blue_2_dropzone)
        (Pb_not_obs_blue_2_roomb1)
        (Pb_not_obs_blue_2_roomb2)
        (Pb_not_obs_blue_2_roomb3)
        (Pb_not_obs_blue_2_roomc1)
        (Pb_not_obs_blue_2_roomc2)
        (Pb_not_obs_blue_2_roomc3)
        (Pb_not_obs_red_1_dropzone)
        (Pb_not_obs_red_1_roomb1)
        (Pb_not_obs_red_1_roomb2)
        (Pb_not_obs_red_1_roomb3)
        (Pb_not_obs_red_1_roomc1)
        (Pb_not_obs_red_1_roomc2)
        (Pb_not_obs_red_1_roomc3)
        (Pb_not_obs_red_2_dropzone)
        (Pb_not_obs_red_2_roomb1)
        (Pb_not_obs_red_2_roomb2)
        (Pb_not_obs_red_2_roomb3)
        (Pb_not_obs_red_2_roomc1)
        (Pb_not_obs_red_2_roomc2)
        (Pb_not_obs_red_2_roomc3)
        (Pb_block_blue_1_dropzone)
        (Pb_block_blue_1_roomb1)
        (Pb_block_blue_1_roomb2)
        (Pb_block_blue_1_roomb3)
        (Pb_block_blue_1_roomc1)
        (Pb_block_blue_1_roomc2)
        (Pb_block_blue_1_roomc3)
        (Pb_block_blue_2_dropzone)
        (Pb_block_blue_2_roomb1)
        (Pb_block_blue_2_roomb2)
        (Pb_block_blue_2_roomb3)
        (Pb_block_blue_2_roomc1)
        (Pb_block_blue_2_roomc2)
        (Pb_block_blue_2_roomc3)
        (Pb_block_red_1_dropzone)
        (Pb_block_red_1_roomb1)
        (Pb_block_red_1_roomb2)
        (Pb_block_red_1_roomb3)
        (Pb_block_red_1_roomc1)
        (Pb_block_red_1_roomc2)
        (Pb_block_red_1_roomc3)
        (Pb_block_red_2_dropzone)
        (Pb_block_red_2_roomb1)
        (Pb_block_red_2_roomb2)
        (Pb_block_red_2_roomb3)
        (Pb_block_red_2_roomc1)
        (Pb_block_red_2_roomc2)
        (Pb_block_red_2_roomc3)
        (Pb_hiddenblock_blue_1_dropzone)
        (Pb_hiddenblock_blue_1_roomb1)
        (Pb_hiddenblock_blue_1_roomb2)
        (Pb_hiddenblock_blue_1_roomb3)
        (Pb_hiddenblock_blue_1_roomc1)
        (Pb_hiddenblock_blue_1_roomc2)
        (Pb_hiddenblock_blue_1_roomc3)
        (Pb_hiddenblock_blue_2_dropzone)
        (Pb_hiddenblock_blue_2_roomb1)
        (Pb_hiddenblock_blue_2_roomb2)
        (Pb_hiddenblock_blue_2_roomb3)
        (Pb_hiddenblock_blue_2_roomc1)
        (Pb_hiddenblock_blue_2_roomc2)
        (Pb_hiddenblock_blue_2_roomc3)
        (Pb_hiddenblock_red_1_dropzone)
        (Pb_hiddenblock_red_1_roomb1)
        (Pb_hiddenblock_red_1_roomb2)
        (Pb_hiddenblock_red_1_roomb3)
        (Pb_hiddenblock_red_1_roomc1)
        (Pb_hiddenblock_red_1_roomc2)
        (Pb_hiddenblock_red_1_roomc3)
        (Pb_hiddenblock_red_2_dropzone)
        (Pb_hiddenblock_red_2_roomb1)
        (Pb_hiddenblock_red_2_roomb2)
        (Pb_hiddenblock_red_2_roomb3)
        (Pb_hiddenblock_red_2_roomc1)
        (Pb_hiddenblock_red_2_roomc2)
        (Pb_hiddenblock_red_2_roomc3)
        (Pb_obs_blue_1_dropzone)
        (Pb_obs_blue_1_roomb1)
        (Pb_obs_blue_1_roomb2)
        (Pb_obs_blue_1_roomb3)
        (Pb_obs_blue_1_roomc1)
        (Pb_obs_blue_1_roomc2)
        (Pb_obs_blue_1_roomc3)
        (Pb_obs_blue_2_dropzone)
        (Pb_obs_blue_2_roomb1)
        (Pb_obs_blue_2_roomb2)
        (Pb_obs_blue_2_roomb3)
        (Pb_obs_blue_2_roomc1)
        (Pb_obs_blue_2_roomc2)
        (Pb_obs_blue_2_roomc3)
        (Pb_obs_red_1_dropzone)
        (Pb_obs_red_1_roomb1)
        (Pb_obs_red_1_roomb2)
        (Pb_obs_red_1_roomb3)
        (Pb_obs_red_1_roomc1)
        (Pb_obs_red_1_roomc2)
        (Pb_obs_red_1_roomc3)
        (Pb_obs_red_2_dropzone)
        (Pb_obs_red_2_roomb1)
        (Pb_obs_red_2_roomb2)
        (Pb_obs_red_2_roomb3)
        (Pb_obs_red_2_roomc1)
        (Pb_obs_red_2_roomc2)
        (Pb_obs_red_2_roomc3)
        (Pc_not_block_blue_1_dropzone)
        (Pc_not_block_blue_1_roomb1)
        (Pc_not_block_blue_1_roomb2)
        (Pc_not_block_blue_1_roomb3)
        (Pc_not_block_blue_1_roomc1)
        (Pc_not_block_blue_1_roomc2)
        (Pc_not_block_blue_1_roomc3)
        (Pc_not_block_blue_2_dropzone)
        (Pc_not_block_blue_2_roomb1)
        (Pc_not_block_blue_2_roomb2)
        (Pc_not_block_blue_2_roomb3)
        (Pc_not_block_blue_2_roomc1)
        (Pc_not_block_blue_2_roomc2)
        (Pc_not_block_blue_2_roomc3)
        (Pc_not_block_red_1_dropzone)
        (Pc_not_block_red_1_roomb1)
        (Pc_not_block_red_1_roomb2)
        (Pc_not_block_red_1_roomb3)
        (Pc_not_block_red_1_roomc1)
        (Pc_not_block_red_1_roomc2)
        (Pc_not_block_red_1_roomc3)
        (Pc_not_block_red_2_dropzone)
        (Pc_not_block_red_2_roomb1)
        (Pc_not_block_red_2_roomb2)
        (Pc_not_block_red_2_roomb3)
        (Pc_not_block_red_2_roomc1)
        (Pc_not_block_red_2_roomc2)
        (Pc_not_block_red_2_roomc3)
        (Pc_not_hiddenblock_blue_1_dropzone)
        (Pc_not_hiddenblock_blue_1_roomb1)
        (Pc_not_hiddenblock_blue_1_roomb2)
        (Pc_not_hiddenblock_blue_1_roomb3)
        (Pc_not_hiddenblock_blue_1_roomc1)
        (Pc_not_hiddenblock_blue_1_roomc2)
        (Pc_not_hiddenblock_blue_1_roomc3)
        (Pc_not_hiddenblock_blue_2_dropzone)
        (Pc_not_hiddenblock_blue_2_roomb1)
        (Pc_not_hiddenblock_blue_2_roomb2)
        (Pc_not_hiddenblock_blue_2_roomb3)
        (Pc_not_hiddenblock_blue_2_roomc1)
        (Pc_not_hiddenblock_blue_2_roomc2)
        (Pc_not_hiddenblock_blue_2_roomc3)
        (Pc_not_hiddenblock_red_1_dropzone)
        (Pc_not_hiddenblock_red_1_roomb1)
        (Pc_not_hiddenblock_red_1_roomb2)
        (Pc_not_hiddenblock_red_1_roomb3)
        (Pc_not_hiddenblock_red_1_roomc1)
        (Pc_not_hiddenblock_red_1_roomc2)
        (Pc_not_hiddenblock_red_1_roomc3)
        (Pc_not_hiddenblock_red_2_dropzone)
        (Pc_not_hiddenblock_red_2_roomb1)
        (Pc_not_hiddenblock_red_2_roomb2)
        (Pc_not_hiddenblock_red_2_roomb3)
        (Pc_not_hiddenblock_red_2_roomc1)
        (Pc_not_hiddenblock_red_2_roomc2)
        (Pc_not_hiddenblock_red_2_roomc3)
        (Pc_not_obs_blue_1_dropzone)
        (Pc_not_obs_blue_1_roomb1)
        (Pc_not_obs_blue_1_roomb2)
        (Pc_not_obs_blue_1_roomb3)
        (Pc_not_obs_blue_1_roomc1)
        (Pc_not_obs_blue_1_roomc2)
        (Pc_not_obs_blue_1_roomc3)
        (Pc_not_obs_blue_2_dropzone)
        (Pc_not_obs_blue_2_roomb1)
        (Pc_not_obs_blue_2_roomb2)
        (Pc_not_obs_blue_2_roomb3)
        (Pc_not_obs_blue_2_roomc1)
        (Pc_not_obs_blue_2_roomc2)
        (Pc_not_obs_blue_2_roomc3)
        (Pc_not_obs_red_1_dropzone)
        (Pc_not_obs_red_1_roomb1)
        (Pc_not_obs_red_1_roomb2)
        (Pc_not_obs_red_1_roomb3)
        (Pc_not_obs_red_1_roomc1)
        (Pc_not_obs_red_1_roomc2)
        (Pc_not_obs_red_1_roomc3)
        (Pc_not_obs_red_2_dropzone)
        (Pc_not_obs_red_2_roomb1)
        (Pc_not_obs_red_2_roomb2)
        (Pc_not_obs_red_2_roomb3)
        (Pc_not_obs_red_2_roomc1)
        (Pc_not_obs_red_2_roomc2)
        (Pc_not_obs_red_2_roomc3)
        (Pc_block_blue_1_dropzone)
        (Pc_block_blue_1_roomb1)
        (Pc_block_blue_1_roomb2)
        (Pc_block_blue_1_roomb3)
        (Pc_block_blue_1_roomc1)
        (Pc_block_blue_1_roomc2)
        (Pc_block_blue_1_roomc3)
        (Pc_block_blue_2_dropzone)
        (Pc_block_blue_2_roomb1)
        (Pc_block_blue_2_roomb2)
        (Pc_block_blue_2_roomb3)
        (Pc_block_blue_2_roomc1)
        (Pc_block_blue_2_roomc2)
        (Pc_block_blue_2_roomc3)
        (Pc_block_red_1_dropzone)
        (Pc_block_red_1_roomb1)
        (Pc_block_red_1_roomb2)
        (Pc_block_red_1_roomb3)
        (Pc_block_red_1_roomc1)
        (Pc_block_red_1_roomc2)
        (Pc_block_red_1_roomc3)
        (Pc_block_red_2_dropzone)
        (Pc_block_red_2_roomb1)
        (Pc_block_red_2_roomb2)
        (Pc_block_red_2_roomb3)
        (Pc_block_red_2_roomc1)
        (Pc_block_red_2_roomc2)
        (Pc_block_red_2_roomc3)
        (Pc_hiddenblock_blue_1_dropzone)
        (Pc_hiddenblock_blue_1_roomb1)
        (Pc_hiddenblock_blue_1_roomb2)
        (Pc_hiddenblock_blue_1_roomb3)
        (Pc_hiddenblock_blue_1_roomc1)
        (Pc_hiddenblock_blue_1_roomc2)
        (Pc_hiddenblock_blue_1_roomc3)
        (Pc_hiddenblock_blue_2_dropzone)
        (Pc_hiddenblock_blue_2_roomb1)
        (Pc_hiddenblock_blue_2_roomb2)
        (Pc_hiddenblock_blue_2_roomb3)
        (Pc_hiddenblock_blue_2_roomc1)
        (Pc_hiddenblock_blue_2_roomc2)
        (Pc_hiddenblock_blue_2_roomc3)
        (Pc_hiddenblock_red_1_dropzone)
        (Pc_hiddenblock_red_1_roomb1)
        (Pc_hiddenblock_red_1_roomb2)
        (Pc_hiddenblock_red_1_roomb3)
        (Pc_hiddenblock_red_1_roomc1)
        (Pc_hiddenblock_red_1_roomc2)
        (Pc_hiddenblock_red_1_roomc3)
        (Pc_hiddenblock_red_2_dropzone)
        (Pc_hiddenblock_red_2_roomb1)
        (Pc_hiddenblock_red_2_roomb2)
        (Pc_hiddenblock_red_2_roomb3)
        (Pc_hiddenblock_red_2_roomc1)
        (Pc_hiddenblock_red_2_roomc2)
        (Pc_hiddenblock_red_2_roomc3)
        (Pc_obs_blue_1_dropzone)
        (Pc_obs_blue_1_roomb1)
        (Pc_obs_blue_1_roomb2)
        (Pc_obs_blue_1_roomb3)
        (Pc_obs_blue_1_roomc1)
        (Pc_obs_blue_1_roomc2)
        (Pc_obs_blue_1_roomc3)
        (Pc_obs_blue_2_dropzone)
        (Pc_obs_blue_2_roomb1)
        (Pc_obs_blue_2_roomb2)
        (Pc_obs_blue_2_roomb3)
        (Pc_obs_blue_2_roomc1)
        (Pc_obs_blue_2_roomc2)
        (Pc_obs_blue_2_roomc3)
        (Pc_obs_red_1_dropzone)
        (Pc_obs_red_1_roomb1)
        (Pc_obs_red_1_roomb2)
        (Pc_obs_red_1_roomb3)
        (Pc_obs_red_1_roomc1)
        (Pc_obs_red_1_roomc2)
        (Pc_obs_red_1_roomc3)
        (Pc_obs_red_2_dropzone)
        (Pc_obs_red_2_roomb1)
        (Pc_obs_red_2_roomb2)
        (Pc_obs_red_2_roomb3)
        (Pc_obs_red_2_roomc1)
        (Pc_obs_red_2_roomc2)
        (Pc_obs_red_2_roomc3)
        (at_a_lefthallc)
        (at_b_righthallc)
        (at_c_righthallc)
        (connected_dropzone_frontdropzone)
        (connected_frontdropzone_dropzone)
        (connected_frontdropzone_lefthalld)
        (connected_frontdropzone_righthalld)
        (connected_frontroomb1_frontroomb2)
        (connected_frontroomb1_lefthallb)
        (connected_frontroomb1_roomb1)
        (connected_frontroomb2_frontroomb1)
        (connected_frontroomb2_frontroomb3)
        (connected_frontroomb2_roomb2)
        (connected_frontroomb3_frontroomb2)
        (connected_frontroomb3_righthallb)
        (connected_frontroomb3_roomb3)
        (connected_frontroomc1_frontroomc2)
        (connected_frontroomc1_lefthallc)
        (connected_frontroomc1_roomc1)
        (connected_frontroomc2_frontroomc1)
        (connected_frontroomc2_frontroomc3)
        (connected_frontroomc2_roomc2)
        (connected_frontroomc3_frontroomc2)
        (connected_frontroomc3_righthallc)
        (connected_frontroomc3_roomc3)
        (connected_lefthallb_frontroomb1)
        (connected_lefthallb_lefthallc)
        (connected_lefthallc_frontroomc1)
        (connected_lefthallc_lefthallb)
        (connected_lefthallc_lefthalld)
        (connected_lefthalld_frontdropzone)
        (connected_lefthalld_lefthallc)
        (connected_righthallb_frontroomb3)
        (connected_righthallc_frontroomc3)
        (connected_righthallc_righthallb)
        (connected_righthallc_righthalld)
        (connected_righthalld_frontdropzone)
        (connected_righthalld_righthallb)
        (connected_righthalld_righthallc)
        (connected_roomb1_frontroomb1)
        (connected_roomb2_frontroomb2)
        (connected_roomb3_frontroomb3)
        (connected_roomc1_frontroomc1)
        (connected_roomc2_frontroomc2)
        (connected_roomc3_frontroomc3)
        (droplocation_dropzone)
        (handempty)
        (hiddenblock_blue_1_roomc3)
        (hiddenblock_blue_2_roomc2)
        (hiddenblock_red_1_roomc1)
        (hiddenblock_red_2_roomc2)
        (in_d_roomc3)
        (leader_a)
    )

    (:goal (and
        (Ba_block_blue_1_dropzone)
        (Ba_block_blue_2_dropzone)
        (Pa_block_blue_1_dropzone)
        (Pa_block_blue_2_dropzone)
        (checked_roomb1)
        (checked_roomb2)
        (checked_roomb3)
        (checked_roomc3)
        (obs_blue_1_roomc3)
        (obs_blue_2_roomc2)
    ))
)