# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  #ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

a1 = Sleep.create(count: 3, input: "3", txt: "inputs")
a2 = Sleep.create(count: 1, input: "I don't sleep!", txt: "input")
a3 = Sleep.create(count: 1, input: "100", txt: "input")

g1 = Gallery.create(image: 'https://lh3.googleusercontent.com/Bcwnqj430UmGHGwsxncIbVhN5yGl_qkqqd9DUjdMQuZAEYkLlmQy1RFWLDlxLNBxP5MogkkwlnlkVrDh1IC2r1Unj1EQwl2TkRIDR3YH6yYYcOsFNqK0EfFMFST4rDEqNBwVdqtrGMxxjFSBNwU1EbRWT_wazmaV47ovyt9hT_m_vJWA5cDqQWzEgEfTEA79Lh7JFktsgjXvUQP2KrIIOFirGKZGUDQpOsxj-e0JTFx32xxjS4AvQYh6rppqpYCMQqHP1sNAV1QjvTEDWWqgNJVX5FYUz5JUfYhjbr-0dkBU-2zPF1SikNU3TZKfVUCue1yQc8koGH9mPtGWVGU8iHCdtyw9CNUn1XoXgozM0Rx6hf-vtpJumbdwfz74PIzoyaLl4hARe1KGzbnhfg92ryWH6pVcgPXk1-h0ZRvf9TSUvi6gJ63XR2HK4NEljBbHYMf_ExM4-Djl9y1OE3hfCg84PEzn_hmSlh7_JBrpKt6gc2ojUadhWbAvn2AZv7phIpqRTvsF6zbY9sGsvj0W1WKRmp1zr1fpuWKne8JhQCvmD7HLnpozI8qk7YIP8H5yKjeX7JLEBNG86oupZMuDd13yPMC67sDTlAD1F8BlX1_2IFg0c5fPKOVdS9aZSi9Z8BwfSYncM-1SNZAxInob4l9FHGd8SfpEJOtzrE8D4d6mZIkGulUnO42XvQU05oizHSm22oFbYQ6axfURn1wzOFkO=w423-h903-no?authuser=0', age: '3 months')
g2 = Gallery.create(image: 'https://lh3.googleusercontent.com/WtD2fquPWBe7xf8B_dpbrTAvXS9A3utHYmbBLXS7OUi1t6F9U94j5fuJy2EILEnF12o3E1A6rSoHQXgwkVLxDIWRu4Pn55mxqL_m8fqYMSntOZ5HITgBvfqsF2XOUShqGYyeOQRcxWcqZ-SxdcFPo7Sw1r8Tp_4luOF-BtX4RhH1Sw7gErKtkgyoEy2pkXhtmOdn2Ah7x7De1XoFcBmJGSpdld4Ggod8N6p6G5Jk22Vaz56pZtHwUlngZ7UmR1egU-lKJGOOV9WguOdF3IV6rB9pgNjfXFVRUYKQIwrtxHJ5SXBDU6fhXeAGEA__1Yy18MMBbk4P-ZJKI19SGYz6d2DjRLP4K4iXsaU3LHYYnMHRbCkHRtX5FCaTooQQ6M5AwiN09zeluQ1qPXqO9EN6ljcIco1YOP3B1B5wNFqwg37deq371sZ6y3nup9VsUvof2vaQR7w9nKHkvU_3Lz6RaMzSdx8tba0s_l2ttYjzwGV-Og9fI9b-aOloH7_Na4r3JhPeDHFFPsV9cF6RPP5uAlJvF4LgHElPC1-IVyjrKxWvAENyAwrqJ5h74upDLuS5q0ai_P_uB0AbCPE7oAQE_I78-AFkVcHr2LoM0F8XmiLht60YlUcgKz5LzyoffBXiU0pT6OzdQJJF7z5_nN2iI_sWwmsznYrbU6N0DgcXe1jRM73w-znAEZ_Bhv8cSSxPQF_YCvPiT5C6vV8McO8fYXyA=w1920-h898-no?authuser=0', age: '3 months')
g3 = Gallery.create(image: 'https://lh3.googleusercontent.com/zVzEhZfDhaQR97KRn4WeZ1HM5XUXhU8KRSZTno-SrjqOqZ5W4zqs4mdU0Ef0MXI6uJPwiJO3FE1b_wvhv9UhKJluZYUb22cPFrbCbuk8N_fynYfTQVHbWLs6A_M-2AXkBIXe2LNHcm2l9G63yd0s03DaQ7FHcXyvSNTx-fjaOXn0Imj2UC8Cr05PlRRoaRE-D-LF2-lJAeLxmBzpYYgQ2c10yGzYFXmSS6z6otA-XWvjgFIoYM037ElnoctCa77jR_-gTF9sCkRH-lQ_XyNI0jglAegOJZcCZfi64UoI5VyGQ7kBu8XkSSEgh-P9CodNq95iqaY4kQPnMAnUCRIx_YAoY0WQ_edc6CTYcmzsomsyy2umeTzvMGzzOEQPZ1ftHb5KfFIlSvFCEfHPb6dBr1JaNv6xn3-X4I6LrgVu3xOu3LD3MLZgnrMmY9ri9yuKpZeM8tLUP_4QoIhKpjTYdZndZYPsinGSic-bKThDo7fvP2BRMRGCMJ4dmyzk0fAX66jHxJDJ_-c7v5Pejz73zanNBnt8u6ifn4QB0wxDQeE0akFK9VrKWg0UFTqIVkWZogDXUPb4rIhiSacugDi8303bbJgJbTk0jkE7v2Lv6sLEPX71WZrtWtdI8KrvhNwVdtjax7EJkqCtW5wpH8EzlfTpZGrem4VSIHwR5jrWUrKpqHZi6PloBtNtV3Dewti_7C6clnMFNBo4gGGGtwh8mu_oNQ=w1470-h828-no?authuser=0', age: '3 months')
g4 = Gallery.create(image: 'https://lh3.googleusercontent.com/DVMtmgx0BTdmp3zS_FD2NUm9XFw-dYKFJT_f8Pqg8vhBo4OHMaH1xs24-tV3JyCvLUnuMpzspQ0UjokDCGpPBwGxvHUw_kQ1qqENL2b3IvI_QHlW1e52vXc8TE2LSulf5IuN0vqUVhFRxR-_n3Je1rYboo5KIpSLaN9AAY0W9ac_5SDNuU0qdNo-hjUVelKJyZoo-sEQ2oFH_RfUmunezJIJCU3Vx9Xi6Hcle5SjV9hqm0-T1zL23jcO93raLXCcpAJv8Yk1b6eyveqbYZpg9L4DbksTWZCcddbRciQWle3fNdNwUTMZXBCz_FWs_O8hRvC7e9ZyFmKv200JGn3LzFg0qnT8Edjx8GkXB6UahJSDgGDBDzbCP8bFs-Jncq41qIHBg0ePvYxl1E70b8ClihvQlNhPU6Ii8jHP3hfsw2NHFYldQUQ3ZTaQl9Cn4o1DU3g7yIOW8-x76IaiKb5ZCNw4KHZo9AaE65WT3Ynqn61IeWy7mPAmoLJGRAqOHSQ3gRnAi9Ycb9m7HpdCtFjpCnSoWDpVzKg3O7dzstAXEFeV2UN5OcEu_ezZhaB17P_03sF5g0_itXsFnBRzyOsyQtZm5r7fo4pt41nNaRCVgbu_EV8UbF5EJm6qTHOmJm0owLh97UHU-y7vGhmaiWkVlqJuiHREABBC0vFVcJA2Q5JsCNb1LL5zQ92dUX_7syskToiTU4-9I45t1HXvcDXefTgv9w=w1470-h688-no?authuser=0', age: '3 months')
g5 = Gallery.create(image: 'https://lh3.googleusercontent.com/c04eKdzToTVrRlosQ_2cT2Llot1bw5zovsdqpqzhbb6j-S5jpedf8BVt0UrHxrKOtqJayAj8qy24TLIqmRHxsugyjyeHjgfxiW1l0-twffwaC6OpbjZAoydb8_rbm2VTiL0btISLVx-rLbP-0D70iahUggJRY144MzocHcZVcbFEln845myeZNqXE-M19vAFuQGYBHJKCUayxvVW-EyxU_hNZamv58gazzA8aEvYHNJQ_USioxGjUNMhvRx7hYmFvFNF-AhM8NfuRFpaWx-1QWKEBexBRpKZDpx4qrjrN_osqurKSdd7l9ruPzLihgheUE0evIMO_D61MStaTMQliUwbDzfKsgmyEnq5dtbrWe-RwoX73SFoT99Af_kaENQ7MInUJObo1dzeZkjgtKFV4hE__FspJz7BLJPCaXDvuy2XVXsqfrYl0B95btVf_BPP7MLpsIwW-FahND6UTMt9CS5G4u9evfaFbNUUWXRDKZi7O7pJPhc0OFbv_GR9jWtXr7XH-BeBWssdcNyqMfkdvRwsVVQJAMLOFcu7UCqzgEWeDm13hQvczGbHgZlAY6Hab5lq_7zR041b9mCFgrCVTq5IMV4iNruVbkcrL35SCK2VlGLHPNDKLNNMJeEFszx1zDlpQ0p3yo8vOlkSm5Yaz44EBB6sV8CofaFb9e7Tp98kj5k5-bUE0FqyI0pISBVkubqYWO7kEAAQJgk1ci-5kJ3b_g=w1470-h688-no?authuser=0', age: '3 months')
g6 = Gallery.create(image: 'https://lh3.googleusercontent.com/kUVHkrlxk7NPVfV1UBMPAV-SjdaO2ZkzeF3LulNEA7qicIUCV1OHuBaQp3HncgKm2gp3AxvdTQwT5RBepZ-FgEnf5RJrqw2KZQXHnQtLgvpsEWprNM9TZ-kgjE775rMF3xXWJ04aEaUWEPPPydeieFlLIcSe_Vkp-7183To6ryVoN5sPFr7HT2vq4MMUIopjvWcdhdA5QWPAtVIzvCzaIIN8B9higdqgWmsmU3uxv2Kuv0ZfiKzyTLPaOQ4TQ3FbEocwmS5maVN8N0dvl26GimqqR1IrSy3rLUROQdZtLxI2B3-LPxE3w2qG6eSpieP6Wm7bvTNsQZRJW4kEblLJHCpjR9vatLYhiL_nNXep8fHQCcOUSMhULuAAMVg9VW6IPmQBrhXUXaVPW-JcKAfNipaK1p-cgZPgOVFajrbFMZusTVk2mNxT7sIbFbPdK3KHsNIe27MHIuqgmoQsQAxE9SsL0lX-4xoUbFl94ICB3W53TyJDBXoBHREMBWVeyHGTFXqT-eqMnPRnqLsjc1zEXUOa94DJCsEQdugn6Rlt870GxKU2YTEWLLDD4a6v6LNSSSzbNe8rNKroC25nR8ewD6213V5LtohhBWlCv4efFvF94nScFYzQ3OvOpEI9Jz4ctP7-nmJbzNmZ4lRuQ349xO16aZaPTU_SIAWZGUQPa3hFga7fOBEWx8MjMF_o-NoSI4t_NuKapj8wtDHy3q_rxc-OhQ=w423-h903-no?authuser=0', age: '3 months')
g7 = Gallery.create(image: 'https://lh3.googleusercontent.com/nB8A0HwZVhiEK7m2opYvq_Pfxeh9eJBfB7bas8Jcyr5V5c0Q8XACQSZFMjPsPRcJsTCqX-vLR85woNDQ83o9d0PMebqBKjN7BX4qGDwqbkahFJnx6dd8kKusjslTnh8r51z339nbD3C_kdL6PaxeKGmwiPKLdh13angtG5bEXcxMuqSpL-VWZGA9tHVsOq2Y6EbJgiWrgHCovnFv6qYYszGIapLXzGb6v_FuMdYWhasBH4zxJ4OJf3nVbL5NxAGVGFHy3VI8IRMENP4c892-PBEE7uGEwSLDDhrk7CX0qOerGU9r2gnccHcjMLUezJ6MKZgdcTf5m5Q9L5L1E1FmonCXDyheskM9TCWSBeWL9A-ENMegdBtxhX0a8XeMQOP6j8bXFH47IHhAFCf931MAfF7_BnRelIEjwIjaHTHmW3HM-Bvpwgr0LWn4HMVui311wHUb5U5yNCUMUyQjdMINH1sUKXgI8t4Mfw93V6rKe_-lnYUyCYae-i2XYJaQiwBwQGPKC66jXTXji-b6i0Qofw-j_BZj63idXjxN6RVuDnp99YS9K-kPyPDfycYhe-gMx4sZ4bWEnuoKkiAgnBkNB86MmK2nkrr1OzaOqAfTxjHfSIBabwrPzq7Jwu_OMwdxhHXqhXSC92fZvEx5KyfPVQWd9VwabTyFp5nKSGJZ9YZLJShLlGVWBysTepXR14o-3Tmk7zKmuM-239wbfDhtPjVXCA=w423-h903-no?authuser=0', age: '3 months')
g8 = Gallery.create(image: 'https://lh3.googleusercontent.com/bGqcJ8m5D2O4nAfsaThGJ2agzKhqm-cc_9-I7Kqw_sI5CRA_sC2n8QKSQvbHLkeMtfm1to_bGCK3yfA23DUGFPtAoTGU0i8TpEC3O_VPDp-XQ2VJ8yJR10RQOlLx6QGwmptRRTTSk6yrSD31rJ1eL8k_56U4YY6R7sBGbShZ5s6jC9M-Lj1c9LjL6648I8J8bzRChPyS73yr4AMULWtycZDxfAbmcSZFEkpioQdJIzBju5cQBjtgPpYFfvppD_q_gRe_1p0Ewv-kqXlpHYzZXi7eCgxpcu8fGAnFgk4lCjos7h5SCQFXktbGKjL-2a0tlc9a6XgE82Uyf3EiEZWEVU3Ooui591MjXOku5vXPfTPm0LH3Qwm6ZbUUdSqLMoTePCSoWSxp8wVhIzyu_vzOJLRfGmc29EFMuH6eld9uJoA1ap5h7elmpiKKBa_IBEspiB9DFTtkKdwJvFLOq8s_r-e2LaKLr5AHA5xQG3tcR2ZNj5L5Ae_O5MXaxv7SM-keqXpBbJriGJPjf48cb0NLIUQuTEGJotuWh8Q3CJhCga2T4t8TPAkKCQvs9oxaLD5If_HYlk0XGWw_n-gx5pV1CSvkKdmFTxS7IyQqB4jV_Ff75rR7VWwwOHRa7HUVftDMmYM_WR2BJs_gE0fPTf_A3B1VKiN3D_9VXBkKq0c2KfjIUAhmWq3fAS8jemHKXa-Vmijd4VFZdMpctx9J-G6zxwCGGA=w1470-h688-no?authuser=0', age: '3 months')
g9 = Gallery.create(image: 'https://lh3.googleusercontent.com/e1GY897KKsy6hVqzC1rWW1HkkVVQfIIpF3ur3ZBVySZ6i_s3NBdXY74wVHdbL_fSkbpv_HHt5w9bzWyE5jj1tQrlrRoEVJB31TU-_qJop0C0o4oTHzLwWy7eyF9WDCQiz3FFQayrU89ALuKKS9p_XRuzOv6KUpnmy2YUnrTCcNn3f6NLUozSadosDohZrfmxUgUZ4cYDRM27QELQ9yN4DJpFiFo9qDXh3s8IrlipF-a9WJbr-d5c2LxdW-0ndMBa_74JzFr-qG97ep7wMiyn0TiX9rJSEKB-6LYIs2RmJG2k4fu9ZkijYflGmRPGlN7GtIN0Ke0SW4x7HLBLZkwKRk-b9Y0edaoDxz7CJZeinKk3ppeEEqvCjbB4EuTrk0FIeNCaaw1cCm9lPoeG5PSp-JPZbLrjhEeEZGpe4dyqw1HqLEq7qKSOy1xl3m5_vh9N_JEPsJcS3tj9oyAn_M5ezVup4kfK0vbwbbkrR2vSecjsaU_tpCdHcGLaVjHPV0JzyDDDpEDj6HEPAhuKUa08speYNeft0eG66DyrOp47RPEYoRXstoXsOE9PS81fEFRMqPHBp_98p6Vd1oy_HdJZBPoeGQHlg6siGY9NMMa6nu0RKitEPQVjaBXppkOGC66Y8AEi1Ig4u8YlJ6aZzBDkH-gLEMn22KXbVA1zsXkDuIJJq4s1i_9SeQ_kgNzQrEtsqTihk3YeeITnnKo_pQN7LMOyVg=w1470-h688-no?authuser=0', age: '3 months')
g10 = Gallery.create(image: 'https://lh3.googleusercontent.com/L14y6SMm74IBJ-nuAy7kRyZK3rHbl4FISHink543vpqJcW02m9LIijkAGRJgXaPvIjeGLUVzXUqfznlEKg_PY1JMS7RsJYSVT7JSy-NCIweEiQwLLKJAP23XPlbcMYUo3adubDTT_tu7AoXE-NNG6ZzGCkq4UBH1cr9hHszHpETHQwx2uuLNYFfVj5ZJn1InKNrm3Temqo8wzaQ4-H7lOo8UcZC4xg1en_c0X-Ejd4Zm2wxsHRYGx6kjz_MToEZtet5xz_XAnA0yL-OqBqd0eoOERjD-JntsBcrZcSWHkZsu_CCsTNUm2AkBNMzc11nIbRbdnj-gjMy5sIlkg9nz0MRCPDDYzsr229JRFNoj2LyzYB8mLnALDpzBOM568INQzo-XLrkKQDUdbtZHb9F_Fysekr1T71UB5v6Gq8bxP6wQX1VeQAVs5fuZLGyBQFgXEaOe8dQBtiz3NYU5wsM-_30KXk9tJbFXmbia7ci74mNzyGClQeHPgnePiYlvmzBcUabaR4cdJEpBPgHupZesPfO2ffFGRuup-Ku8S92qB3BtJUmeelff2BponeCPIy0U_1RT-8iLwfiEskwdIKeBMAxhGLSCgFX9phaGNu14Fc0afprqk2ooCbytI5bUnKi8pZ5RGxZ8D4-lO8RJHo2GvQcVw8Q-h4JGctSLA1Vlwpxu-k80ShgfuFFJAxy25d0Nau9iGwYlkObkM7M2OYWAR7e0BA=w1470-h688-no?authuser=0', age: '3 months')
g11 = Gallery.create(image: 'https://lh3.googleusercontent.com/d7HmwG_D9EetZWJnIcU9DyrvnK0QZVFNx49uIJ2LFLpWUsbVAk7pFm6AHmCHCAcc9vNnirtzLsKZqWpRXpgQhUtuYQNIL3Yo_UdRVUWH88GNipaYbf4HiKhQxPVQb-7GOPe8v9duCM9vOxTxPTZT2f_AguPYPm7-uoqVVGboPTpLWH5e1py9kVFkB8lEz0ife5NME9oYc3s1PxIkIE1r8AQV-FJqN0ws-VL4tMd6DI6QydaokyO-pCXDt31gEdouB_71DxY-tnK8g5eutT-CM8yP71b_RcO_mcRxlY5VKnY3wDFD8_LO-XbRMwXhpk9dCyTvDylFPWrnPr5GBJc_ZB_bt-JF63ULa4kOI3zT3VYroLAXRdOL1eF1PCm8S_crcSQhxYAlx07fPozDV320RL3V1KEetvXTO7sU8C3TfkAibIpX865aufCm442R_ZizjZVISRrQXGJVXwG-BPy0QgA7rNiVaehBT4AOp1vxlfoQ8m_nQ0qJfAMmoIzuHb4a8SRpJdLGK-XO2EzMTNaFAHzvErK6JkuK6xZNiFti-U5XX7q2pkHhHT4mRs-WDeOcEc87UbqCibeXcwuWqhI-pS7Hm1EOx0QOaSPh9JeQ4sFDtjpaKUfBCg51bWl1gG3sascCtVYmQbwo5jJxfUmbc257ZutKekeqZzhpXC0mgbKKxI9sYhj90dnOrjBF39GBNIiVkBc-VK_TzZoj7mCy5hwZtQ=w423-h903-no?authuser=0', age: '4 months')
g12 = Gallery.create(image: 'https://lh3.googleusercontent.com/FeW8BU7d0bdbfveYzksng--5xdnke-qCPho_HkxM2lE57npmUpefd7dAshTaJcqMoZ_sotBNKQEv5e83PoJrJtC55BL-g_jVtqmYtzyH_fbRjSdIU8efKEIoBQC4YmOQUXAFzPubJguQzVMHp3SQ5e_0WqBiZ9Qo0FNemFjCnIWuQCf7pNM_CDoMwirR3X2Ep1eSQbff6bA-NQc3_94xiwSsu8OeEfa44-XZR00oRDrKXgEqN49DpHlqJlku-ebIRjkWk1nuFMX-_Hr9GclWdFdGqDQv3hsQ6SyNnl7JB48K_8-eJscfm6KdCdKU8Yq_HyhMUfDLJdqJT2XFI4-RYgJFWcEJSv1mIIMhUE_kPVmx9-1gDqoxha_7xZNudORufq8hkQCTj7Qmr7axR3ZHpb1rlxFrrQ3N5eGE2mW8Kv49KAbRsHClKydB9tG72VB_b7VlA3Z6hQJtoBIAqvS5QHmPhSqHJVYDZJMasUS6lfobYmf7wikCHEw4QS-MLUKqYfyqWVmXgI7yjhveeGgLkF7DuxhnT0dI8M_xwEZlo4G5_l9-5ZpOkIHI7KqXSBRHF5V8dPlOFtnGJewGOPWsODS3nXUJviATDoBU42KVMCg2QPQH6POSE21PhdqKZ4bIDyhJzu23TUcJLn-gnYbwoxCkinvhpmmJYQjF5Vh5IHHzg6ngfrKuQnE1boSCTpeENo2SNvkoDihJn6Ke7Swfta2SNQ=w509-h903-no?authuser=0', age: '4 months')
g13 = Gallery.create(image: 'https://lh3.googleusercontent.com/ZQwdH67CgyjOjWKYMtD_jL3qwD2f6uuGfzS-LojGE7bDRvuMDf5ckEVRxQ0XFgVBWq0vMJwwJ0edyyQu9r3tStmHONJ2Bc6aRe-fDK4QDzW5UHUhbtIq6r1UlHipuKw8hik87c-bJsahROq3A0UCy-KqFvGpYgaGPQYW2-eTSpxxTY7aSsM_8h-rE-RVYZ2MfywMUsQsc97SAr-0VOzRG4VYvNKTyTOluhFGpfmOZjU2YoG5X9V5xzSQGCGWtsTMqmrxYLoKHedmegC-Ok4D4s9kfxyxJgWsAuh9LxyGx8YsWfmWrtFnik2ZVkaEqxoWUMPwUOYqg8cRCQZyM3Hr8ntbqaJWg-ye47IfFsDVKi3lgMoBWFzFFYi6Y7Q6WYVUjuyfgnutiXwpc4aXHHkLgP2ajjrTrtGxr5O6pWesigKW81Dx_RST5UzhHqijZCOSdxR4fsPmra0w62qWh7ZSgTtvwZZ_a6iwr8ALTs3cLQMtAeCvvBqdswFhkn-uF6s2CK8j07c5D1VaDvZeVA4uWPnRWm55O3AremO7rVgoKWaYvbsGY5dTEoUEh-Z8UoEeta8hpEfhcamFdkfk3iiGeHOwVHFMUJ6Au4M8yYKos4qZl3wopARfR6QBX15yxQdPpUOIyWqjAtCTJPIxARghwl0eNptJ72QbLkH7WiOyynSOMj5QfltzgiRqRuGPSwCCAY2pQ1N0nZnsnYlhsvx6gfTSjQ=w1470-h688-no?authuser=0', age: '4 months')
g14 = Gallery.create(image: 'https://lh3.googleusercontent.com/bkijon8OhYvr4vklg8q_e67FrSJeAuxG4Ta4_Nkz5jOyFYla2I2K-7V8GEXA21Pb_aHSCGL_QhLbvqVpABDqKJYsiW5qZ8hozIf6c2iqmgMCc1M0LeB-HtsDqMvm0z88LhfDoqJtq6o7djsTxLbZnHCaoTaFTUx6dPDLNg8HbssSITmho_sft0ZiQThYjT7lpTPDK2RulEpLxlI_rAGCEWtnRyrzFFAwhMsK4AV9kGRKxNgkpXoUiSfiNMJPex9S-KYNuDrDtSUgUPcwfGElIZBLoKm2Q4EcFVx-o0vbh4E0QXNFzrQBVkgEPqHw0jOOD_Wc8t-78bHep-YHjrV_8i6stFfRRB4GPkkdObmRAQ5H_k2ih43JpGglEL02ZCMhaRM_b1YF48BUeITZQ3ZY_sWYeiLdyD3v7l798-tU4s6UOzksiY1Ezq-nR60n4fb5yAQgtqPjGebGdWCAuu0jA1ckXZXuccYZzbK85vq6PCgp0bKxodB6urc3AShtWDMWJaDANTQXhIqaRaxFvbrLY1OmFv_ZzAMw-MBOPcJGZooaOYz2FZQX4sP6JvTFkJqVaJA86A6optV3wLhDYAOATm9w-frIU6jzuBzaRRSdSnhxfpJsu-Kq9LuZVfdGXBJN5XA6uIKLQKKZceD4X29d03jUdSZ7fG3iw6mHpQgGKzSE0g3hUOpXn4ImeT89AFVw7a6-JG1tUVtcM8oFXEo77sQ8Uw=w1470-h688-no?authuser=0', age: '4 months')
g15 = Gallery.create(image: 'https://lh3.googleusercontent.com/9WiUaMPaxaRY5dJmpSHSUmPs3Hzg_rs59DRVNcVhRbnZUnYuGGi1FF2XJkRlvX_Gp9x7lkDGvy3IyZjzQbHG9_76EPl5PNu-CcR67bWB04_JCIZZLrn7-Vv19VIYfs_BNxI1KMMcEa488KOYK5MHgxG4AVnHqS32CHnphRZAXWKsQXQvnQb2Tf4IPoP6dc5t7rF5IB0uaGMSIv6jm-irmEAcflNeQRnwts3OcQ26FyOZiuZbaCfr3sQThpOEJXNdfk9GFuRYc2j_6PoAvruhW9zAsFZR9gEDYR-DgJNBJhna8V3c-Hi3Fm2khrWH0SN6cWCTE_TMTr0_qGfW-2oMYEYOxUksZAIgkGWWnNEyxFrB4HWACDKO1LGLK4IvAO5Bnd7sotHhHwdNVyQj73TyElvm9zIW0UdRhHGu2pRwKyZCdyhNQ4QkfRxZVrHLovVU1OD5a67Q2ZJjpnUgWxGfWsfJiWqEeBX6PfwfMWf3v5T8bjkUDGFzIqcHpEL_oQMH6VpSLTmISY2PquJ6N_94wF5ZRYDwslkYtrV5rvGn9SnFZVtOSTfVeXYe-dvuQZaY1JDxzcBRwd_4e1yDBQdMiLZBNSNh9-vvZAodGlr4_p79YQKQlCF7XYOycLy-nVnHhZ4ZaT2Og1ZPUS7u537GlcfBh6tPMFYDtjG44lkqxKxCGD9ll-UNbcq9EhTIpuZCyoAexPmaBqz1kGYECq1batQEFA=w1470-h688-no?authuser=0', age: '4 months')
g16 = Gallery.create(image: 'https://lh3.googleusercontent.com/f-S6fW1UZ31Q7SCFLxeSWpPaXMWlw60Q5rmznnp0wSb4HAqEZaWCV-86vnXZ6kWxTtCoFA9sDYy7rS-nnuw5aRY0Z5JMVWSJeNU8Qd2jFui-bTOUVRACatgYE5dLlOge_ACztkUNV5VhW16ma9mxvS4q9ApIgM-0V_fy9euKhbHdGCYsud1xboBzI7_AHA-ZzMTi5yHYo4tZZ35fhqpAJGB0-G0R1rO64OTWDu44E47N9WdtNWdKp5pzHClZDd9hafJ3mmYpsSB3W-yd9EuOYoyzXjrGBrl1yeneysDYUZMDlOVtNrD_OjwE4ClB_4QhEZ-E83II5Xg1QCMQ1hxjUncMwgTwUJONVBq5Qbmm02sx_tVorfHKcwBYNuyrLc-LThy-2gP4pfmNtgN3AOKIumAzmsYYksrsCvHPPzoRbbz3arPas-nIACKEKLNrcr4ZStfQsnqRmKODIsaF4OFR3wXmJKHF4KorAc3kYjiALSeXaQNV9ZPcb_vfVGb0utIbF0jBDPUmEzBcijXNs76bmLo0ZNiUzWtJhjxfOLWPYssvkrIS5YF1Z1t-qPYr8V_hRNFbxq2q0ji_zvO5I7WqFx3XUxlc6O1mj-0FADUsn5zEEwY9-Cd0d3A-ORlg5M024XbsukZmiSVVnkocERYBVovbefpPa0WJgSHj0Qu9UShx7pUVYpsniC7DgCvL3e11u3Lq-_XI08OHiKGchnlYKqWmkg=w690-h903-no?authuser=0', age: '4 months')
g17 = Gallery.create(image: 'https://lh3.googleusercontent.com/iy8lcJsBgPbP2GJhEvOKZYOnOC1-WvKXDr82NBo3578AO9JJTiNLIrm2bE5wqXkVa9RvNA9DZwqrPHgIU8b7DqxoUbnCNI2nF0_Yc80UaTMbidp2b2VYovSLADXLwXBKSgVw3TsJ9M_TVYYvPVnyxC9Upp6pa78DqPudRHginnWa1NZhqD-yKVN4aDipCr48xKQ434VKxnPS4QCVvoI0SBZ7axeFqe3anxhOa2iX06suDIufb0hz9r4OwO-1C1YUPeIYwMGWMLzHt47YNkTyJBtsxS3srQIpzmFhmPbE_lRb3JExS2UBZgKACwf5IXX7Uf8AS9eR0WvOjga-_uUH0z9ezyv-U1SBzlsgXywwAwXMtTzFPF0LUoxCmE1u1FhuQ59tMDZ3GcNiEFToKKR8te1IY-oCr5lu6TnSlcN06eX2P-XoKk-TFBBtN9sRHl-LLKyRiqo1vuFJan1XEKolnBR_sKqNVA55ylOKO4R2_rYvPi1nl7ASZ2jkm_5NK_bMaqZH8fQxOcxaS8Ox-DZ9bcy8o32X-Fi5mxbLbbrj23EplKYawbUqFCS4NA9T0RQMK1315ISnZMEAaBOAXunvuMaQcIOPl3ESeLFWP6dNf7M8aXTQ_bB6SLL7dyi6heNLXXKJQSdwEzBNfcvtQ5K1Sr8Y7mgTnUOctcBNJ1DWHxKP0wlXph5FmcziLWdhEjntDQP1P7YABK-0BQzS4MjLDAYd2w=w678-h903-no?authuser=0', age: '4 months')
g18 = Gallery.create(image: 'https://lh3.googleusercontent.com/pw/AM-JKLXwraL_ukyYd5Mdflub2ctFvBl_uxeZ3Sq7jbupuwnoG70wYTAkQuKaJOfGbQXX5ZEGQMyRUq6I1FxRyQRNUyyzFJgIhGu-dZNFoAlZ7_QF048Tj7xcWlkKiH1A9TWPWyv_XvGd9ha0zqEPBphkDANgMBY6paQyUWgSLF1g85yXDpfYbIyg7T_06X4woCuaFk9fLTBQJTMPUrl7-pZK0_M6WX1yj0dFg9csfiiKaapDBSmJXJMN5PJm-PVCRdMh61AunYXK-qC-qBH94Hbtt2zYYKeXhrniLb4sinjo4H7sRzdB2VgXcim_Smz6GEk9OJZi3MVa1TjM3z1SjgtVeeYzPR5vDsHQwi7vSjQ5FotJeG8DrEJszR2DfkRzDzWAiSkme-aeWhmbLULQhu9ovO04NiyuJv3xnxf2xF22PCgHfZjasPYNliljPxc1Bagw7MdbGflgHr0CQyKWi3zK5gNlQt-2ySZRfJf_nQre5DZmStKczGd4ag0-zkctyrk2C4nn0ClA2ZvNH6ZdOrvCnMXABzsZZY4q7lvB9A5BTnpepgkYnAYfrnaa0rq5ONqjTtEhdeY7t_gj2nscmQkfIrL3h38dZ0AXW7IdM1S56yzNRgflrkG9pnODaqzLHEi6O0BU9yTStU9gAZV4ZxrNlxElJ2DZqLNfbHkRFD8W2NhDEQUirJdFmVMgQmplj6mEDvq99LTbqxqZyWV4KJ8T7KXPQXvyrJSHFJgumYW2lavwOdJ1=w471-h220-no?authuser=0', age: '4 months')
