COPY transactions (id, account_number, transaction_date, exchange_date, receiver, purpose, amount, currency, category, sub_category, comment, approved) FROM stdin;
12	db	2012-01-02	2012-01-02			-10.00	EUR	house	electricity	\N	t
1	db	2012-01-02	2012-01-02			-2.03	EUR	living	food	\N	t
38	db	2012-01-03	2012-01-03			-10.00	EUR	house	internet	\N	t
27	db	2012-01-03	2012-01-03			-4.49	EUR	free time	hobbies	\N	t
64	db	2012-01-04	2012-01-04			-250.00	EUR	house	rent	\N	t
53	db	2012-01-04	2012-01-04			-1.24	EUR	free time	sport	\N	t
90	db	2012-01-05	2012-01-05			-10.00	EUR	finance	costs and fees	\N	t
80	db	2012-01-05	2012-01-05			-2.82	EUR	living	food	\N	t
79	db	2012-01-05	2012-01-05			-0.91	EUR	free time	entertainment	\N	t
116	db	2012-01-06	2012-01-06			-50.00	EUR	finance	insurance	\N	t
108	db	2012-01-06	2012-01-06			-11.02	EUR	living	food	\N	t
107	db	2012-01-06	2012-01-06			-16.03	EUR	free time	going out	\N	t
106	db	2012-01-06	2012-01-06			-16.05	EUR	mobility	gas	\N	t
100	db	2012-01-06	2012-01-06			-20.00	EUR	other	cash	\N	t
142	db	2012-01-07	2012-01-07			-22.39	EUR	health	doctor visits	\N	t
135	db	2012-01-07	2012-01-07			-19.49	EUR	health	wellness	\N	t
134	db	2012-01-07	2012-01-07			-5.15	EUR	free time	going out	\N	t
168	db	2012-01-08	2012-01-08			1000.00	EUR	work and training	salary	\N	t
176	db	2012-01-09	2012-01-09			-1.54	EUR	living	food	\N	t
219	db	2012-01-10	2012-01-10			-10.47	EUR	living	pets	\N	t
202	db	2012-01-10	2012-01-10			-9.25	EUR	free time	hobbies	\N	t
228	db	2012-01-11	2012-01-11			-2.03	EUR	free time	sport	\N	t
255	db	2012-01-12	2012-01-12			-7.78	EUR	living	food	\N	t
254	db	2012-01-12	2012-01-12			-5.37	EUR	free time	entertainment	\N	t
283	db	2012-01-13	2012-01-13			-6.28	EUR	living	food	\N	t
282	db	2012-01-13	2012-01-13			-7.48	EUR	free time	going out	\N	t
281	db	2012-01-13	2012-01-13			-0.99	EUR	mobility	gas	\N	t
275	db	2012-01-13	2012-01-13			-20.00	EUR	other	cash	\N	t
310	db	2012-01-14	2012-01-14			-17.97	EUR	health	wellness	\N	t
309	db	2012-01-14	2012-01-14			-17.50	EUR	free time	going out	\N	t
345	db	2012-01-15	2012-01-15			-17.41	EUR	living	household	\N	t
351	db	2012-01-16	2012-01-16			-2.19	EUR	living	food	\N	t
377	db	2012-01-17	2012-01-17			-4.95	EUR	free time	hobbies	\N	t
403	db	2012-01-18	2012-01-18			-0.17	EUR	free time	sport	\N	t
430	db	2012-01-19	2012-01-19			-2.64	EUR	living	food	\N	t
429	db	2012-01-19	2012-01-19			-3.99	EUR	free time	entertainment	\N	t
472	db	2012-01-20	2012-01-20			-68.12	EUR	free time	gadgets	\N	t
471	db	2012-01-20	2012-01-20			-72.30	EUR	living	clothes	\N	t
458	db	2012-01-20	2012-01-20			-2.58	EUR	living	food	\N	t
457	db	2012-01-20	2012-01-20			-10.07	EUR	free time	going out	\N	t
456	db	2012-01-20	2012-01-20			-1.82	EUR	mobility	gas	\N	t
450	db	2012-01-20	2012-01-20			-20.00	EUR	other	cash	\N	t
485	db	2012-01-21	2012-01-21			-9.92	EUR	health	wellness	\N	t
484	db	2012-01-21	2012-01-21			-6.53	EUR	free time	going out	\N	t
526	db	2012-01-23	2012-01-23			-6.99	EUR	living	food	\N	t
552	db	2012-01-24	2012-01-24			-1.10	EUR	free time	hobbies	\N	t
578	db	2012-01-25	2012-01-25			-8.81	EUR	free time	sport	\N	t
605	db	2012-01-26	2012-01-26			-2.46	EUR	living	food	\N	t
604	db	2012-01-26	2012-01-26			-6.05	EUR	free time	entertainment	\N	t
633	db	2012-01-27	2012-01-27			-18.75	EUR	living	food	\N	t
632	db	2012-01-27	2012-01-27			-13.05	EUR	free time	going out	\N	t
631	db	2012-01-27	2012-01-27			-19.22	EUR	mobility	gas	\N	t
625	db	2012-01-27	2012-01-27			-20.00	EUR	other	cash	\N	t
660	db	2012-01-28	2012-01-28			-14.23	EUR	health	wellness	\N	t
659	db	2012-01-28	2012-01-28			-9.58	EUR	free time	going out	\N	t
701	db	2012-01-30	2012-01-30			-7.02	EUR	living	food	\N	t
727	db	2012-01-31	2012-01-31			-5.51	EUR	free time	hobbies	\N	t
761	db	2012-02-01	2012-02-01			-10.00	EUR	house	phone	\N	t
753	db	2012-02-01	2012-02-01			-5.32	EUR	free time	sport	\N	t
787	db	2012-02-02	2012-02-02			-10.00	EUR	house	electricity	\N	t
780	db	2012-02-02	2012-02-02			-1.60	EUR	living	food	\N	t
779	db	2012-02-02	2012-02-02			-1.95	EUR	free time	entertainment	\N	t
813	db	2012-02-03	2012-02-03			-10.00	EUR	house	internet	\N	t
808	db	2012-02-03	2012-02-03			-11.36	EUR	living	food	\N	t
807	db	2012-02-03	2012-02-03			-9.45	EUR	free time	going out	\N	t
806	db	2012-02-03	2012-02-03			-12.25	EUR	mobility	gas	\N	t
800	db	2012-02-03	2012-02-03			-20.00	EUR	other	cash	\N	t
839	db	2012-02-04	2012-02-04			-250.00	EUR	house	rent	\N	t
835	db	2012-02-04	2012-02-04			-5.92	EUR	health	wellness	\N	t
834	db	2012-02-04	2012-02-04			-17.20	EUR	free time	going out	\N	t
865	db	2012-02-05	2012-02-05			-10.00	EUR	finance	costs and fees	\N	t
891	db	2012-02-06	2012-02-06			-50.00	EUR	finance	insurance	\N	t
876	db	2012-02-06	2012-02-06			-1.72	EUR	living	food	\N	t
917	db	2012-02-07	2012-02-07			-49.41	EUR	health	doctor visits	\N	t
902	db	2012-02-07	2012-02-07			-9.34	EUR	free time	hobbies	\N	t
943	db	2012-02-08	2012-02-08			1000.00	EUR	work and training	salary	\N	t
928	db	2012-02-08	2012-02-08			-2.34	EUR	free time	sport	\N	t
955	db	2012-02-09	2012-02-09			-0.28	EUR	living	food	\N	t
954	db	2012-02-09	2012-02-09			-4.43	EUR	free time	entertainment	\N	t
994	db	2012-02-10	2012-02-10			-18.73	EUR	living	pets	\N	t
983	db	2012-02-10	2012-02-10			-7.83	EUR	living	food	\N	t
982	db	2012-02-10	2012-02-10			-11.85	EUR	free time	going out	\N	t
981	db	2012-02-10	2012-02-10			-8.21	EUR	mobility	gas	\N	t
975	db	2012-02-10	2012-02-10			-20.00	EUR	other	cash	\N	t
1010	db	2012-02-11	2012-02-11			-5.92	EUR	health	wellness	\N	t
1009	db	2012-02-11	2012-02-11			-5.66	EUR	free time	going out	\N	t
1051	db	2012-02-13	2012-02-13			-5.99	EUR	living	food	\N	t
1077	db	2012-02-14	2012-02-14			-4.26	EUR	free time	hobbies	\N	t
1120	db	2012-02-15	2012-02-15			-9.12	EUR	living	household	\N	t
1103	db	2012-02-15	2012-02-15			-3.92	EUR	free time	sport	\N	t
1130	db	2012-02-16	2012-02-16			-4.41	EUR	living	food	\N	t
1129	db	2012-02-16	2012-02-16			-3.55	EUR	free time	entertainment	\N	t
1158	db	2012-02-17	2012-02-17			-13.41	EUR	living	food	\N	t
1157	db	2012-02-17	2012-02-17			-2.19	EUR	free time	going out	\N	t
1156	db	2012-02-17	2012-02-17			-3.96	EUR	mobility	gas	\N	t
1150	db	2012-02-17	2012-02-17			-20.00	EUR	other	cash	\N	t
1185	db	2012-02-18	2012-02-18			-4.19	EUR	health	wellness	\N	t
1184	db	2012-02-18	2012-02-18			-11.32	EUR	free time	going out	\N	t
1247	db	2012-02-20	2012-02-20			-1.18	EUR	free time	gadgets	\N	t
1246	db	2012-02-20	2012-02-20			-17.02	EUR	living	clothes	\N	t
1226	db	2012-02-20	2012-02-20			-4.25	EUR	living	food	\N	t
1252	db	2012-02-21	2012-02-21			-8.91	EUR	free time	hobbies	\N	t
1278	db	2012-02-22	2012-02-22			-5.03	EUR	free time	sport	\N	t
1305	db	2012-02-23	2012-02-23			-2.71	EUR	living	food	\N	t
1304	db	2012-02-23	2012-02-23			-6.10	EUR	free time	entertainment	\N	t
1333	db	2012-02-24	2012-02-24			-16.22	EUR	living	food	\N	t
1332	db	2012-02-24	2012-02-24			-12.36	EUR	free time	going out	\N	t
1331	db	2012-02-24	2012-02-24			-10.08	EUR	mobility	gas	\N	t
1325	db	2012-02-24	2012-02-24			-20.00	EUR	other	cash	\N	t
1360	db	2012-02-25	2012-02-25			-6.66	EUR	health	wellness	\N	t
1359	db	2012-02-25	2012-02-25			-1.77	EUR	free time	going out	\N	t
1401	db	2012-02-27	2012-02-27			-0.18	EUR	living	food	\N	t
1427	db	2012-02-28	2012-02-28			-3.05	EUR	free time	hobbies	\N	t
1453	db	2012-02-29	2012-02-29			-1.38	EUR	free time	sport	\N	t
1486	db	2012-03-01	2012-03-01			-10.00	EUR	house	phone	\N	t
1480	db	2012-03-01	2012-03-01			-0.89	EUR	living	food	\N	t
1479	db	2012-03-01	2012-03-01			-6.77	EUR	free time	entertainment	\N	t
1512	db	2012-03-02	2012-03-02			-10.00	EUR	house	electricity	\N	t
1508	db	2012-03-02	2012-03-02			-7.78	EUR	living	food	\N	t
1507	db	2012-03-02	2012-03-02			-10.52	EUR	free time	going out	\N	t
1506	db	2012-03-02	2012-03-02			-0.98	EUR	mobility	gas	\N	t
1500	db	2012-03-02	2012-03-02			-20.00	EUR	other	cash	\N	t
1538	db	2012-03-03	2012-03-03			-10.00	EUR	house	internet	\N	t
1535	db	2012-03-03	2012-03-03			-17.86	EUR	health	wellness	\N	t
1534	db	2012-03-03	2012-03-03			-13.61	EUR	free time	going out	\N	t
1564	db	2012-03-04	2012-03-04			-250.00	EUR	house	rent	\N	t
1590	db	2012-03-05	2012-03-05			-10.00	EUR	finance	costs and fees	\N	t
1576	db	2012-03-05	2012-03-05			-9.09	EUR	living	food	\N	t
1616	db	2012-03-06	2012-03-06			-50.00	EUR	finance	insurance	\N	t
1602	db	2012-03-06	2012-03-06			-5.03	EUR	free time	hobbies	\N	t
1642	db	2012-03-07	2012-03-07			-12.81	EUR	health	doctor visits	\N	t
1628	db	2012-03-07	2012-03-07			-1.41	EUR	free time	sport	\N	t
1668	db	2012-03-08	2012-03-08			1000.00	EUR	work and training	salary	\N	t
1655	db	2012-03-08	2012-03-08			-6.41	EUR	living	food	\N	t
1654	db	2012-03-08	2012-03-08			-5.06	EUR	free time	entertainment	\N	t
1683	db	2012-03-09	2012-03-09			-1.60	EUR	living	food	\N	t
1682	db	2012-03-09	2012-03-09			-11.27	EUR	free time	going out	\N	t
1681	db	2012-03-09	2012-03-09			-13.64	EUR	mobility	gas	\N	t
1675	db	2012-03-09	2012-03-09			-20.00	EUR	other	cash	\N	t
1719	db	2012-03-10	2012-03-10			-13.83	EUR	living	pets	\N	t
1710	db	2012-03-10	2012-03-10			-7.69	EUR	health	wellness	\N	t
1709	db	2012-03-10	2012-03-10			-10.24	EUR	free time	going out	\N	t
1751	db	2012-03-12	2012-03-12			-8.89	EUR	living	food	\N	t
1777	db	2012-03-13	2012-03-13			-7.92	EUR	free time	hobbies	\N	t
1803	db	2012-03-14	2012-03-14			-5.52	EUR	free time	sport	\N	t
1845	db	2012-03-15	2012-03-15			-3.55	EUR	living	household	\N	t
1830	db	2012-03-15	2012-03-15			-6.61	EUR	living	food	\N	t
1829	db	2012-03-15	2012-03-15			-9.37	EUR	free time	entertainment	\N	t
1858	db	2012-03-16	2012-03-16			-18.07	EUR	living	food	\N	t
1857	db	2012-03-16	2012-03-16			-19.40	EUR	free time	going out	\N	t
1856	db	2012-03-16	2012-03-16			-2.78	EUR	mobility	gas	\N	t
1850	db	2012-03-16	2012-03-16			-20.00	EUR	other	cash	\N	t
1885	db	2012-03-17	2012-03-17			-13.06	EUR	health	wellness	\N	t
1884	db	2012-03-17	2012-03-17			-3.77	EUR	free time	going out	\N	t
1926	db	2012-03-19	2012-03-19			-4.06	EUR	living	food	\N	t
1972	db	2012-03-20	2012-03-20			-23.55	EUR	free time	gadgets	\N	t
1971	db	2012-03-20	2012-03-20			-14.81	EUR	living	clothes	\N	t
1952	db	2012-03-20	2012-03-20			-2.26	EUR	free time	hobbies	\N	t
1978	db	2012-03-21	2012-03-21			-8.07	EUR	free time	sport	\N	t
2005	db	2012-03-22	2012-03-22			-2.60	EUR	living	food	\N	t
2004	db	2012-03-22	2012-03-22			-9.07	EUR	free time	entertainment	\N	t
2033	db	2012-03-23	2012-03-23			-12.82	EUR	living	food	\N	t
2032	db	2012-03-23	2012-03-23			-0.72	EUR	free time	going out	\N	t
2031	db	2012-03-23	2012-03-23			-1.57	EUR	mobility	gas	\N	t
2025	db	2012-03-23	2012-03-23			-20.00	EUR	other	cash	\N	t
2060	db	2012-03-24	2012-03-24			-6.65	EUR	health	wellness	\N	t
2059	db	2012-03-24	2012-03-24			-19.52	EUR	free time	going out	\N	t
2101	db	2012-03-26	2012-03-26			-6.56	EUR	living	food	\N	t
2127	db	2012-03-27	2012-03-27			-2.45	EUR	free time	hobbies	\N	t
2153	db	2012-03-28	2012-03-28			-9.25	EUR	free time	sport	\N	t
2180	db	2012-03-29	2012-03-29			-8.99	EUR	living	food	\N	t
2179	db	2012-03-29	2012-03-29			-2.94	EUR	free time	entertainment	\N	t
2208	db	2012-03-30	2012-03-30			-9.47	EUR	living	food	\N	t
2207	db	2012-03-30	2012-03-30			-11.96	EUR	free time	going out	\N	t
2206	db	2012-03-30	2012-03-30			-2.50	EUR	mobility	gas	\N	t
2200	db	2012-03-30	2012-03-30			-20.00	EUR	other	cash	\N	t
2235	db	2012-03-31	2012-03-31			-9.64	EUR	health	wellness	\N	t
2234	db	2012-03-31	2012-03-31			-3.64	EUR	free time	going out	\N	t
2261	db	2012-04-01	2012-04-01			-10.00	EUR	house	phone	\N	t
2287	db	2012-04-02	2012-04-02			-10.00	EUR	house	electricity	\N	t
2276	db	2012-04-02	2012-04-02			-2.84	EUR	living	food	\N	t
2313	db	2012-04-03	2012-04-03			-10.00	EUR	house	internet	\N	t
2302	db	2012-04-03	2012-04-03			-0.91	EUR	free time	hobbies	\N	t
2339	db	2012-04-04	2012-04-04			-250.00	EUR	house	rent	\N	t
2328	db	2012-04-04	2012-04-04			-9.47	EUR	free time	sport	\N	t
2365	db	2012-04-05	2012-04-05			-10.00	EUR	finance	costs and fees	\N	t
2355	db	2012-04-05	2012-04-05			-4.46	EUR	living	food	\N	t
2354	db	2012-04-05	2012-04-05			-5.31	EUR	free time	entertainment	\N	t
2391	db	2012-04-06	2012-04-06			-50.00	EUR	finance	insurance	\N	t
2383	db	2012-04-06	2012-04-06			-10.50	EUR	living	food	\N	t
2382	db	2012-04-06	2012-04-06			-6.52	EUR	free time	going out	\N	t
2381	db	2012-04-06	2012-04-06			-3.05	EUR	mobility	gas	\N	t
2375	db	2012-04-06	2012-04-06			-20.00	EUR	other	cash	\N	t
2417	db	2012-04-07	2012-04-07			-79.14	EUR	health	doctor visits	\N	t
2410	db	2012-04-07	2012-04-07			-13.88	EUR	health	wellness	\N	t
2409	db	2012-04-07	2012-04-07			-2.33	EUR	free time	going out	\N	t
2443	db	2012-04-08	2012-04-08			1000.00	EUR	work and training	salary	\N	t
2451	db	2012-04-09	2012-04-09			-9.93	EUR	living	food	\N	t
2494	db	2012-04-10	2012-04-10			-22.22	EUR	living	pets	\N	t
2477	db	2012-04-10	2012-04-10			-2.67	EUR	free time	hobbies	\N	t
2503	db	2012-04-11	2012-04-11			-4.34	EUR	free time	sport	\N	t
2530	db	2012-04-12	2012-04-12			-0.17	EUR	living	food	\N	t
2529	db	2012-04-12	2012-04-12			-3.93	EUR	free time	entertainment	\N	t
2558	db	2012-04-13	2012-04-13			-6.78	EUR	living	food	\N	t
2557	db	2012-04-13	2012-04-13			-0.13	EUR	free time	going out	\N	t
2556	db	2012-04-13	2012-04-13			-2.09	EUR	mobility	gas	\N	t
2550	db	2012-04-13	2012-04-13			-20.00	EUR	other	cash	\N	t
2585	db	2012-04-14	2012-04-14			-19.75	EUR	health	wellness	\N	t
2584	db	2012-04-14	2012-04-14			-15.77	EUR	free time	going out	\N	t
2620	db	2012-04-15	2012-04-15			-15.19	EUR	living	household	\N	t
2626	db	2012-04-16	2012-04-16			-6.75	EUR	living	food	\N	t
2652	db	2012-04-17	2012-04-17			-1.92	EUR	free time	hobbies	\N	t
2678	db	2012-04-18	2012-04-18			-0.04	EUR	free time	sport	\N	t
2705	db	2012-04-19	2012-04-19			-9.04	EUR	living	food	\N	t
2704	db	2012-04-19	2012-04-19			-8.03	EUR	free time	entertainment	\N	t
2747	db	2012-04-20	2012-04-20			-19.57	EUR	free time	gadgets	\N	t
2746	db	2012-04-20	2012-04-20			-74.64	EUR	living	clothes	\N	t
2733	db	2012-04-20	2012-04-20			-16.51	EUR	living	food	\N	t
2732	db	2012-04-20	2012-04-20			-17.01	EUR	free time	going out	\N	t
2731	db	2012-04-20	2012-04-20			-10.51	EUR	mobility	gas	\N	t
2725	db	2012-04-20	2012-04-20			-20.00	EUR	other	cash	\N	t
2760	db	2012-04-21	2012-04-21			-4.16	EUR	health	wellness	\N	t
2759	db	2012-04-21	2012-04-21			-16.14	EUR	free time	going out	\N	t
2801	db	2012-04-23	2012-04-23			-6.48	EUR	living	food	\N	t
2827	db	2012-04-24	2012-04-24			-6.69	EUR	free time	hobbies	\N	t
2853	db	2012-04-25	2012-04-25			-7.30	EUR	free time	sport	\N	t
2880	db	2012-04-26	2012-04-26			-5.67	EUR	living	food	\N	t
2879	db	2012-04-26	2012-04-26			-3.53	EUR	free time	entertainment	\N	t
2908	db	2012-04-27	2012-04-27			-2.06	EUR	living	food	\N	t
2907	db	2012-04-27	2012-04-27			-13.95	EUR	free time	going out	\N	t
2906	db	2012-04-27	2012-04-27			-9.48	EUR	mobility	gas	\N	t
2900	db	2012-04-27	2012-04-27			-20.00	EUR	other	cash	\N	t
2935	db	2012-04-28	2012-04-28			-5.03	EUR	health	wellness	\N	t
2934	db	2012-04-28	2012-04-28			-14.36	EUR	free time	going out	\N	t
2976	db	2012-04-30	2012-04-30			-7.56	EUR	living	food	\N	t
3011	db	2012-05-01	2012-05-01			-10.00	EUR	house	phone	\N	t
3002	db	2012-05-01	2012-05-01			-8.05	EUR	free time	hobbies	\N	t
3037	db	2012-05-02	2012-05-02			-10.00	EUR	house	electricity	\N	t
3028	db	2012-05-02	2012-05-02			-9.20	EUR	free time	sport	\N	t
3063	db	2012-05-03	2012-05-03			-10.00	EUR	house	internet	\N	t
3055	db	2012-05-03	2012-05-03			-7.19	EUR	living	food	\N	t
3054	db	2012-05-03	2012-05-03			-5.07	EUR	free time	entertainment	\N	t
3089	db	2012-05-04	2012-05-04			-250.00	EUR	house	rent	\N	t
3083	db	2012-05-04	2012-05-04			-0.15	EUR	living	food	\N	t
3082	db	2012-05-04	2012-05-04			-17.00	EUR	free time	going out	\N	t
3081	db	2012-05-04	2012-05-04			-14.55	EUR	mobility	gas	\N	t
3075	db	2012-05-04	2012-05-04			-20.00	EUR	other	cash	\N	t
3115	db	2012-05-05	2012-05-05			-10.00	EUR	finance	costs and fees	\N	t
3110	db	2012-05-05	2012-05-05			-14.51	EUR	health	wellness	\N	t
3109	db	2012-05-05	2012-05-05			-2.48	EUR	free time	going out	\N	t
3141	db	2012-05-06	2012-05-06			-50.00	EUR	finance	insurance	\N	t
3167	db	2012-05-07	2012-05-07			-30.60	EUR	health	doctor visits	\N	t
3151	db	2012-05-07	2012-05-07			-6.40	EUR	living	food	\N	t
3193	db	2012-05-08	2012-05-08			1000.00	EUR	work and training	salary	\N	t
3177	db	2012-05-08	2012-05-08			-2.64	EUR	free time	hobbies	\N	t
3203	db	2012-05-09	2012-05-09			-5.20	EUR	free time	sport	\N	t
3244	db	2012-05-10	2012-05-10			-53.30	EUR	living	pets	\N	t
3230	db	2012-05-10	2012-05-10			-6.04	EUR	living	food	\N	t
3229	db	2012-05-10	2012-05-10			-2.52	EUR	free time	entertainment	\N	t
3258	db	2012-05-11	2012-05-11			-17.12	EUR	living	food	\N	t
3257	db	2012-05-11	2012-05-11			-11.19	EUR	free time	going out	\N	t
3256	db	2012-05-11	2012-05-11			-7.87	EUR	mobility	gas	\N	t
3250	db	2012-05-11	2012-05-11			-20.00	EUR	other	cash	\N	t
3285	db	2012-05-12	2012-05-12			-8.27	EUR	health	wellness	\N	t
3284	db	2012-05-12	2012-05-12			-10.69	EUR	free time	going out	\N	t
3326	db	2012-05-14	2012-05-14			-8.71	EUR	living	food	\N	t
3370	db	2012-05-15	2012-05-15			-33.14	EUR	living	household	\N	t
3352	db	2012-05-15	2012-05-15			-1.67	EUR	free time	hobbies	\N	t
3378	db	2012-05-16	2012-05-16			-5.20	EUR	free time	sport	\N	t
3405	db	2012-05-17	2012-05-17			-0.76	EUR	living	food	\N	t
3404	db	2012-05-17	2012-05-17			-6.34	EUR	free time	entertainment	\N	t
3433	db	2012-05-18	2012-05-18			-3.62	EUR	living	food	\N	t
3432	db	2012-05-18	2012-05-18			-18.69	EUR	free time	going out	\N	t
3431	db	2012-05-18	2012-05-18			-16.35	EUR	mobility	gas	\N	t
3425	db	2012-05-18	2012-05-18			-20.00	EUR	other	cash	\N	t
3460	db	2012-05-19	2012-05-19			-11.96	EUR	health	wellness	\N	t
3459	db	2012-05-19	2012-05-19			-5.73	EUR	free time	going out	\N	t
3497	db	2012-05-20	2012-05-20			-54.25	EUR	free time	gadgets	\N	t
3496	db	2012-05-20	2012-05-20			-32.69	EUR	living	clothes	\N	t
3501	db	2012-05-21	2012-05-21			-7.67	EUR	living	food	\N	t
3527	db	2012-05-22	2012-05-22			-6.38	EUR	free time	hobbies	\N	t
3553	db	2012-05-23	2012-05-23			-7.33	EUR	free time	sport	\N	t
3580	db	2012-05-24	2012-05-24			-9.12	EUR	living	food	\N	t
3579	db	2012-05-24	2012-05-24			-8.86	EUR	free time	entertainment	\N	t
3608	db	2012-05-25	2012-05-25			-18.95	EUR	living	food	\N	t
3607	db	2012-05-25	2012-05-25			-16.40	EUR	free time	going out	\N	t
3606	db	2012-05-25	2012-05-25			-15.93	EUR	mobility	gas	\N	t
3600	db	2012-05-25	2012-05-25			-20.00	EUR	other	cash	\N	t
3635	db	2012-05-26	2012-05-26			-2.86	EUR	health	wellness	\N	t
3634	db	2012-05-26	2012-05-26			-12.65	EUR	free time	going out	\N	t
3676	db	2012-05-28	2012-05-28			-3.97	EUR	living	food	\N	t
3702	db	2012-05-29	2012-05-29			-1.88	EUR	free time	hobbies	\N	t
3728	db	2012-05-30	2012-05-30			-8.30	EUR	free time	sport	\N	t
3755	db	2012-05-31	2012-05-31			-0.17	EUR	living	food	\N	t
3754	db	2012-05-31	2012-05-31			-1.97	EUR	free time	entertainment	\N	t
3786	db	2012-06-01	2012-06-01			-10.00	EUR	house	phone	\N	t
3783	db	2012-06-01	2012-06-01			-5.77	EUR	living	food	\N	t
3782	db	2012-06-01	2012-06-01			-13.76	EUR	free time	going out	\N	t
3781	db	2012-06-01	2012-06-01			-16.36	EUR	mobility	gas	\N	t
3775	db	2012-06-01	2012-06-01			-20.00	EUR	other	cash	\N	t
3812	db	2012-06-02	2012-06-02			-10.00	EUR	house	electricity	\N	t
3810	db	2012-06-02	2012-06-02			-10.29	EUR	health	wellness	\N	t
3809	db	2012-06-02	2012-06-02			-13.41	EUR	free time	going out	\N	t
3838	db	2012-06-03	2012-06-03			-10.00	EUR	house	internet	\N	t
3864	db	2012-06-04	2012-06-04			-250.00	EUR	house	rent	\N	t
3851	db	2012-06-04	2012-06-04			-6.36	EUR	living	food	\N	t
3890	db	2012-06-05	2012-06-05			-10.00	EUR	finance	costs and fees	\N	t
3877	db	2012-06-05	2012-06-05			-1.64	EUR	free time	hobbies	\N	t
3916	db	2012-06-06	2012-06-06			-50.00	EUR	finance	insurance	\N	t
3903	db	2012-06-06	2012-06-06			-7.42	EUR	free time	sport	\N	t
3942	db	2012-06-07	2012-06-07			-65.68	EUR	health	doctor visits	\N	t
3930	db	2012-06-07	2012-06-07			-5.97	EUR	living	food	\N	t
3929	db	2012-06-07	2012-06-07			-0.92	EUR	free time	entertainment	\N	t
3968	db	2012-06-08	2012-06-08			1000.00	EUR	work and training	salary	\N	t
3958	db	2012-06-08	2012-06-08			-7.79	EUR	living	food	\N	t
3957	db	2012-06-08	2012-06-08			-16.83	EUR	free time	going out	\N	t
3956	db	2012-06-08	2012-06-08			-8.78	EUR	mobility	gas	\N	t
3950	db	2012-06-08	2012-06-08			-20.00	EUR	other	cash	\N	t
3985	db	2012-06-09	2012-06-09			-2.30	EUR	health	wellness	\N	t
3984	db	2012-06-09	2012-06-09			-11.60	EUR	free time	going out	\N	t
4019	db	2012-06-10	2012-06-10			-55.40	EUR	living	pets	\N	t
4026	db	2012-06-11	2012-06-11			-7.38	EUR	living	food	\N	t
4052	db	2012-06-12	2012-06-12			-9.95	EUR	free time	hobbies	\N	t
4078	db	2012-06-13	2012-06-13			-0.89	EUR	free time	sport	\N	t
4105	db	2012-06-14	2012-06-14			-3.62	EUR	living	food	\N	t
4104	db	2012-06-14	2012-06-14			-0.16	EUR	free time	entertainment	\N	t
4145	db	2012-06-15	2012-06-15			-5.30	EUR	living	household	\N	t
4133	db	2012-06-15	2012-06-15			-15.49	EUR	living	food	\N	t
4132	db	2012-06-15	2012-06-15			-13.42	EUR	free time	going out	\N	t
4131	db	2012-06-15	2012-06-15			-13.27	EUR	mobility	gas	\N	t
4125	db	2012-06-15	2012-06-15			-20.00	EUR	other	cash	\N	t
4160	db	2012-06-16	2012-06-16			-2.14	EUR	health	wellness	\N	t
4159	db	2012-06-16	2012-06-16			-16.05	EUR	free time	going out	\N	t
4201	db	2012-06-18	2012-06-18			-7.19	EUR	living	food	\N	t
4227	db	2012-06-19	2012-06-19			-5.70	EUR	free time	hobbies	\N	t
4272	db	2012-06-20	2012-06-20			-40.84	EUR	free time	gadgets	\N	t
4271	db	2012-06-20	2012-06-20			-4.31	EUR	living	clothes	\N	t
4253	db	2012-06-20	2012-06-20			-2.22	EUR	free time	sport	\N	t
4280	db	2012-06-21	2012-06-21			-5.51	EUR	living	food	\N	t
4279	db	2012-06-21	2012-06-21			-0.45	EUR	free time	entertainment	\N	t
4308	db	2012-06-22	2012-06-22			-0.15	EUR	living	food	\N	t
4307	db	2012-06-22	2012-06-22			-19.24	EUR	free time	going out	\N	t
4306	db	2012-06-22	2012-06-22			-0.88	EUR	mobility	gas	\N	t
4300	db	2012-06-22	2012-06-22			-20.00	EUR	other	cash	\N	t
4335	db	2012-06-23	2012-06-23			-1.64	EUR	health	wellness	\N	t
4334	db	2012-06-23	2012-06-23			-10.86	EUR	free time	going out	\N	t
4376	db	2012-06-25	2012-06-25			-0.86	EUR	living	food	\N	t
4402	db	2012-06-26	2012-06-26			-2.21	EUR	free time	hobbies	\N	t
4428	db	2012-06-27	2012-06-27			-3.66	EUR	free time	sport	\N	t
4455	db	2012-06-28	2012-06-28			-2.65	EUR	living	food	\N	t
4454	db	2012-06-28	2012-06-28			-1.85	EUR	free time	entertainment	\N	t
4498	db	2012-06-29	2012-06-29			-328.66	EUR	free time	travel	\N	t
4483	db	2012-06-29	2012-06-29			-3.67	EUR	living	food	\N	t
4482	db	2012-06-29	2012-06-29			-7.84	EUR	free time	going out	\N	t
4481	db	2012-06-29	2012-06-29			-15.21	EUR	mobility	gas	\N	t
4475	db	2012-06-29	2012-06-29			-20.00	EUR	other	cash	\N	t
4510	db	2012-06-30	2012-06-30			-5.10	EUR	health	wellness	\N	t
4509	db	2012-06-30	2012-06-30			-4.67	EUR	free time	going out	\N	t
4536	db	2012-07-01	2012-07-01			-10.00	EUR	house	phone	\N	t
4562	db	2012-07-02	2012-07-02			-10.00	EUR	house	electricity	\N	t
4551	db	2012-07-02	2012-07-02			-5.59	EUR	living	food	\N	t
4588	db	2012-07-03	2012-07-03			-10.00	EUR	house	internet	\N	t
4577	db	2012-07-03	2012-07-03			-9.05	EUR	free time	hobbies	\N	t
4614	db	2012-07-04	2012-07-04			-250.00	EUR	house	rent	\N	t
4603	db	2012-07-04	2012-07-04			-4.24	EUR	free time	sport	\N	t
4640	db	2012-07-05	2012-07-05			-10.00	EUR	finance	costs and fees	\N	t
4630	db	2012-07-05	2012-07-05			-4.42	EUR	living	food	\N	t
4629	db	2012-07-05	2012-07-05			-8.06	EUR	free time	entertainment	\N	t
4666	db	2012-07-06	2012-07-06			-50.00	EUR	finance	insurance	\N	t
4658	db	2012-07-06	2012-07-06			-4.35	EUR	living	food	\N	t
4657	db	2012-07-06	2012-07-06			-6.23	EUR	free time	going out	\N	t
4656	db	2012-07-06	2012-07-06			-6.11	EUR	mobility	gas	\N	t
4650	db	2012-07-06	2012-07-06			-20.00	EUR	other	cash	\N	t
4692	db	2012-07-07	2012-07-07			-49.80	EUR	health	doctor visits	\N	t
4685	db	2012-07-07	2012-07-07			-17.77	EUR	health	wellness	\N	t
4684	db	2012-07-07	2012-07-07			-2.79	EUR	free time	going out	\N	t
4718	db	2012-07-08	2012-07-08			1000.00	EUR	work and training	salary	\N	t
4726	db	2012-07-09	2012-07-09			-6.52	EUR	living	food	\N	t
4769	db	2012-07-10	2012-07-10			-19.56	EUR	living	pets	\N	t
4752	db	2012-07-10	2012-07-10			-7.34	EUR	free time	hobbies	\N	t
4778	db	2012-07-11	2012-07-11			-5.54	EUR	free time	sport	\N	t
4805	db	2012-07-12	2012-07-12			-3.53	EUR	living	food	\N	t
4804	db	2012-07-12	2012-07-12			-8.06	EUR	free time	entertainment	\N	t
4833	db	2012-07-13	2012-07-13			-3.27	EUR	living	food	\N	t
4832	db	2012-07-13	2012-07-13			-13.99	EUR	free time	going out	\N	t
4831	db	2012-07-13	2012-07-13			-10.62	EUR	mobility	gas	\N	t
4825	db	2012-07-13	2012-07-13			-20.00	EUR	other	cash	\N	t
4860	db	2012-07-14	2012-07-14			-16.30	EUR	health	wellness	\N	t
4859	db	2012-07-14	2012-07-14			-13.94	EUR	free time	going out	\N	t
4895	db	2012-07-15	2012-07-15			-44.19	EUR	living	household	\N	t
4901	db	2012-07-16	2012-07-16			-9.87	EUR	living	food	\N	t
4927	db	2012-07-17	2012-07-17			-2.63	EUR	free time	hobbies	\N	t
4953	db	2012-07-18	2012-07-18			-7.99	EUR	free time	sport	\N	t
4980	db	2012-07-19	2012-07-19			-8.90	EUR	living	food	\N	t
4979	db	2012-07-19	2012-07-19			-3.43	EUR	free time	entertainment	\N	t
5022	db	2012-07-20	2012-07-20			-2.26	EUR	free time	gadgets	\N	t
5021	db	2012-07-20	2012-07-20			-29.61	EUR	living	clothes	\N	t
5008	db	2012-07-20	2012-07-20			-3.08	EUR	living	food	\N	t
5007	db	2012-07-20	2012-07-20			-0.38	EUR	free time	going out	\N	t
5006	db	2012-07-20	2012-07-20			-10.58	EUR	mobility	gas	\N	t
5000	db	2012-07-20	2012-07-20			-20.00	EUR	other	cash	\N	t
5035	db	2012-07-21	2012-07-21			-4.80	EUR	health	wellness	\N	t
5034	db	2012-07-21	2012-07-21			-16.04	EUR	free time	going out	\N	t
5076	db	2012-07-23	2012-07-23			-7.91	EUR	living	food	\N	t
5102	db	2012-07-24	2012-07-24			-8.36	EUR	free time	hobbies	\N	t
5128	db	2012-07-25	2012-07-25			-6.31	EUR	free time	sport	\N	t
5155	db	2012-07-26	2012-07-26			-1.51	EUR	living	food	\N	t
5154	db	2012-07-26	2012-07-26			-4.07	EUR	free time	entertainment	\N	t
5183	db	2012-07-27	2012-07-27			-15.58	EUR	living	food	\N	t
5182	db	2012-07-27	2012-07-27			-1.60	EUR	free time	going out	\N	t
5181	db	2012-07-27	2012-07-27			-10.51	EUR	mobility	gas	\N	t
5175	db	2012-07-27	2012-07-27			-20.00	EUR	other	cash	\N	t
5210	db	2012-07-28	2012-07-28			-0.70	EUR	health	wellness	\N	t
5209	db	2012-07-28	2012-07-28			-8.31	EUR	free time	going out	\N	t
5251	db	2012-07-30	2012-07-30			-1.39	EUR	living	food	\N	t
5277	db	2012-07-31	2012-07-31			-0.04	EUR	free time	hobbies	\N	t
5311	db	2012-08-01	2012-08-01			-10.00	EUR	house	phone	\N	t
5303	db	2012-08-01	2012-08-01			-3.29	EUR	free time	sport	\N	t
5337	db	2012-08-02	2012-08-02			-10.00	EUR	house	electricity	\N	t
5330	db	2012-08-02	2012-08-02			-5.87	EUR	living	food	\N	t
5329	db	2012-08-02	2012-08-02			-2.15	EUR	free time	entertainment	\N	t
5363	db	2012-08-03	2012-08-03			-10.00	EUR	house	internet	\N	t
5358	db	2012-08-03	2012-08-03			-0.84	EUR	living	food	\N	t
5357	db	2012-08-03	2012-08-03			-7.60	EUR	free time	going out	\N	t
5356	db	2012-08-03	2012-08-03			-2.22	EUR	mobility	gas	\N	t
5350	db	2012-08-03	2012-08-03			-20.00	EUR	other	cash	\N	t
5389	db	2012-08-04	2012-08-04			-250.00	EUR	house	rent	\N	t
5385	db	2012-08-04	2012-08-04			-15.27	EUR	health	wellness	\N	t
5384	db	2012-08-04	2012-08-04			-0.96	EUR	free time	going out	\N	t
5415	db	2012-08-05	2012-08-05			-10.00	EUR	finance	costs and fees	\N	t
5441	db	2012-08-06	2012-08-06			-50.00	EUR	finance	insurance	\N	t
5426	db	2012-08-06	2012-08-06			-0.59	EUR	living	food	\N	t
5467	db	2012-08-07	2012-08-07			-50.14	EUR	health	doctor visits	\N	t
5452	db	2012-08-07	2012-08-07			-6.40	EUR	free time	hobbies	\N	t
5493	db	2012-08-08	2012-08-08			1000.00	EUR	work and training	salary	\N	t
5478	db	2012-08-08	2012-08-08			-6.30	EUR	free time	sport	\N	t
5505	db	2012-08-09	2012-08-09			-2.34	EUR	living	food	\N	t
5504	db	2012-08-09	2012-08-09			-6.02	EUR	free time	entertainment	\N	t
5544	db	2012-08-10	2012-08-10			-13.45	EUR	living	pets	\N	t
5533	db	2012-08-10	2012-08-10			-3.92	EUR	living	food	\N	t
5532	db	2012-08-10	2012-08-10			-19.07	EUR	free time	going out	\N	t
5531	db	2012-08-10	2012-08-10			-6.18	EUR	mobility	gas	\N	t
5525	db	2012-08-10	2012-08-10			-20.00	EUR	other	cash	\N	t
5560	db	2012-08-11	2012-08-11			-3.08	EUR	health	wellness	\N	t
5559	db	2012-08-11	2012-08-11			-5.59	EUR	free time	going out	\N	t
5601	db	2012-08-13	2012-08-13			-9.95	EUR	living	food	\N	t
5627	db	2012-08-14	2012-08-14			-9.22	EUR	free time	hobbies	\N	t
5670	db	2012-08-15	2012-08-15			-40.69	EUR	living	household	\N	t
5653	db	2012-08-15	2012-08-15			-8.93	EUR	free time	sport	\N	t
5680	db	2012-08-16	2012-08-16			-8.23	EUR	living	food	\N	t
5679	db	2012-08-16	2012-08-16			-3.78	EUR	free time	entertainment	\N	t
5708	db	2012-08-17	2012-08-17			-11.61	EUR	living	food	\N	t
5707	db	2012-08-17	2012-08-17			-10.00	EUR	free time	going out	\N	t
5706	db	2012-08-17	2012-08-17			-11.39	EUR	mobility	gas	\N	t
5700	db	2012-08-17	2012-08-17			-20.00	EUR	other	cash	\N	t
5735	db	2012-08-18	2012-08-18			-15.66	EUR	health	wellness	\N	t
5734	db	2012-08-18	2012-08-18			-16.65	EUR	free time	going out	\N	t
5797	db	2012-08-20	2012-08-20			-26.72	EUR	free time	gadgets	\N	t
5796	db	2012-08-20	2012-08-20			-17.53	EUR	living	clothes	\N	t
5776	db	2012-08-20	2012-08-20			-4.42	EUR	living	food	\N	t
5802	db	2012-08-21	2012-08-21			-9.07	EUR	free time	hobbies	\N	t
5828	db	2012-08-22	2012-08-22			-3.71	EUR	free time	sport	\N	t
5855	db	2012-08-23	2012-08-23			-3.20	EUR	living	food	\N	t
5854	db	2012-08-23	2012-08-23			-2.30	EUR	free time	entertainment	\N	t
5883	db	2012-08-24	2012-08-24			-9.26	EUR	living	food	\N	t
5882	db	2012-08-24	2012-08-24			-19.96	EUR	free time	going out	\N	t
5881	db	2012-08-24	2012-08-24			-17.96	EUR	mobility	gas	\N	t
5875	db	2012-08-24	2012-08-24			-20.00	EUR	other	cash	\N	t
5910	db	2012-08-25	2012-08-25			-6.32	EUR	health	wellness	\N	t
5909	db	2012-08-25	2012-08-25			-15.42	EUR	free time	going out	\N	t
5951	db	2012-08-27	2012-08-27			-7.27	EUR	living	food	\N	t
5977	db	2012-08-28	2012-08-28			-4.84	EUR	free time	hobbies	\N	t
6003	db	2012-08-29	2012-08-29			-3.09	EUR	free time	sport	\N	t
6030	db	2012-08-30	2012-08-30			-3.53	EUR	living	food	\N	t
6029	db	2012-08-30	2012-08-30			-7.27	EUR	free time	entertainment	\N	t
6058	db	2012-08-31	2012-08-31			-4.47	EUR	living	food	\N	t
6057	db	2012-08-31	2012-08-31			-7.14	EUR	free time	going out	\N	t
6056	db	2012-08-31	2012-08-31			-2.99	EUR	mobility	gas	\N	t
6050	db	2012-08-31	2012-08-31			-20.00	EUR	other	cash	\N	t
6086	db	2012-09-01	2012-09-01			-10.00	EUR	house	phone	\N	t
6085	db	2012-09-01	2012-09-01			-3.31	EUR	health	wellness	\N	t
6084	db	2012-09-01	2012-09-01			-1.57	EUR	free time	going out	\N	t
6112	db	2012-09-02	2012-09-02			-10.00	EUR	house	electricity	\N	t
6138	db	2012-09-03	2012-09-03			-10.00	EUR	house	internet	\N	t
6126	db	2012-09-03	2012-09-03			-2.10	EUR	living	food	\N	t
6164	db	2012-09-04	2012-09-04			-250.00	EUR	house	rent	\N	t
6152	db	2012-09-04	2012-09-04			-6.80	EUR	free time	hobbies	\N	t
6190	db	2012-09-05	2012-09-05			-10.00	EUR	finance	costs and fees	\N	t
6178	db	2012-09-05	2012-09-05			-9.14	EUR	free time	sport	\N	t
6216	db	2012-09-06	2012-09-06			-50.00	EUR	finance	insurance	\N	t
6205	db	2012-09-06	2012-09-06			-3.45	EUR	living	food	\N	t
6204	db	2012-09-06	2012-09-06			-1.59	EUR	free time	entertainment	\N	t
6242	db	2012-09-07	2012-09-07			-27.85	EUR	health	doctor visits	\N	t
6233	db	2012-09-07	2012-09-07			-14.81	EUR	living	food	\N	t
6232	db	2012-09-07	2012-09-07			-7.22	EUR	free time	going out	\N	t
6231	db	2012-09-07	2012-09-07			-6.50	EUR	mobility	gas	\N	t
6225	db	2012-09-07	2012-09-07			-20.00	EUR	other	cash	\N	t
6268	db	2012-09-08	2012-09-08			1000.00	EUR	work and training	salary	\N	t
6260	db	2012-09-08	2012-09-08			-10.17	EUR	health	wellness	\N	t
6259	db	2012-09-08	2012-09-08			-8.88	EUR	free time	going out	\N	t
6319	db	2012-09-10	2012-09-10			-4.37	EUR	living	pets	\N	t
6301	db	2012-09-10	2012-09-10			-6.90	EUR	living	food	\N	t
6327	db	2012-09-11	2012-09-11			-2.96	EUR	free time	hobbies	\N	t
6353	db	2012-09-12	2012-09-12			-3.33	EUR	free time	sport	\N	t
6380	db	2012-09-13	2012-09-13			-1.77	EUR	living	food	\N	t
6379	db	2012-09-13	2012-09-13			-6.27	EUR	free time	entertainment	\N	t
6408	db	2012-09-14	2012-09-14			-10.40	EUR	living	food	\N	t
6407	db	2012-09-14	2012-09-14			-0.54	EUR	free time	going out	\N	t
6406	db	2012-09-14	2012-09-14			-16.80	EUR	mobility	gas	\N	t
6400	db	2012-09-14	2012-09-14			-20.00	EUR	other	cash	\N	t
6445	db	2012-09-15	2012-09-15			-52.75	EUR	living	household	\N	t
6435	db	2012-09-15	2012-09-15			-9.97	EUR	health	wellness	\N	t
6434	db	2012-09-15	2012-09-15			-9.01	EUR	free time	going out	\N	t
6476	db	2012-09-17	2012-09-17			-9.23	EUR	living	food	\N	t
6502	db	2012-09-18	2012-09-18			-7.08	EUR	free time	hobbies	\N	t
6528	db	2012-09-19	2012-09-19			-9.72	EUR	free time	sport	\N	t
6572	db	2012-09-20	2012-09-20			-5.85	EUR	free time	gadgets	\N	t
6571	db	2012-09-20	2012-09-20			-67.86	EUR	living	clothes	\N	t
6555	db	2012-09-20	2012-09-20			-1.21	EUR	living	food	\N	t
6554	db	2012-09-20	2012-09-20			-3.11	EUR	free time	entertainment	\N	t
6583	db	2012-09-21	2012-09-21			-19.48	EUR	living	food	\N	t
6582	db	2012-09-21	2012-09-21			-4.85	EUR	free time	going out	\N	t
6581	db	2012-09-21	2012-09-21			-2.41	EUR	mobility	gas	\N	t
6575	db	2012-09-21	2012-09-21			-20.00	EUR	other	cash	\N	t
6610	db	2012-09-22	2012-09-22			-6.85	EUR	health	wellness	\N	t
6609	db	2012-09-22	2012-09-22			-13.44	EUR	free time	going out	\N	t
6651	db	2012-09-24	2012-09-24			-9.63	EUR	living	food	\N	t
6677	db	2012-09-25	2012-09-25			-6.43	EUR	free time	hobbies	\N	t
6703	db	2012-09-26	2012-09-26			-0.60	EUR	free time	sport	\N	t
6730	db	2012-09-27	2012-09-27			-6.40	EUR	living	food	\N	t
6729	db	2012-09-27	2012-09-27			-6.04	EUR	free time	entertainment	\N	t
6758	db	2012-09-28	2012-09-28			-0.61	EUR	living	food	\N	t
6757	db	2012-09-28	2012-09-28			-10.53	EUR	free time	going out	\N	t
6756	db	2012-09-28	2012-09-28			-8.88	EUR	mobility	gas	\N	t
6750	db	2012-09-28	2012-09-28			-20.00	EUR	other	cash	\N	t
6785	db	2012-09-29	2012-09-29			-2.94	EUR	health	wellness	\N	t
6784	db	2012-09-29	2012-09-29			-11.98	EUR	free time	going out	\N	t
6836	db	2012-10-01	2012-10-01			-10.00	EUR	house	phone	\N	t
6826	db	2012-10-01	2012-10-01			-4.49	EUR	living	food	\N	t
6862	db	2012-10-02	2012-10-02			-10.00	EUR	house	electricity	\N	t
6852	db	2012-10-02	2012-10-02			-8.24	EUR	free time	hobbies	\N	t
6888	db	2012-10-03	2012-10-03			-10.00	EUR	house	internet	\N	t
6878	db	2012-10-03	2012-10-03			-8.03	EUR	free time	sport	\N	t
6914	db	2012-10-04	2012-10-04			-250.00	EUR	house	rent	\N	t
6905	db	2012-10-04	2012-10-04			-9.84	EUR	living	food	\N	t
6904	db	2012-10-04	2012-10-04			-6.61	EUR	free time	entertainment	\N	t
6940	db	2012-10-05	2012-10-05			-10.00	EUR	finance	costs and fees	\N	t
6933	db	2012-10-05	2012-10-05			-18.41	EUR	living	food	\N	t
6932	db	2012-10-05	2012-10-05			-6.82	EUR	free time	going out	\N	t
6931	db	2012-10-05	2012-10-05			-3.01	EUR	mobility	gas	\N	t
6925	db	2012-10-05	2012-10-05			-20.00	EUR	other	cash	\N	t
6966	db	2012-10-06	2012-10-06			-50.00	EUR	finance	insurance	\N	t
6960	db	2012-10-06	2012-10-06			-18.66	EUR	health	wellness	\N	t
6959	db	2012-10-06	2012-10-06			-5.92	EUR	free time	going out	\N	t
6992	db	2012-10-07	2012-10-07			-99.14	EUR	health	doctor visits	\N	t
7018	db	2012-10-08	2012-10-08			1000.00	EUR	work and training	salary	\N	t
7001	db	2012-10-08	2012-10-08			-5.90	EUR	living	food	\N	t
7027	db	2012-10-09	2012-10-09			-3.29	EUR	free time	hobbies	\N	t
7069	db	2012-10-10	2012-10-10			-50.75	EUR	living	pets	\N	t
7053	db	2012-10-10	2012-10-10			-2.35	EUR	free time	sport	\N	t
7080	db	2012-10-11	2012-10-11			-3.09	EUR	living	food	\N	t
7079	db	2012-10-11	2012-10-11			-1.91	EUR	free time	entertainment	\N	t
7108	db	2012-10-12	2012-10-12			-16.63	EUR	living	food	\N	t
7107	db	2012-10-12	2012-10-12			-8.46	EUR	free time	going out	\N	t
7106	db	2012-10-12	2012-10-12			-9.04	EUR	mobility	gas	\N	t
7100	db	2012-10-12	2012-10-12			-20.00	EUR	other	cash	\N	t
7135	db	2012-10-13	2012-10-13			-9.27	EUR	health	wellness	\N	t
7134	db	2012-10-13	2012-10-13			-10.73	EUR	free time	going out	\N	t
7195	db	2012-10-15	2012-10-15			-19.12	EUR	living	household	\N	t
7176	db	2012-10-15	2012-10-15			-4.44	EUR	living	food	\N	t
7202	db	2012-10-16	2012-10-16			-5.36	EUR	free time	hobbies	\N	t
7228	db	2012-10-17	2012-10-17			-2.00	EUR	free time	sport	\N	t
7255	db	2012-10-18	2012-10-18			-2.04	EUR	living	food	\N	t
7254	db	2012-10-18	2012-10-18			-0.59	EUR	free time	entertainment	\N	t
7283	db	2012-10-19	2012-10-19			-4.82	EUR	living	food	\N	t
7282	db	2012-10-19	2012-10-19			-17.26	EUR	free time	going out	\N	t
7281	db	2012-10-19	2012-10-19			-5.56	EUR	mobility	gas	\N	t
7275	db	2012-10-19	2012-10-19			-20.00	EUR	other	cash	\N	t
7322	db	2012-10-20	2012-10-20			-0.04	EUR	free time	gadgets	\N	t
7321	db	2012-10-20	2012-10-20			-11.39	EUR	living	clothes	\N	t
7310	db	2012-10-20	2012-10-20			-1.32	EUR	health	wellness	\N	t
7309	db	2012-10-20	2012-10-20			-17.08	EUR	free time	going out	\N	t
7351	db	2012-10-22	2012-10-22			-4.15	EUR	living	food	\N	t
7377	db	2012-10-23	2012-10-23			-5.92	EUR	free time	hobbies	\N	t
7403	db	2012-10-24	2012-10-24			-3.52	EUR	free time	sport	\N	t
7430	db	2012-10-25	2012-10-25			-2.27	EUR	living	food	\N	t
7429	db	2012-10-25	2012-10-25			-4.26	EUR	free time	entertainment	\N	t
7458	db	2012-10-26	2012-10-26			-19.15	EUR	living	food	\N	t
7457	db	2012-10-26	2012-10-26			-6.87	EUR	free time	going out	\N	t
7456	db	2012-10-26	2012-10-26			-17.41	EUR	mobility	gas	\N	t
7450	db	2012-10-26	2012-10-26			-20.00	EUR	other	cash	\N	t
7485	db	2012-10-27	2012-10-27			-19.99	EUR	health	wellness	\N	t
7484	db	2012-10-27	2012-10-27			-16.64	EUR	free time	going out	\N	t
7526	db	2012-10-29	2012-10-29			-4.48	EUR	living	food	\N	t
7552	db	2012-10-30	2012-10-30			-2.63	EUR	free time	hobbies	\N	t
7578	db	2012-10-31	2012-10-31			-8.97	EUR	free time	sport	\N	t
7611	db	2012-11-01	2012-11-01			-10.00	EUR	house	phone	\N	t
7605	db	2012-11-01	2012-11-01			-4.34	EUR	living	food	\N	t
7604	db	2012-11-01	2012-11-01			-1.90	EUR	free time	entertainment	\N	t
7637	db	2012-11-02	2012-11-02			-10.00	EUR	house	electricity	\N	t
7633	db	2012-11-02	2012-11-02			-1.52	EUR	living	food	\N	t
7632	db	2012-11-02	2012-11-02			-11.31	EUR	free time	going out	\N	t
7631	db	2012-11-02	2012-11-02			-9.61	EUR	mobility	gas	\N	t
7625	db	2012-11-02	2012-11-02			-20.00	EUR	other	cash	\N	t
7663	db	2012-11-03	2012-11-03			-10.00	EUR	house	internet	\N	t
7660	db	2012-11-03	2012-11-03			-13.19	EUR	health	wellness	\N	t
7659	db	2012-11-03	2012-11-03			-13.48	EUR	free time	going out	\N	t
7689	db	2012-11-04	2012-11-04			-250.00	EUR	house	rent	\N	t
7715	db	2012-11-05	2012-11-05			-10.00	EUR	finance	costs and fees	\N	t
7701	db	2012-11-05	2012-11-05			-6.07	EUR	living	food	\N	t
7741	db	2012-11-06	2012-11-06			-50.00	EUR	finance	insurance	\N	t
7727	db	2012-11-06	2012-11-06			-1.10	EUR	free time	hobbies	\N	t
7767	db	2012-11-07	2012-11-07			-93.70	EUR	health	doctor visits	\N	t
7753	db	2012-11-07	2012-11-07			-2.84	EUR	free time	sport	\N	t
7793	db	2012-11-08	2012-11-08			1000.00	EUR	work and training	salary	\N	t
7780	db	2012-11-08	2012-11-08			-7.50	EUR	living	food	\N	t
7779	db	2012-11-08	2012-11-08			-3.77	EUR	free time	entertainment	\N	t
7808	db	2012-11-09	2012-11-09			-3.72	EUR	living	food	\N	t
7807	db	2012-11-09	2012-11-09			-7.58	EUR	free time	going out	\N	t
7806	db	2012-11-09	2012-11-09			-19.55	EUR	mobility	gas	\N	t
7800	db	2012-11-09	2012-11-09			-20.00	EUR	other	cash	\N	t
7844	db	2012-11-10	2012-11-10			-33.25	EUR	living	pets	\N	t
7835	db	2012-11-10	2012-11-10			-16.06	EUR	health	wellness	\N	t
7834	db	2012-11-10	2012-11-10			-4.33	EUR	free time	going out	\N	t
7876	db	2012-11-12	2012-11-12			-1.30	EUR	living	food	\N	t
7902	db	2012-11-13	2012-11-13			-8.53	EUR	free time	hobbies	\N	t
7928	db	2012-11-14	2012-11-14			-7.00	EUR	free time	sport	\N	t
7970	db	2012-11-15	2012-11-15			-38.20	EUR	living	household	\N	t
7955	db	2012-11-15	2012-11-15			-8.27	EUR	living	food	\N	t
7954	db	2012-11-15	2012-11-15			-5.11	EUR	free time	entertainment	\N	t
7983	db	2012-11-16	2012-11-16			-15.82	EUR	living	food	\N	t
7982	db	2012-11-16	2012-11-16			-0.63	EUR	free time	going out	\N	t
7981	db	2012-11-16	2012-11-16			-0.70	EUR	mobility	gas	\N	t
7975	db	2012-11-16	2012-11-16			-20.00	EUR	other	cash	\N	t
8010	db	2012-11-17	2012-11-17			-18.12	EUR	health	wellness	\N	t
8009	db	2012-11-17	2012-11-17			-13.72	EUR	free time	going out	\N	t
8051	db	2012-11-19	2012-11-19			-2.83	EUR	living	food	\N	t
8097	db	2012-11-20	2012-11-20			-78.63	EUR	free time	gadgets	\N	t
8096	db	2012-11-20	2012-11-20			-59.96	EUR	living	clothes	\N	t
8077	db	2012-11-20	2012-11-20			-3.61	EUR	free time	hobbies	\N	t
8103	db	2012-11-21	2012-11-21			-3.32	EUR	free time	sport	\N	t
8130	db	2012-11-22	2012-11-22			-6.19	EUR	living	food	\N	t
8129	db	2012-11-22	2012-11-22			-2.00	EUR	free time	entertainment	\N	t
8158	db	2012-11-23	2012-11-23			-8.00	EUR	living	food	\N	t
8157	db	2012-11-23	2012-11-23			-10.97	EUR	free time	going out	\N	t
8156	db	2012-11-23	2012-11-23			-2.56	EUR	mobility	gas	\N	t
8150	db	2012-11-23	2012-11-23			-20.00	EUR	other	cash	\N	t
8185	db	2012-11-24	2012-11-24			-16.76	EUR	health	wellness	\N	t
8184	db	2012-11-24	2012-11-24			-10.86	EUR	free time	going out	\N	t
8226	db	2012-11-26	2012-11-26			-7.60	EUR	living	food	\N	t
8252	db	2012-11-27	2012-11-27			-1.12	EUR	free time	hobbies	\N	t
8278	db	2012-11-28	2012-11-28			-0.02	EUR	free time	sport	\N	t
8305	db	2012-11-29	2012-11-29			-5.34	EUR	living	food	\N	t
8304	db	2012-11-29	2012-11-29			-8.06	EUR	free time	entertainment	\N	t
8333	db	2012-11-30	2012-11-30			-10.70	EUR	living	food	\N	t
8332	db	2012-11-30	2012-11-30			-19.07	EUR	free time	going out	\N	t
8331	db	2012-11-30	2012-11-30			-9.28	EUR	mobility	gas	\N	t
8325	db	2012-11-30	2012-11-30			-20.00	EUR	other	cash	\N	t
8361	db	2012-12-01	2012-12-01			-10.00	EUR	house	phone	\N	t
8360	db	2012-12-01	2012-12-01			-4.89	EUR	health	wellness	\N	t
8359	db	2012-12-01	2012-12-01			-7.79	EUR	free time	going out	\N	t
8387	db	2012-12-02	2012-12-02			-10.00	EUR	house	electricity	\N	t
8413	db	2012-12-03	2012-12-03			-10.00	EUR	house	internet	\N	t
8401	db	2012-12-03	2012-12-03			-9.00	EUR	living	food	\N	t
8439	db	2012-12-04	2012-12-04			-250.00	EUR	house	rent	\N	t
8427	db	2012-12-04	2012-12-04			-0.02	EUR	free time	hobbies	\N	t
8465	db	2012-12-05	2012-12-05			-10.00	EUR	finance	costs and fees	\N	t
8453	db	2012-12-05	2012-12-05			-6.69	EUR	free time	sport	\N	t
8491	db	2012-12-06	2012-12-06			-50.00	EUR	finance	insurance	\N	t
8480	db	2012-12-06	2012-12-06			-8.94	EUR	living	food	\N	t
8479	db	2012-12-06	2012-12-06			-4.45	EUR	free time	entertainment	\N	t
8517	db	2012-12-07	2012-12-07			-42.17	EUR	health	doctor visits	\N	t
8508	db	2012-12-07	2012-12-07			-6.35	EUR	living	food	\N	t
8507	db	2012-12-07	2012-12-07			-7.56	EUR	free time	going out	\N	t
8506	db	2012-12-07	2012-12-07			-16.24	EUR	mobility	gas	\N	t
8500	db	2012-12-07	2012-12-07			-20.00	EUR	other	cash	\N	t
8543	db	2012-12-08	2012-12-08			1000.00	EUR	work and training	salary	\N	t
8535	db	2012-12-08	2012-12-08			-11.81	EUR	health	wellness	\N	t
8534	db	2012-12-08	2012-12-08			-3.29	EUR	free time	going out	\N	t
8594	db	2012-12-10	2012-12-10			-2.22	EUR	living	pets	\N	t
8576	db	2012-12-10	2012-12-10			-0.28	EUR	living	food	\N	t
8602	db	2012-12-11	2012-12-11			-2.02	EUR	free time	hobbies	\N	t
8628	db	2012-12-12	2012-12-12			-8.53	EUR	free time	sport	\N	t
8655	db	2012-12-13	2012-12-13			-6.70	EUR	living	food	\N	t
8654	db	2012-12-13	2012-12-13			-3.26	EUR	free time	entertainment	\N	t
8683	db	2012-12-14	2012-12-14			-18.77	EUR	living	food	\N	t
8682	db	2012-12-14	2012-12-14			-13.07	EUR	free time	going out	\N	t
8681	db	2012-12-14	2012-12-14			-0.27	EUR	mobility	gas	\N	t
8675	db	2012-12-14	2012-12-14			-20.00	EUR	other	cash	\N	t
8720	db	2012-12-15	2012-12-15			-14.66	EUR	living	household	\N	t
8710	db	2012-12-15	2012-12-15			-12.55	EUR	health	wellness	\N	t
8709	db	2012-12-15	2012-12-15			-0.91	EUR	free time	going out	\N	t
8751	db	2012-12-17	2012-12-17			-5.27	EUR	living	food	\N	t
8777	db	2012-12-18	2012-12-18			-5.64	EUR	free time	hobbies	\N	t
8803	db	2012-12-19	2012-12-19			-8.29	EUR	free time	sport	\N	t
8847	db	2012-12-20	2012-12-20			-42.25	EUR	free time	gadgets	\N	t
8846	db	2012-12-20	2012-12-20			-14.19	EUR	living	clothes	\N	t
8830	db	2012-12-20	2012-12-20			-1.14	EUR	living	food	\N	t
8829	db	2012-12-20	2012-12-20			-5.17	EUR	free time	entertainment	\N	t
8874	db	2012-12-21	2012-12-21			-141.81	EUR	free time	presents	\N	t
8858	db	2012-12-21	2012-12-21			-1.60	EUR	living	food	\N	t
8857	db	2012-12-21	2012-12-21			-17.90	EUR	free time	going out	\N	t
8856	db	2012-12-21	2012-12-21			-17.02	EUR	mobility	gas	\N	t
8850	db	2012-12-21	2012-12-21			-20.00	EUR	other	cash	\N	t
8885	db	2012-12-22	2012-12-22			-3.53	EUR	health	wellness	\N	t
8884	db	2012-12-22	2012-12-22			-13.07	EUR	free time	going out	\N	t
8926	db	2012-12-24	2012-12-24			-0.91	EUR	living	food	\N	t
8952	db	2012-12-25	2012-12-25			-6.97	EUR	free time	hobbies	\N	t
8978	db	2012-12-26	2012-12-26			-3.67	EUR	free time	sport	\N	t
9005	db	2012-12-27	2012-12-27			-6.58	EUR	living	food	\N	t
9004	db	2012-12-27	2012-12-27			-0.18	EUR	free time	entertainment	\N	t
9033	db	2012-12-28	2012-12-28			-16.30	EUR	living	food	\N	t
9032	db	2012-12-28	2012-12-28			-17.22	EUR	free time	going out	\N	t
9031	db	2012-12-28	2012-12-28			-11.82	EUR	mobility	gas	\N	t
9025	db	2012-12-28	2012-12-28			-20.00	EUR	other	cash	\N	t
9060	db	2012-12-29	2012-12-29			-4.91	EUR	health	wellness	\N	t
9059	db	2012-12-29	2012-12-29			-11.29	EUR	free time	going out	\N	t
9101	db	2012-12-31	2012-12-31			-9.49	EUR	living	food	\N	t
9136	db	2013-01-01	2013-01-01			-10.00	EUR	house	phone	\N	t
9127	db	2013-01-01	2013-01-01			-6.75	EUR	free time	hobbies	\N	t
9162	db	2013-01-02	2013-01-02			-10.00	EUR	house	electricity	\N	t
9153	db	2013-01-02	2013-01-02			-8.02	EUR	free time	sport	\N	t
9188	db	2013-01-03	2013-01-03			-10.00	EUR	house	internet	\N	t
9180	db	2013-01-03	2013-01-03			-0.94	EUR	living	food	\N	t
9179	db	2013-01-03	2013-01-03			-0.83	EUR	free time	entertainment	\N	t
9214	db	2013-01-04	2013-01-04			-250.00	EUR	house	rent	\N	t
9208	db	2013-01-04	2013-01-04			-7.69	EUR	living	food	\N	t
9207	db	2013-01-04	2013-01-04			-11.67	EUR	free time	going out	\N	t
9206	db	2013-01-04	2013-01-04			-18.73	EUR	mobility	gas	\N	t
9200	db	2013-01-04	2013-01-04			-20.00	EUR	other	cash	\N	t
9240	db	2013-01-05	2013-01-05			-10.00	EUR	finance	costs and fees	\N	t
9235	db	2013-01-05	2013-01-05			-11.88	EUR	health	wellness	\N	t
9234	db	2013-01-05	2013-01-05			-18.34	EUR	free time	going out	\N	t
9266	db	2013-01-06	2013-01-06			-50.00	EUR	finance	insurance	\N	t
9292	db	2013-01-07	2013-01-07			-41.80	EUR	health	doctor visits	\N	t
9276	db	2013-01-07	2013-01-07			-1.40	EUR	living	food	\N	t
9318	db	2013-01-08	2013-01-08			1000.00	EUR	work and training	salary	\N	t
9302	db	2013-01-08	2013-01-08			-2.18	EUR	free time	hobbies	\N	t
9328	db	2013-01-09	2013-01-09			-7.10	EUR	free time	sport	\N	t
9369	db	2013-01-10	2013-01-10			-0.79	EUR	living	pets	\N	t
9355	db	2013-01-10	2013-01-10			-9.32	EUR	living	food	\N	t
9354	db	2013-01-10	2013-01-10			-7.52	EUR	free time	entertainment	\N	t
9383	db	2013-01-11	2013-01-11			-1.38	EUR	living	food	\N	t
9382	db	2013-01-11	2013-01-11			-9.58	EUR	free time	going out	\N	t
9381	db	2013-01-11	2013-01-11			-2.35	EUR	mobility	gas	\N	t
9375	db	2013-01-11	2013-01-11			-20.00	EUR	other	cash	\N	t
9410	db	2013-01-12	2013-01-12			-17.02	EUR	health	wellness	\N	t
9409	db	2013-01-12	2013-01-12			-10.12	EUR	free time	going out	\N	t
9451	db	2013-01-14	2013-01-14			-1.65	EUR	living	food	\N	t
9495	db	2013-01-15	2013-01-15			-6.24	EUR	living	household	\N	t
9477	db	2013-01-15	2013-01-15			-7.39	EUR	free time	hobbies	\N	t
9503	db	2013-01-16	2013-01-16			-7.67	EUR	free time	sport	\N	t
9530	db	2013-01-17	2013-01-17			-8.32	EUR	living	food	\N	t
9529	db	2013-01-17	2013-01-17			-5.95	EUR	free time	entertainment	\N	t
9558	db	2013-01-18	2013-01-18			-2.73	EUR	living	food	\N	t
9557	db	2013-01-18	2013-01-18			-15.55	EUR	free time	going out	\N	t
9556	db	2013-01-18	2013-01-18			-19.19	EUR	mobility	gas	\N	t
9550	db	2013-01-18	2013-01-18			-20.00	EUR	other	cash	\N	t
9585	db	2013-01-19	2013-01-19			-17.38	EUR	health	wellness	\N	t
9584	db	2013-01-19	2013-01-19			-8.85	EUR	free time	going out	\N	t
9622	db	2013-01-20	2013-01-20			-64.22	EUR	free time	gadgets	\N	t
9621	db	2013-01-20	2013-01-20			-75.88	EUR	living	clothes	\N	t
9626	db	2013-01-21	2013-01-21			-4.29	EUR	living	food	\N	t
9652	db	2013-01-22	2013-01-22			-7.90	EUR	free time	hobbies	\N	t
9678	db	2013-01-23	2013-01-23			-4.86	EUR	free time	sport	\N	t
9705	db	2013-01-24	2013-01-24			-2.42	EUR	living	food	\N	t
9704	db	2013-01-24	2013-01-24			-4.27	EUR	free time	entertainment	\N	t
9733	db	2013-01-25	2013-01-25			-11.43	EUR	living	food	\N	t
9732	db	2013-01-25	2013-01-25			-5.64	EUR	free time	going out	\N	t
9731	db	2013-01-25	2013-01-25			-17.05	EUR	mobility	gas	\N	t
9725	db	2013-01-25	2013-01-25			-20.00	EUR	other	cash	\N	t
9760	db	2013-01-26	2013-01-26			-12.88	EUR	health	wellness	\N	t
9759	db	2013-01-26	2013-01-26			-18.52	EUR	free time	going out	\N	t
9801	db	2013-01-28	2013-01-28			-2.68	EUR	living	food	\N	t
9827	db	2013-01-29	2013-01-29			-8.66	EUR	free time	hobbies	\N	t
9853	db	2013-01-30	2013-01-30			-6.02	EUR	free time	sport	\N	t
9880	db	2013-01-31	2013-01-31			-2.95	EUR	living	food	\N	t
9879	db	2013-01-31	2013-01-31			-2.98	EUR	free time	entertainment	\N	t
9911	db	2013-02-01	2013-02-01			-10.00	EUR	house	phone	\N	t
9908	db	2013-02-01	2013-02-01			-7.93	EUR	living	food	\N	t
9907	db	2013-02-01	2013-02-01			-10.55	EUR	free time	going out	\N	t
9906	db	2013-02-01	2013-02-01			-13.77	EUR	mobility	gas	\N	t
9900	db	2013-02-01	2013-02-01			-20.00	EUR	other	cash	\N	t
9937	db	2013-02-02	2013-02-02			-10.00	EUR	house	electricity	\N	t
9935	db	2013-02-02	2013-02-02			-10.24	EUR	health	wellness	\N	t
9934	db	2013-02-02	2013-02-02			-12.61	EUR	free time	going out	\N	t
9963	db	2013-02-03	2013-02-03			-10.00	EUR	house	internet	\N	t
9989	db	2013-02-04	2013-02-04			-250.00	EUR	house	rent	\N	t
9976	db	2013-02-04	2013-02-04			-0.77	EUR	living	food	\N	t
10015	db	2013-02-05	2013-02-05			-10.00	EUR	finance	costs and fees	\N	t
10002	db	2013-02-05	2013-02-05			-0.60	EUR	free time	hobbies	\N	t
10041	db	2013-02-06	2013-02-06			-50.00	EUR	finance	insurance	\N	t
10028	db	2013-02-06	2013-02-06			-4.71	EUR	free time	sport	\N	t
10067	db	2013-02-07	2013-02-07			-60.27	EUR	health	doctor visits	\N	t
10055	db	2013-02-07	2013-02-07			-5.32	EUR	living	food	\N	t
10054	db	2013-02-07	2013-02-07			-7.63	EUR	free time	entertainment	\N	t
10093	db	2013-02-08	2013-02-08			1000.00	EUR	work and training	salary	\N	t
10083	db	2013-02-08	2013-02-08			-13.44	EUR	living	food	\N	t
10082	db	2013-02-08	2013-02-08			-14.97	EUR	free time	going out	\N	t
10081	db	2013-02-08	2013-02-08			-0.59	EUR	mobility	gas	\N	t
10075	db	2013-02-08	2013-02-08			-20.00	EUR	other	cash	\N	t
10110	db	2013-02-09	2013-02-09			-17.76	EUR	health	wellness	\N	t
10109	db	2013-02-09	2013-02-09			-15.53	EUR	free time	going out	\N	t
10144	db	2013-02-10	2013-02-10			-5.88	EUR	living	pets	\N	t
10151	db	2013-02-11	2013-02-11			-5.14	EUR	living	food	\N	t
10177	db	2013-02-12	2013-02-12			-9.38	EUR	free time	hobbies	\N	t
10203	db	2013-02-13	2013-02-13			-2.86	EUR	free time	sport	\N	t
10230	db	2013-02-14	2013-02-14			-4.19	EUR	living	food	\N	t
10229	db	2013-02-14	2013-02-14			-9.55	EUR	free time	entertainment	\N	t
10270	db	2013-02-15	2013-02-15			-2.17	EUR	living	household	\N	t
10258	db	2013-02-15	2013-02-15			-0.80	EUR	living	food	\N	t
10257	db	2013-02-15	2013-02-15			-18.76	EUR	free time	going out	\N	t
10256	db	2013-02-15	2013-02-15			-8.87	EUR	mobility	gas	\N	t
10250	db	2013-02-15	2013-02-15			-20.00	EUR	other	cash	\N	t
10285	db	2013-02-16	2013-02-16			-15.84	EUR	health	wellness	\N	t
10284	db	2013-02-16	2013-02-16			-4.01	EUR	free time	going out	\N	t
10326	db	2013-02-18	2013-02-18			-6.49	EUR	living	food	\N	t
10352	db	2013-02-19	2013-02-19			-0.93	EUR	free time	hobbies	\N	t
10397	db	2013-02-20	2013-02-20			-66.12	EUR	free time	gadgets	\N	t
10396	db	2013-02-20	2013-02-20			-68.69	EUR	living	clothes	\N	t
10378	db	2013-02-20	2013-02-20			-5.63	EUR	free time	sport	\N	t
10405	db	2013-02-21	2013-02-21			-7.25	EUR	living	food	\N	t
10404	db	2013-02-21	2013-02-21			-3.83	EUR	free time	entertainment	\N	t
10433	db	2013-02-22	2013-02-22			-4.89	EUR	living	food	\N	t
10432	db	2013-02-22	2013-02-22			-5.11	EUR	free time	going out	\N	t
10431	db	2013-02-22	2013-02-22			-17.43	EUR	mobility	gas	\N	t
10425	db	2013-02-22	2013-02-22			-20.00	EUR	other	cash	\N	t
10460	db	2013-02-23	2013-02-23			-1.58	EUR	health	wellness	\N	t
10459	db	2013-02-23	2013-02-23			-6.59	EUR	free time	going out	\N	t
10501	db	2013-02-25	2013-02-25			-8.60	EUR	living	food	\N	t
10527	db	2013-02-26	2013-02-26			-2.94	EUR	free time	hobbies	\N	t
10553	db	2013-02-27	2013-02-27			-2.71	EUR	free time	sport	\N	t
10580	db	2013-02-28	2013-02-28			-8.73	EUR	living	food	\N	t
10579	db	2013-02-28	2013-02-28			-9.12	EUR	free time	entertainment	\N	t
10611	db	2013-03-01	2013-03-01			-10.00	EUR	house	phone	\N	t
10608	db	2013-03-01	2013-03-01			-12.07	EUR	living	food	\N	t
10607	db	2013-03-01	2013-03-01			-11.27	EUR	free time	going out	\N	t
10606	db	2013-03-01	2013-03-01			-19.63	EUR	mobility	gas	\N	t
10600	db	2013-03-01	2013-03-01			-20.00	EUR	other	cash	\N	t
10637	db	2013-03-02	2013-03-02			-10.00	EUR	house	electricity	\N	t
10635	db	2013-03-02	2013-03-02			-8.96	EUR	health	wellness	\N	t
10634	db	2013-03-02	2013-03-02			-5.38	EUR	free time	going out	\N	t
10663	db	2013-03-03	2013-03-03			-10.00	EUR	house	internet	\N	t
10689	db	2013-03-04	2013-03-04			-250.00	EUR	house	rent	\N	t
10676	db	2013-03-04	2013-03-04			-7.29	EUR	living	food	\N	t
10715	db	2013-03-05	2013-03-05			-10.00	EUR	finance	costs and fees	\N	t
10702	db	2013-03-05	2013-03-05			-1.27	EUR	free time	hobbies	\N	t
10741	db	2013-03-06	2013-03-06			-50.00	EUR	finance	insurance	\N	t
10728	db	2013-03-06	2013-03-06			-7.03	EUR	free time	sport	\N	t
10767	db	2013-03-07	2013-03-07			-92.98	EUR	health	doctor visits	\N	t
10755	db	2013-03-07	2013-03-07			-3.36	EUR	living	food	\N	t
10754	db	2013-03-07	2013-03-07			-1.57	EUR	free time	entertainment	\N	t
10793	db	2013-03-08	2013-03-08			1000.00	EUR	work and training	salary	\N	t
10783	db	2013-03-08	2013-03-08			-4.59	EUR	living	food	\N	t
10782	db	2013-03-08	2013-03-08			-6.19	EUR	free time	going out	\N	t
10781	db	2013-03-08	2013-03-08			-10.55	EUR	mobility	gas	\N	t
10775	db	2013-03-08	2013-03-08			-20.00	EUR	other	cash	\N	t
10810	db	2013-03-09	2013-03-09			-0.73	EUR	health	wellness	\N	t
10809	db	2013-03-09	2013-03-09			-1.31	EUR	free time	going out	\N	t
10844	db	2013-03-10	2013-03-10			-72.99	EUR	living	pets	\N	t
10851	db	2013-03-11	2013-03-11			-5.08	EUR	living	food	\N	t
10877	db	2013-03-12	2013-03-12			-2.41	EUR	free time	hobbies	\N	t
10903	db	2013-03-13	2013-03-13			-8.10	EUR	free time	sport	\N	t
10930	db	2013-03-14	2013-03-14			-4.71	EUR	living	food	\N	t
10929	db	2013-03-14	2013-03-14			-6.91	EUR	free time	entertainment	\N	t
10970	db	2013-03-15	2013-03-15			-50.48	EUR	living	household	\N	t
10958	db	2013-03-15	2013-03-15			-14.70	EUR	living	food	\N	t
10957	db	2013-03-15	2013-03-15			-18.44	EUR	free time	going out	\N	t
10956	db	2013-03-15	2013-03-15			-4.59	EUR	mobility	gas	\N	t
10950	db	2013-03-15	2013-03-15			-20.00	EUR	other	cash	\N	t
10985	db	2013-03-16	2013-03-16			-16.60	EUR	health	wellness	\N	t
10984	db	2013-03-16	2013-03-16			-16.98	EUR	free time	going out	\N	t
11026	db	2013-03-18	2013-03-18			-8.99	EUR	living	food	\N	t
11052	db	2013-03-19	2013-03-19			-3.65	EUR	free time	hobbies	\N	t
11097	db	2013-03-20	2013-03-20			-36.84	EUR	free time	gadgets	\N	t
11096	db	2013-03-20	2013-03-20			-74.73	EUR	living	clothes	\N	t
11078	db	2013-03-20	2013-03-20			-4.11	EUR	free time	sport	\N	t
11105	db	2013-03-21	2013-03-21			-1.47	EUR	living	food	\N	t
11104	db	2013-03-21	2013-03-21			-9.19	EUR	free time	entertainment	\N	t
11133	db	2013-03-22	2013-03-22			-6.60	EUR	living	food	\N	t
11132	db	2013-03-22	2013-03-22			-10.38	EUR	free time	going out	\N	t
11131	db	2013-03-22	2013-03-22			-3.91	EUR	mobility	gas	\N	t
11125	db	2013-03-22	2013-03-22			-20.00	EUR	other	cash	\N	t
11160	db	2013-03-23	2013-03-23			-13.42	EUR	health	wellness	\N	t
11159	db	2013-03-23	2013-03-23			-12.35	EUR	free time	going out	\N	t
11201	db	2013-03-25	2013-03-25			-9.01	EUR	living	food	\N	t
11227	db	2013-03-26	2013-03-26			-2.48	EUR	free time	hobbies	\N	t
11253	db	2013-03-27	2013-03-27			-5.32	EUR	free time	sport	\N	t
11280	db	2013-03-28	2013-03-28			-1.15	EUR	living	food	\N	t
11279	db	2013-03-28	2013-03-28			-5.26	EUR	free time	entertainment	\N	t
11308	db	2013-03-29	2013-03-29			-17.64	EUR	living	food	\N	t
11307	db	2013-03-29	2013-03-29			-13.92	EUR	free time	going out	\N	t
11306	db	2013-03-29	2013-03-29			-15.96	EUR	mobility	gas	\N	t
11300	db	2013-03-29	2013-03-29			-20.00	EUR	other	cash	\N	t
11335	db	2013-03-30	2013-03-30			-7.77	EUR	health	wellness	\N	t
11334	db	2013-03-30	2013-03-30			-0.30	EUR	free time	going out	\N	t
11386	db	2013-04-01	2013-04-01			-10.00	EUR	house	phone	\N	t
11376	db	2013-04-01	2013-04-01			-0.71	EUR	living	food	\N	t
11412	db	2013-04-02	2013-04-02			-10.00	EUR	house	electricity	\N	t
11402	db	2013-04-02	2013-04-02			-8.72	EUR	free time	hobbies	\N	t
11438	db	2013-04-03	2013-04-03			-10.00	EUR	house	internet	\N	t
11428	db	2013-04-03	2013-04-03			-4.14	EUR	free time	sport	\N	t
11464	db	2013-04-04	2013-04-04			-250.00	EUR	house	rent	\N	t
11455	db	2013-04-04	2013-04-04			-0.16	EUR	living	food	\N	t
11454	db	2013-04-04	2013-04-04			-7.90	EUR	free time	entertainment	\N	t
11490	db	2013-04-05	2013-04-05			-10.00	EUR	finance	costs and fees	\N	t
11483	db	2013-04-05	2013-04-05			-18.79	EUR	living	food	\N	t
11482	db	2013-04-05	2013-04-05			-16.12	EUR	free time	going out	\N	t
11481	db	2013-04-05	2013-04-05			-7.38	EUR	mobility	gas	\N	t
11475	db	2013-04-05	2013-04-05			-20.00	EUR	other	cash	\N	t
11516	db	2013-04-06	2013-04-06			-50.00	EUR	finance	insurance	\N	t
11510	db	2013-04-06	2013-04-06			-4.01	EUR	health	wellness	\N	t
11509	db	2013-04-06	2013-04-06			-17.14	EUR	free time	going out	\N	t
11542	db	2013-04-07	2013-04-07			-77.21	EUR	health	doctor visits	\N	t
11568	db	2013-04-08	2013-04-08			1000.00	EUR	work and training	salary	\N	t
11551	db	2013-04-08	2013-04-08			-6.25	EUR	living	food	\N	t
11577	db	2013-04-09	2013-04-09			-8.30	EUR	free time	hobbies	\N	t
11619	db	2013-04-10	2013-04-10			-29.10	EUR	living	pets	\N	t
11603	db	2013-04-10	2013-04-10			-0.57	EUR	free time	sport	\N	t
11630	db	2013-04-11	2013-04-11			-3.37	EUR	living	food	\N	t
11629	db	2013-04-11	2013-04-11			-6.49	EUR	free time	entertainment	\N	t
11658	db	2013-04-12	2013-04-12			-2.00	EUR	living	food	\N	t
11657	db	2013-04-12	2013-04-12			-19.37	EUR	free time	going out	\N	t
11656	db	2013-04-12	2013-04-12			-19.15	EUR	mobility	gas	\N	t
11650	db	2013-04-12	2013-04-12			-20.00	EUR	other	cash	\N	t
11685	db	2013-04-13	2013-04-13			-17.38	EUR	health	wellness	\N	t
11684	db	2013-04-13	2013-04-13			-3.46	EUR	free time	going out	\N	t
11745	db	2013-04-15	2013-04-15			-7.83	EUR	living	household	\N	t
11726	db	2013-04-15	2013-04-15			-7.37	EUR	living	food	\N	t
11752	db	2013-04-16	2013-04-16			-0.63	EUR	free time	hobbies	\N	t
11778	db	2013-04-17	2013-04-17			-9.90	EUR	free time	sport	\N	t
11805	db	2013-04-18	2013-04-18			-7.31	EUR	living	food	\N	t
11804	db	2013-04-18	2013-04-18			-6.28	EUR	free time	entertainment	\N	t
11833	db	2013-04-19	2013-04-19			-10.95	EUR	living	food	\N	t
11832	db	2013-04-19	2013-04-19			-6.44	EUR	free time	going out	\N	t
11831	db	2013-04-19	2013-04-19			-8.20	EUR	mobility	gas	\N	t
11825	db	2013-04-19	2013-04-19			-20.00	EUR	other	cash	\N	t
11872	db	2013-04-20	2013-04-20			-66.32	EUR	free time	gadgets	\N	t
11871	db	2013-04-20	2013-04-20			-26.85	EUR	living	clothes	\N	t
11860	db	2013-04-20	2013-04-20			-12.53	EUR	health	wellness	\N	t
11859	db	2013-04-20	2013-04-20			-19.01	EUR	free time	going out	\N	t
11901	db	2013-04-22	2013-04-22			-8.67	EUR	living	food	\N	t
11927	db	2013-04-23	2013-04-23			-8.04	EUR	free time	hobbies	\N	t
11953	db	2013-04-24	2013-04-24			-9.61	EUR	free time	sport	\N	t
11980	db	2013-04-25	2013-04-25			-2.14	EUR	living	food	\N	t
11979	db	2013-04-25	2013-04-25			-5.41	EUR	free time	entertainment	\N	t
12008	db	2013-04-26	2013-04-26			-13.93	EUR	living	food	\N	t
12007	db	2013-04-26	2013-04-26			-13.21	EUR	free time	going out	\N	t
12006	db	2013-04-26	2013-04-26			-15.20	EUR	mobility	gas	\N	t
12000	db	2013-04-26	2013-04-26			-20.00	EUR	other	cash	\N	t
12035	db	2013-04-27	2013-04-27			-14.10	EUR	health	wellness	\N	t
12034	db	2013-04-27	2013-04-27			-15.66	EUR	free time	going out	\N	t
12076	db	2013-04-29	2013-04-29			-0.45	EUR	living	food	\N	t
12102	db	2013-04-30	2013-04-30			-4.81	EUR	free time	hobbies	\N	t
12136	db	2013-05-01	2013-05-01			-10.00	EUR	house	phone	\N	t
12128	db	2013-05-01	2013-05-01			-2.38	EUR	free time	sport	\N	t
12162	db	2013-05-02	2013-05-02			-10.00	EUR	house	electricity	\N	t
12155	db	2013-05-02	2013-05-02			-3.53	EUR	living	food	\N	t
12154	db	2013-05-02	2013-05-02			-8.39	EUR	free time	entertainment	\N	t
12188	db	2013-05-03	2013-05-03			-10.00	EUR	house	internet	\N	t
12183	db	2013-05-03	2013-05-03			-4.79	EUR	living	food	\N	t
12182	db	2013-05-03	2013-05-03			-1.39	EUR	free time	going out	\N	t
12181	db	2013-05-03	2013-05-03			-0.43	EUR	mobility	gas	\N	t
12175	db	2013-05-03	2013-05-03			-20.00	EUR	other	cash	\N	t
12214	db	2013-05-04	2013-05-04			-250.00	EUR	house	rent	\N	t
12210	db	2013-05-04	2013-05-04			-1.47	EUR	health	wellness	\N	t
12209	db	2013-05-04	2013-05-04			-2.44	EUR	free time	going out	\N	t
12240	db	2013-05-05	2013-05-05			-10.00	EUR	finance	costs and fees	\N	t
12266	db	2013-05-06	2013-05-06			-50.00	EUR	finance	insurance	\N	t
12251	db	2013-05-06	2013-05-06			-3.90	EUR	living	food	\N	t
12292	db	2013-05-07	2013-05-07			-55.33	EUR	health	doctor visits	\N	t
12277	db	2013-05-07	2013-05-07			-2.73	EUR	free time	hobbies	\N	t
12318	db	2013-05-08	2013-05-08			1000.00	EUR	work and training	salary	\N	t
12303	db	2013-05-08	2013-05-08			-2.21	EUR	free time	sport	\N	t
12330	db	2013-05-09	2013-05-09			-5.96	EUR	living	food	\N	t
12329	db	2013-05-09	2013-05-09			-8.98	EUR	free time	entertainment	\N	t
12369	db	2013-05-10	2013-05-10			-43.01	EUR	living	pets	\N	t
12358	db	2013-05-10	2013-05-10			-12.50	EUR	living	food	\N	t
12357	db	2013-05-10	2013-05-10			-16.95	EUR	free time	going out	\N	t
12356	db	2013-05-10	2013-05-10			-7.85	EUR	mobility	gas	\N	t
12350	db	2013-05-10	2013-05-10			-20.00	EUR	other	cash	\N	t
12385	db	2013-05-11	2013-05-11			-3.59	EUR	health	wellness	\N	t
12384	db	2013-05-11	2013-05-11			-12.69	EUR	free time	going out	\N	t
12426	db	2013-05-13	2013-05-13			-0.07	EUR	living	food	\N	t
12452	db	2013-05-14	2013-05-14			-2.85	EUR	free time	hobbies	\N	t
12495	db	2013-05-15	2013-05-15			-12.77	EUR	living	household	\N	t
12478	db	2013-05-15	2013-05-15			-9.97	EUR	free time	sport	\N	t
12505	db	2013-05-16	2013-05-16			-8.13	EUR	living	food	\N	t
12504	db	2013-05-16	2013-05-16			-4.06	EUR	free time	entertainment	\N	t
12533	db	2013-05-17	2013-05-17			-9.62	EUR	living	food	\N	t
12532	db	2013-05-17	2013-05-17			-15.58	EUR	free time	going out	\N	t
12531	db	2013-05-17	2013-05-17			-17.95	EUR	mobility	gas	\N	t
12525	db	2013-05-17	2013-05-17			-20.00	EUR	other	cash	\N	t
12560	db	2013-05-18	2013-05-18			-12.58	EUR	health	wellness	\N	t
12559	db	2013-05-18	2013-05-18			-19.50	EUR	free time	going out	\N	t
12622	db	2013-05-20	2013-05-20			-38.56	EUR	free time	gadgets	\N	t
12621	db	2013-05-20	2013-05-20			-53.85	EUR	living	clothes	\N	t
12601	db	2013-05-20	2013-05-20			-7.60	EUR	living	food	\N	t
12627	db	2013-05-21	2013-05-21			-5.16	EUR	free time	hobbies	\N	t
12653	db	2013-05-22	2013-05-22			-1.64	EUR	free time	sport	\N	t
12680	db	2013-05-23	2013-05-23			-7.80	EUR	living	food	\N	t
12679	db	2013-05-23	2013-05-23			-6.60	EUR	free time	entertainment	\N	t
12708	db	2013-05-24	2013-05-24			-16.70	EUR	living	food	\N	t
12707	db	2013-05-24	2013-05-24			-11.62	EUR	free time	going out	\N	t
12706	db	2013-05-24	2013-05-24			-2.43	EUR	mobility	gas	\N	t
12700	db	2013-05-24	2013-05-24			-20.00	EUR	other	cash	\N	t
12735	db	2013-05-25	2013-05-25			-19.59	EUR	health	wellness	\N	t
12734	db	2013-05-25	2013-05-25			-19.67	EUR	free time	going out	\N	t
12776	db	2013-05-27	2013-05-27			-0.42	EUR	living	food	\N	t
12802	db	2013-05-28	2013-05-28			-7.51	EUR	free time	hobbies	\N	t
12828	db	2013-05-29	2013-05-29			-0.99	EUR	free time	sport	\N	t
12855	db	2013-05-30	2013-05-30			-6.92	EUR	living	food	\N	t
12854	db	2013-05-30	2013-05-30			-8.90	EUR	free time	entertainment	\N	t
12883	db	2013-05-31	2013-05-31			-11.59	EUR	living	food	\N	t
12882	db	2013-05-31	2013-05-31			-14.64	EUR	free time	going out	\N	t
12881	db	2013-05-31	2013-05-31			-19.40	EUR	mobility	gas	\N	t
12875	db	2013-05-31	2013-05-31			-20.00	EUR	other	cash	\N	t
12911	db	2013-06-01	2013-06-01			-10.00	EUR	house	phone	\N	t
12910	db	2013-06-01	2013-06-01			-19.81	EUR	health	wellness	\N	t
12909	db	2013-06-01	2013-06-01			-11.52	EUR	free time	going out	\N	t
12937	db	2013-06-02	2013-06-02			-10.00	EUR	house	electricity	\N	t
12963	db	2013-06-03	2013-06-03			-10.00	EUR	house	internet	\N	t
12951	db	2013-06-03	2013-06-03			-3.76	EUR	living	food	\N	t
12989	db	2013-06-04	2013-06-04			-250.00	EUR	house	rent	\N	t
12977	db	2013-06-04	2013-06-04			-3.85	EUR	free time	hobbies	\N	t
13015	db	2013-06-05	2013-06-05			-10.00	EUR	finance	costs and fees	\N	t
13003	db	2013-06-05	2013-06-05			-5.77	EUR	free time	sport	\N	t
13041	db	2013-06-06	2013-06-06			-50.00	EUR	finance	insurance	\N	t
13030	db	2013-06-06	2013-06-06			-1.24	EUR	living	food	\N	t
13029	db	2013-06-06	2013-06-06			-7.11	EUR	free time	entertainment	\N	t
13067	db	2013-06-07	2013-06-07			-40.07	EUR	health	doctor visits	\N	t
13058	db	2013-06-07	2013-06-07			-8.56	EUR	living	food	\N	t
13057	db	2013-06-07	2013-06-07			-13.36	EUR	free time	going out	\N	t
13056	db	2013-06-07	2013-06-07			-13.59	EUR	mobility	gas	\N	t
13050	db	2013-06-07	2013-06-07			-20.00	EUR	other	cash	\N	t
13093	db	2013-06-08	2013-06-08			1000.00	EUR	work and training	salary	\N	t
13085	db	2013-06-08	2013-06-08			-3.58	EUR	health	wellness	\N	t
13084	db	2013-06-08	2013-06-08			-19.03	EUR	free time	going out	\N	t
13144	db	2013-06-10	2013-06-10			-67.40	EUR	living	pets	\N	t
13126	db	2013-06-10	2013-06-10			-5.08	EUR	living	food	\N	t
13152	db	2013-06-11	2013-06-11			-8.15	EUR	free time	hobbies	\N	t
13178	db	2013-06-12	2013-06-12			-6.71	EUR	free time	sport	\N	t
13205	db	2013-06-13	2013-06-13			-0.05	EUR	living	food	\N	t
13204	db	2013-06-13	2013-06-13			-6.60	EUR	free time	entertainment	\N	t
13233	db	2013-06-14	2013-06-14			-4.79	EUR	living	food	\N	t
13232	db	2013-06-14	2013-06-14			-7.41	EUR	free time	going out	\N	t
13231	db	2013-06-14	2013-06-14			-14.53	EUR	mobility	gas	\N	t
13225	db	2013-06-14	2013-06-14			-20.00	EUR	other	cash	\N	t
13270	db	2013-06-15	2013-06-15			-68.28	EUR	living	household	\N	t
13260	db	2013-06-15	2013-06-15			-17.44	EUR	health	wellness	\N	t
13259	db	2013-06-15	2013-06-15			-19.45	EUR	free time	going out	\N	t
13301	db	2013-06-17	2013-06-17			-1.09	EUR	living	food	\N	t
13327	db	2013-06-18	2013-06-18			-2.63	EUR	free time	hobbies	\N	t
13353	db	2013-06-19	2013-06-19			-4.87	EUR	free time	sport	\N	t
13397	db	2013-06-20	2013-06-20			-70.58	EUR	free time	gadgets	\N	t
13396	db	2013-06-20	2013-06-20			-50.97	EUR	living	clothes	\N	t
13380	db	2013-06-20	2013-06-20			-3.63	EUR	living	food	\N	t
13379	db	2013-06-20	2013-06-20			-7.91	EUR	free time	entertainment	\N	t
13408	db	2013-06-21	2013-06-21			-11.49	EUR	living	food	\N	t
13407	db	2013-06-21	2013-06-21			-13.43	EUR	free time	going out	\N	t
13406	db	2013-06-21	2013-06-21			-3.07	EUR	mobility	gas	\N	t
13400	db	2013-06-21	2013-06-21			-20.00	EUR	other	cash	\N	t
13435	db	2013-06-22	2013-06-22			-4.22	EUR	health	wellness	\N	t
13434	db	2013-06-22	2013-06-22			-11.47	EUR	free time	going out	\N	t
13476	db	2013-06-24	2013-06-24			-0.75	EUR	living	food	\N	t
13502	db	2013-06-25	2013-06-25			-1.74	EUR	free time	hobbies	\N	t
13528	db	2013-06-26	2013-06-26			-1.87	EUR	free time	sport	\N	t
13555	db	2013-06-27	2013-06-27			-8.12	EUR	living	food	\N	t
13554	db	2013-06-27	2013-06-27			-0.17	EUR	free time	entertainment	\N	t
13583	db	2013-06-28	2013-06-28			-17.38	EUR	living	food	\N	t
13582	db	2013-06-28	2013-06-28			-6.13	EUR	free time	going out	\N	t
13581	db	2013-06-28	2013-06-28			-4.70	EUR	mobility	gas	\N	t
13575	db	2013-06-28	2013-06-28			-20.00	EUR	other	cash	\N	t
13623	db	2013-06-29	2013-06-29			-498.99	EUR	free time	travel	\N	t
13610	db	2013-06-29	2013-06-29			-1.27	EUR	health	wellness	\N	t
13609	db	2013-06-29	2013-06-29			-3.57	EUR	free time	going out	\N	t
13661	db	2013-07-01	2013-07-01			-10.00	EUR	house	phone	\N	t
13651	db	2013-07-01	2013-07-01			-3.86	EUR	living	food	\N	t
13687	db	2013-07-02	2013-07-02			-10.00	EUR	house	electricity	\N	t
13677	db	2013-07-02	2013-07-02			-4.48	EUR	free time	hobbies	\N	t
13713	db	2013-07-03	2013-07-03			-10.00	EUR	house	internet	\N	t
13703	db	2013-07-03	2013-07-03			-3.52	EUR	free time	sport	\N	t
13739	db	2013-07-04	2013-07-04			-250.00	EUR	house	rent	\N	t
13730	db	2013-07-04	2013-07-04			-4.34	EUR	living	food	\N	t
13729	db	2013-07-04	2013-07-04			-5.16	EUR	free time	entertainment	\N	t
13765	db	2013-07-05	2013-07-05			-10.00	EUR	finance	costs and fees	\N	t
13758	db	2013-07-05	2013-07-05			-12.68	EUR	living	food	\N	t
13757	db	2013-07-05	2013-07-05			-2.26	EUR	free time	going out	\N	t
13756	db	2013-07-05	2013-07-05			-12.58	EUR	mobility	gas	\N	t
13750	db	2013-07-05	2013-07-05			-20.00	EUR	other	cash	\N	t
13791	db	2013-07-06	2013-07-06			-50.00	EUR	finance	insurance	\N	t
13785	db	2013-07-06	2013-07-06			-3.92	EUR	health	wellness	\N	t
13784	db	2013-07-06	2013-07-06			-2.61	EUR	free time	going out	\N	t
13817	db	2013-07-07	2013-07-07			-22.65	EUR	health	doctor visits	\N	t
13843	db	2013-07-08	2013-07-08			1000.00	EUR	work and training	salary	\N	t
13826	db	2013-07-08	2013-07-08			-0.96	EUR	living	food	\N	t
13852	db	2013-07-09	2013-07-09			-5.38	EUR	free time	hobbies	\N	t
13894	db	2013-07-10	2013-07-10			-50.47	EUR	living	pets	\N	t
13878	db	2013-07-10	2013-07-10			-9.43	EUR	free time	sport	\N	t
13905	db	2013-07-11	2013-07-11			-4.72	EUR	living	food	\N	t
13904	db	2013-07-11	2013-07-11			-9.27	EUR	free time	entertainment	\N	t
13933	db	2013-07-12	2013-07-12			-14.45	EUR	living	food	\N	t
13932	db	2013-07-12	2013-07-12			-11.35	EUR	free time	going out	\N	t
13931	db	2013-07-12	2013-07-12			-16.44	EUR	mobility	gas	\N	t
13925	db	2013-07-12	2013-07-12			-20.00	EUR	other	cash	\N	t
13960	db	2013-07-13	2013-07-13			-18.98	EUR	health	wellness	\N	t
13959	db	2013-07-13	2013-07-13			-0.91	EUR	free time	going out	\N	t
14020	db	2013-07-15	2013-07-15			-47.61	EUR	living	household	\N	t
14001	db	2013-07-15	2013-07-15			-5.78	EUR	living	food	\N	t
14027	db	2013-07-16	2013-07-16			-2.02	EUR	free time	hobbies	\N	t
14053	db	2013-07-17	2013-07-17			-9.62	EUR	free time	sport	\N	t
14080	db	2013-07-18	2013-07-18			-1.31	EUR	living	food	\N	t
14079	db	2013-07-18	2013-07-18			-1.40	EUR	free time	entertainment	\N	t
14108	db	2013-07-19	2013-07-19			-18.63	EUR	living	food	\N	t
14107	db	2013-07-19	2013-07-19			-11.49	EUR	free time	going out	\N	t
14106	db	2013-07-19	2013-07-19			-9.70	EUR	mobility	gas	\N	t
14100	db	2013-07-19	2013-07-19			-20.00	EUR	other	cash	\N	t
14147	db	2013-07-20	2013-07-20			-57.52	EUR	free time	gadgets	\N	t
14146	db	2013-07-20	2013-07-20			-37.22	EUR	living	clothes	\N	t
14135	db	2013-07-20	2013-07-20			-14.98	EUR	health	wellness	\N	t
14134	db	2013-07-20	2013-07-20			-11.78	EUR	free time	going out	\N	t
14176	db	2013-07-22	2013-07-22			-5.90	EUR	living	food	\N	t
14202	db	2013-07-23	2013-07-23			-3.24	EUR	free time	hobbies	\N	t
14228	db	2013-07-24	2013-07-24			-6.31	EUR	free time	sport	\N	t
14255	db	2013-07-25	2013-07-25			-6.74	EUR	living	food	\N	t
14254	db	2013-07-25	2013-07-25			-7.62	EUR	free time	entertainment	\N	t
14283	db	2013-07-26	2013-07-26			-9.37	EUR	living	food	\N	t
14282	db	2013-07-26	2013-07-26			-18.49	EUR	free time	going out	\N	t
14281	db	2013-07-26	2013-07-26			-7.85	EUR	mobility	gas	\N	t
14275	db	2013-07-26	2013-07-26			-20.00	EUR	other	cash	\N	t
14310	db	2013-07-27	2013-07-27			-0.12	EUR	health	wellness	\N	t
14309	db	2013-07-27	2013-07-27			-9.73	EUR	free time	going out	\N	t
14351	db	2013-07-29	2013-07-29			-8.03	EUR	living	food	\N	t
14377	db	2013-07-30	2013-07-30			-7.41	EUR	free time	hobbies	\N	t
14403	db	2013-07-31	2013-07-31			-7.86	EUR	free time	sport	\N	t
14436	db	2013-08-01	2013-08-01			-10.00	EUR	house	phone	\N	t
14430	db	2013-08-01	2013-08-01			-2.34	EUR	living	food	\N	t
14429	db	2013-08-01	2013-08-01			-1.70	EUR	free time	entertainment	\N	t
14462	db	2013-08-02	2013-08-02			-10.00	EUR	house	electricity	\N	t
14458	db	2013-08-02	2013-08-02			-18.75	EUR	living	food	\N	t
14457	db	2013-08-02	2013-08-02			-2.70	EUR	free time	going out	\N	t
14456	db	2013-08-02	2013-08-02			-1.71	EUR	mobility	gas	\N	t
14450	db	2013-08-02	2013-08-02			-20.00	EUR	other	cash	\N	t
14488	db	2013-08-03	2013-08-03			-10.00	EUR	house	internet	\N	t
14485	db	2013-08-03	2013-08-03			-1.86	EUR	health	wellness	\N	t
14484	db	2013-08-03	2013-08-03			-5.90	EUR	free time	going out	\N	t
14514	db	2013-08-04	2013-08-04			-250.00	EUR	house	rent	\N	t
14540	db	2013-08-05	2013-08-05			-10.00	EUR	finance	costs and fees	\N	t
14526	db	2013-08-05	2013-08-05			-9.12	EUR	living	food	\N	t
14566	db	2013-08-06	2013-08-06			-50.00	EUR	finance	insurance	\N	t
14552	db	2013-08-06	2013-08-06			-2.87	EUR	free time	hobbies	\N	t
14592	db	2013-08-07	2013-08-07			-35.41	EUR	health	doctor visits	\N	t
14578	db	2013-08-07	2013-08-07			-2.60	EUR	free time	sport	\N	t
14618	db	2013-08-08	2013-08-08			1000.00	EUR	work and training	salary	\N	t
14605	db	2013-08-08	2013-08-08			-8.29	EUR	living	food	\N	t
14604	db	2013-08-08	2013-08-08			-2.39	EUR	free time	entertainment	\N	t
14633	db	2013-08-09	2013-08-09			-10.60	EUR	living	food	\N	t
14632	db	2013-08-09	2013-08-09			-4.07	EUR	free time	going out	\N	t
14631	db	2013-08-09	2013-08-09			-17.07	EUR	mobility	gas	\N	t
14625	db	2013-08-09	2013-08-09			-20.00	EUR	other	cash	\N	t
14669	db	2013-08-10	2013-08-10			-75.69	EUR	living	pets	\N	t
14660	db	2013-08-10	2013-08-10			-18.85	EUR	health	wellness	\N	t
14659	db	2013-08-10	2013-08-10			-1.51	EUR	free time	going out	\N	t
14701	db	2013-08-12	2013-08-12			-6.22	EUR	living	food	\N	t
14727	db	2013-08-13	2013-08-13			-0.90	EUR	free time	hobbies	\N	t
14753	db	2013-08-14	2013-08-14			-1.05	EUR	free time	sport	\N	t
14795	db	2013-08-15	2013-08-15			-64.05	EUR	living	household	\N	t
14780	db	2013-08-15	2013-08-15			-8.67	EUR	living	food	\N	t
14779	db	2013-08-15	2013-08-15			-3.96	EUR	free time	entertainment	\N	t
14808	db	2013-08-16	2013-08-16			-2.89	EUR	living	food	\N	t
14807	db	2013-08-16	2013-08-16			-11.92	EUR	free time	going out	\N	t
14806	db	2013-08-16	2013-08-16			-8.65	EUR	mobility	gas	\N	t
14800	db	2013-08-16	2013-08-16			-20.00	EUR	other	cash	\N	t
14835	db	2013-08-17	2013-08-17			-8.64	EUR	health	wellness	\N	t
14834	db	2013-08-17	2013-08-17			-3.87	EUR	free time	going out	\N	t
14876	db	2013-08-19	2013-08-19			-5.96	EUR	living	food	\N	t
14922	db	2013-08-20	2013-08-20			-5.35	EUR	free time	gadgets	\N	t
14921	db	2013-08-20	2013-08-20			-69.54	EUR	living	clothes	\N	t
14902	db	2013-08-20	2013-08-20			-4.96	EUR	free time	hobbies	\N	t
14928	db	2013-08-21	2013-08-21			-0.10	EUR	free time	sport	\N	t
14955	db	2013-08-22	2013-08-22			-1.77	EUR	living	food	\N	t
14954	db	2013-08-22	2013-08-22			-9.31	EUR	free time	entertainment	\N	t
14983	db	2013-08-23	2013-08-23			-1.08	EUR	living	food	\N	t
14982	db	2013-08-23	2013-08-23			-17.73	EUR	free time	going out	\N	t
14981	db	2013-08-23	2013-08-23			-16.79	EUR	mobility	gas	\N	t
14975	db	2013-08-23	2013-08-23			-20.00	EUR	other	cash	\N	t
15010	db	2013-08-24	2013-08-24			-5.93	EUR	health	wellness	\N	t
15009	db	2013-08-24	2013-08-24			-4.79	EUR	free time	going out	\N	t
15051	db	2013-08-26	2013-08-26			-1.18	EUR	living	food	\N	t
15077	db	2013-08-27	2013-08-27			-3.18	EUR	free time	hobbies	\N	t
15103	db	2013-08-28	2013-08-28			-7.19	EUR	free time	sport	\N	t
15130	db	2013-08-29	2013-08-29			-1.79	EUR	living	food	\N	t
15129	db	2013-08-29	2013-08-29			-5.10	EUR	free time	entertainment	\N	t
15158	db	2013-08-30	2013-08-30			-17.38	EUR	living	food	\N	t
15157	db	2013-08-30	2013-08-30			-1.63	EUR	free time	going out	\N	t
15156	db	2013-08-30	2013-08-30			-1.59	EUR	mobility	gas	\N	t
15150	db	2013-08-30	2013-08-30			-20.00	EUR	other	cash	\N	t
15185	db	2013-08-31	2013-08-31			-3.21	EUR	health	wellness	\N	t
15184	db	2013-08-31	2013-08-31			-10.90	EUR	free time	going out	\N	t
15211	db	2013-09-01	2013-09-01			-10.00	EUR	house	phone	\N	t
15237	db	2013-09-02	2013-09-02			-10.00	EUR	house	electricity	\N	t
15226	db	2013-09-02	2013-09-02			-4.66	EUR	living	food	\N	t
15263	db	2013-09-03	2013-09-03			-10.00	EUR	house	internet	\N	t
15252	db	2013-09-03	2013-09-03			-0.19	EUR	free time	hobbies	\N	t
15289	db	2013-09-04	2013-09-04			-250.00	EUR	house	rent	\N	t
15278	db	2013-09-04	2013-09-04			-5.00	EUR	free time	sport	\N	t
15315	db	2013-09-05	2013-09-05			-10.00	EUR	finance	costs and fees	\N	t
15305	db	2013-09-05	2013-09-05			-9.96	EUR	living	food	\N	t
15304	db	2013-09-05	2013-09-05			-2.56	EUR	free time	entertainment	\N	t
15341	db	2013-09-06	2013-09-06			-50.00	EUR	finance	insurance	\N	t
15333	db	2013-09-06	2013-09-06			-7.81	EUR	living	food	\N	t
15332	db	2013-09-06	2013-09-06			-7.90	EUR	free time	going out	\N	t
15331	db	2013-09-06	2013-09-06			-17.42	EUR	mobility	gas	\N	t
15325	db	2013-09-06	2013-09-06			-20.00	EUR	other	cash	\N	t
15367	db	2013-09-07	2013-09-07			-62.44	EUR	health	doctor visits	\N	t
15360	db	2013-09-07	2013-09-07			-8.18	EUR	health	wellness	\N	t
15359	db	2013-09-07	2013-09-07			-10.45	EUR	free time	going out	\N	t
15393	db	2013-09-08	2013-09-08			1000.00	EUR	work and training	salary	\N	t
15401	db	2013-09-09	2013-09-09			-5.75	EUR	living	food	\N	t
15444	db	2013-09-10	2013-09-10			-35.82	EUR	living	pets	\N	t
15427	db	2013-09-10	2013-09-10			-3.29	EUR	free time	hobbies	\N	t
15453	db	2013-09-11	2013-09-11			-7.28	EUR	free time	sport	\N	t
15480	db	2013-09-12	2013-09-12			-2.97	EUR	living	food	\N	t
15479	db	2013-09-12	2013-09-12			-9.74	EUR	free time	entertainment	\N	t
15508	db	2013-09-13	2013-09-13			-3.71	EUR	living	food	\N	t
15507	db	2013-09-13	2013-09-13			-0.94	EUR	free time	going out	\N	t
15506	db	2013-09-13	2013-09-13			-11.55	EUR	mobility	gas	\N	t
15500	db	2013-09-13	2013-09-13			-20.00	EUR	other	cash	\N	t
15535	db	2013-09-14	2013-09-14			-5.82	EUR	health	wellness	\N	t
15534	db	2013-09-14	2013-09-14			-7.93	EUR	free time	going out	\N	t
15570	db	2013-09-15	2013-09-15			-26.81	EUR	living	household	\N	t
15576	db	2013-09-16	2013-09-16			-6.63	EUR	living	food	\N	t
15602	db	2013-09-17	2013-09-17			-1.18	EUR	free time	hobbies	\N	t
15628	db	2013-09-18	2013-09-18			-6.92	EUR	free time	sport	\N	t
15655	db	2013-09-19	2013-09-19			-9.58	EUR	living	food	\N	t
15654	db	2013-09-19	2013-09-19			-5.29	EUR	free time	entertainment	\N	t
15697	db	2013-09-20	2013-09-20			-23.98	EUR	free time	gadgets	\N	t
15696	db	2013-09-20	2013-09-20			-14.39	EUR	living	clothes	\N	t
15683	db	2013-09-20	2013-09-20			-13.65	EUR	living	food	\N	t
15682	db	2013-09-20	2013-09-20			-4.39	EUR	free time	going out	\N	t
15681	db	2013-09-20	2013-09-20			-13.33	EUR	mobility	gas	\N	t
15675	db	2013-09-20	2013-09-20			-20.00	EUR	other	cash	\N	t
15710	db	2013-09-21	2013-09-21			-14.13	EUR	health	wellness	\N	t
15709	db	2013-09-21	2013-09-21			-11.71	EUR	free time	going out	\N	t
15751	db	2013-09-23	2013-09-23			-0.20	EUR	living	food	\N	t
15777	db	2013-09-24	2013-09-24			-1.90	EUR	free time	hobbies	\N	t
15803	db	2013-09-25	2013-09-25			-4.39	EUR	free time	sport	\N	t
15830	db	2013-09-26	2013-09-26			-7.42	EUR	living	food	\N	t
15829	db	2013-09-26	2013-09-26			-1.20	EUR	free time	entertainment	\N	t
15858	db	2013-09-27	2013-09-27			-10.12	EUR	living	food	\N	t
15857	db	2013-09-27	2013-09-27			-6.88	EUR	free time	going out	\N	t
15856	db	2013-09-27	2013-09-27			-11.69	EUR	mobility	gas	\N	t
15850	db	2013-09-27	2013-09-27			-20.00	EUR	other	cash	\N	t
15885	db	2013-09-28	2013-09-28			-16.87	EUR	health	wellness	\N	t
15884	db	2013-09-28	2013-09-28			-15.85	EUR	free time	going out	\N	t
15926	db	2013-09-30	2013-09-30			-3.18	EUR	living	food	\N	t
15961	db	2013-10-01	2013-10-01			-10.00	EUR	house	phone	\N	t
15952	db	2013-10-01	2013-10-01			-7.42	EUR	free time	hobbies	\N	t
15987	db	2013-10-02	2013-10-02			-10.00	EUR	house	electricity	\N	t
15978	db	2013-10-02	2013-10-02			-0.52	EUR	free time	sport	\N	t
16013	db	2013-10-03	2013-10-03			-10.00	EUR	house	internet	\N	t
16005	db	2013-10-03	2013-10-03			-5.30	EUR	living	food	\N	t
16004	db	2013-10-03	2013-10-03			-1.34	EUR	free time	entertainment	\N	t
16039	db	2013-10-04	2013-10-04			-250.00	EUR	house	rent	\N	t
16033	db	2013-10-04	2013-10-04			-3.61	EUR	living	food	\N	t
16032	db	2013-10-04	2013-10-04			-5.93	EUR	free time	going out	\N	t
16031	db	2013-10-04	2013-10-04			-6.92	EUR	mobility	gas	\N	t
16025	db	2013-10-04	2013-10-04			-20.00	EUR	other	cash	\N	t
16065	db	2013-10-05	2013-10-05			-10.00	EUR	finance	costs and fees	\N	t
16060	db	2013-10-05	2013-10-05			-9.94	EUR	health	wellness	\N	t
16059	db	2013-10-05	2013-10-05			-14.91	EUR	free time	going out	\N	t
16091	db	2013-10-06	2013-10-06			-50.00	EUR	finance	insurance	\N	t
16117	db	2013-10-07	2013-10-07			-49.80	EUR	health	doctor visits	\N	t
16101	db	2013-10-07	2013-10-07			-1.67	EUR	living	food	\N	t
16143	db	2013-10-08	2013-10-08			1000.00	EUR	work and training	salary	\N	t
16127	db	2013-10-08	2013-10-08			-7.68	EUR	free time	hobbies	\N	t
16153	db	2013-10-09	2013-10-09			-3.67	EUR	free time	sport	\N	t
16194	db	2013-10-10	2013-10-10			-34.07	EUR	living	pets	\N	t
16180	db	2013-10-10	2013-10-10			-9.39	EUR	living	food	\N	t
16179	db	2013-10-10	2013-10-10			-7.42	EUR	free time	entertainment	\N	t
16208	db	2013-10-11	2013-10-11			-4.84	EUR	living	food	\N	t
16207	db	2013-10-11	2013-10-11			-17.69	EUR	free time	going out	\N	t
16206	db	2013-10-11	2013-10-11			-8.19	EUR	mobility	gas	\N	t
16200	db	2013-10-11	2013-10-11			-20.00	EUR	other	cash	\N	t
16235	db	2013-10-12	2013-10-12			-3.59	EUR	health	wellness	\N	t
16234	db	2013-10-12	2013-10-12			-12.71	EUR	free time	going out	\N	t
16276	db	2013-10-14	2013-10-14			-6.72	EUR	living	food	\N	t
16320	db	2013-10-15	2013-10-15			-53.61	EUR	living	household	\N	t
16302	db	2013-10-15	2013-10-15			-5.07	EUR	free time	hobbies	\N	t
16328	db	2013-10-16	2013-10-16			-0.39	EUR	free time	sport	\N	t
16355	db	2013-10-17	2013-10-17			-1.40	EUR	living	food	\N	t
16354	db	2013-10-17	2013-10-17			-5.28	EUR	free time	entertainment	\N	t
16383	db	2013-10-18	2013-10-18			-3.88	EUR	living	food	\N	t
16382	db	2013-10-18	2013-10-18			-17.43	EUR	free time	going out	\N	t
16381	db	2013-10-18	2013-10-18			-1.38	EUR	mobility	gas	\N	t
16375	db	2013-10-18	2013-10-18			-20.00	EUR	other	cash	\N	t
16410	db	2013-10-19	2013-10-19			-10.62	EUR	health	wellness	\N	t
16409	db	2013-10-19	2013-10-19			-18.07	EUR	free time	going out	\N	t
16447	db	2013-10-20	2013-10-20			-23.67	EUR	free time	gadgets	\N	t
16446	db	2013-10-20	2013-10-20			-42.01	EUR	living	clothes	\N	t
16451	db	2013-10-21	2013-10-21			-1.34	EUR	living	food	\N	t
16477	db	2013-10-22	2013-10-22			-7.47	EUR	free time	hobbies	\N	t
16503	db	2013-10-23	2013-10-23			-2.51	EUR	free time	sport	\N	t
16530	db	2013-10-24	2013-10-24			-0.65	EUR	living	food	\N	t
16529	db	2013-10-24	2013-10-24			-0.41	EUR	free time	entertainment	\N	t
16558	db	2013-10-25	2013-10-25			-11.24	EUR	living	food	\N	t
16557	db	2013-10-25	2013-10-25			-16.96	EUR	free time	going out	\N	t
16556	db	2013-10-25	2013-10-25			-7.16	EUR	mobility	gas	\N	t
16550	db	2013-10-25	2013-10-25			-20.00	EUR	other	cash	\N	t
16585	db	2013-10-26	2013-10-26			-2.94	EUR	health	wellness	\N	t
16584	db	2013-10-26	2013-10-26			-9.35	EUR	free time	going out	\N	t
16626	db	2013-10-28	2013-10-28			-5.77	EUR	living	food	\N	t
16652	db	2013-10-29	2013-10-29			-5.09	EUR	free time	hobbies	\N	t
16678	db	2013-10-30	2013-10-30			-4.93	EUR	free time	sport	\N	t
16705	db	2013-10-31	2013-10-31			-1.46	EUR	living	food	\N	t
16704	db	2013-10-31	2013-10-31			-1.04	EUR	free time	entertainment	\N	t
16736	db	2013-11-01	2013-11-01			-10.00	EUR	house	phone	\N	t
16733	db	2013-11-01	2013-11-01			-5.02	EUR	living	food	\N	t
16732	db	2013-11-01	2013-11-01			-13.54	EUR	free time	going out	\N	t
16731	db	2013-11-01	2013-11-01			-15.14	EUR	mobility	gas	\N	t
16725	db	2013-11-01	2013-11-01			-20.00	EUR	other	cash	\N	t
16762	db	2013-11-02	2013-11-02			-10.00	EUR	house	electricity	\N	t
16760	db	2013-11-02	2013-11-02			-10.48	EUR	health	wellness	\N	t
16759	db	2013-11-02	2013-11-02			-5.11	EUR	free time	going out	\N	t
16788	db	2013-11-03	2013-11-03			-10.00	EUR	house	internet	\N	t
16814	db	2013-11-04	2013-11-04			-250.00	EUR	house	rent	\N	t
16801	db	2013-11-04	2013-11-04			-5.73	EUR	living	food	\N	t
16840	db	2013-11-05	2013-11-05			-10.00	EUR	finance	costs and fees	\N	t
16827	db	2013-11-05	2013-11-05			-9.68	EUR	free time	hobbies	\N	t
16866	db	2013-11-06	2013-11-06			-50.00	EUR	finance	insurance	\N	t
16853	db	2013-11-06	2013-11-06			-2.28	EUR	free time	sport	\N	t
16892	db	2013-11-07	2013-11-07			-8.45	EUR	health	doctor visits	\N	t
16880	db	2013-11-07	2013-11-07			-3.63	EUR	living	food	\N	t
16879	db	2013-11-07	2013-11-07			-7.53	EUR	free time	entertainment	\N	t
16918	db	2013-11-08	2013-11-08			1000.00	EUR	work and training	salary	\N	t
16908	db	2013-11-08	2013-11-08			-1.87	EUR	living	food	\N	t
16907	db	2013-11-08	2013-11-08			-7.32	EUR	free time	going out	\N	t
16906	db	2013-11-08	2013-11-08			-5.04	EUR	mobility	gas	\N	t
16900	db	2013-11-08	2013-11-08			-20.00	EUR	other	cash	\N	t
16935	db	2013-11-09	2013-11-09			-12.52	EUR	health	wellness	\N	t
16934	db	2013-11-09	2013-11-09			-4.11	EUR	free time	going out	\N	t
16969	db	2013-11-10	2013-11-10			-69.35	EUR	living	pets	\N	t
16976	db	2013-11-11	2013-11-11			-9.17	EUR	living	food	\N	t
17002	db	2013-11-12	2013-11-12			-5.63	EUR	free time	hobbies	\N	t
17028	db	2013-11-13	2013-11-13			-1.89	EUR	free time	sport	\N	t
17055	db	2013-11-14	2013-11-14			-7.89	EUR	living	food	\N	t
17054	db	2013-11-14	2013-11-14			-8.15	EUR	free time	entertainment	\N	t
17095	db	2013-11-15	2013-11-15			-51.24	EUR	living	household	\N	t
17083	db	2013-11-15	2013-11-15			-18.09	EUR	living	food	\N	t
17082	db	2013-11-15	2013-11-15			-16.13	EUR	free time	going out	\N	t
17081	db	2013-11-15	2013-11-15			-3.68	EUR	mobility	gas	\N	t
17075	db	2013-11-15	2013-11-15			-20.00	EUR	other	cash	\N	t
17110	db	2013-11-16	2013-11-16			-7.76	EUR	health	wellness	\N	t
17109	db	2013-11-16	2013-11-16			-6.85	EUR	free time	going out	\N	t
17151	db	2013-11-18	2013-11-18			-7.37	EUR	living	food	\N	t
17177	db	2013-11-19	2013-11-19			-9.43	EUR	free time	hobbies	\N	t
17222	db	2013-11-20	2013-11-20			-69.10	EUR	free time	gadgets	\N	t
17221	db	2013-11-20	2013-11-20			-32.70	EUR	living	clothes	\N	t
17203	db	2013-11-20	2013-11-20			-0.22	EUR	free time	sport	\N	t
17230	db	2013-11-21	2013-11-21			-6.46	EUR	living	food	\N	t
17229	db	2013-11-21	2013-11-21			-9.11	EUR	free time	entertainment	\N	t
17258	db	2013-11-22	2013-11-22			-7.19	EUR	living	food	\N	t
17257	db	2013-11-22	2013-11-22			-7.82	EUR	free time	going out	\N	t
17256	db	2013-11-22	2013-11-22			-6.61	EUR	mobility	gas	\N	t
17250	db	2013-11-22	2013-11-22			-20.00	EUR	other	cash	\N	t
17285	db	2013-11-23	2013-11-23			-12.32	EUR	health	wellness	\N	t
17284	db	2013-11-23	2013-11-23			-7.86	EUR	free time	going out	\N	t
17326	db	2013-11-25	2013-11-25			-2.13	EUR	living	food	\N	t
17352	db	2013-11-26	2013-11-26			-3.38	EUR	free time	hobbies	\N	t
17378	db	2013-11-27	2013-11-27			-2.48	EUR	free time	sport	\N	t
17405	db	2013-11-28	2013-11-28			-9.62	EUR	living	food	\N	t
17404	db	2013-11-28	2013-11-28			-2.81	EUR	free time	entertainment	\N	t
17433	db	2013-11-29	2013-11-29			-0.51	EUR	living	food	\N	t
17432	db	2013-11-29	2013-11-29			-6.39	EUR	free time	going out	\N	t
17431	db	2013-11-29	2013-11-29			-4.95	EUR	mobility	gas	\N	t
17425	db	2013-11-29	2013-11-29			-20.00	EUR	other	cash	\N	t
17460	db	2013-11-30	2013-11-30			-1.67	EUR	health	wellness	\N	t
17459	db	2013-11-30	2013-11-30			-17.50	EUR	free time	going out	\N	t
17486	db	2013-12-01	2013-12-01			-10.00	EUR	house	phone	\N	t
17512	db	2013-12-02	2013-12-02			-10.00	EUR	house	electricity	\N	t
17501	db	2013-12-02	2013-12-02			-1.01	EUR	living	food	\N	t
17538	db	2013-12-03	2013-12-03			-10.00	EUR	house	internet	\N	t
17527	db	2013-12-03	2013-12-03			-0.59	EUR	free time	hobbies	\N	t
17564	db	2013-12-04	2013-12-04			-250.00	EUR	house	rent	\N	t
17553	db	2013-12-04	2013-12-04			-0.92	EUR	free time	sport	\N	t
17590	db	2013-12-05	2013-12-05			-10.00	EUR	finance	costs and fees	\N	t
17580	db	2013-12-05	2013-12-05			-0.48	EUR	living	food	\N	t
17579	db	2013-12-05	2013-12-05			-8.27	EUR	free time	entertainment	\N	t
17616	db	2013-12-06	2013-12-06			-50.00	EUR	finance	insurance	\N	t
17608	db	2013-12-06	2013-12-06			-15.23	EUR	living	food	\N	t
17607	db	2013-12-06	2013-12-06			-6.39	EUR	free time	going out	\N	t
17606	db	2013-12-06	2013-12-06			-12.68	EUR	mobility	gas	\N	t
17600	db	2013-12-06	2013-12-06			-20.00	EUR	other	cash	\N	t
17642	db	2013-12-07	2013-12-07			-44.51	EUR	health	doctor visits	\N	t
17635	db	2013-12-07	2013-12-07			-4.01	EUR	health	wellness	\N	t
17634	db	2013-12-07	2013-12-07			-5.82	EUR	free time	going out	\N	t
17668	db	2013-12-08	2013-12-08			1000.00	EUR	work and training	salary	\N	t
17676	db	2013-12-09	2013-12-09			-6.94	EUR	living	food	\N	t
17719	db	2013-12-10	2013-12-10			-63.69	EUR	living	pets	\N	t
17702	db	2013-12-10	2013-12-10			-3.31	EUR	free time	hobbies	\N	t
17728	db	2013-12-11	2013-12-11			-4.04	EUR	free time	sport	\N	t
17755	db	2013-12-12	2013-12-12			-2.92	EUR	living	food	\N	t
17754	db	2013-12-12	2013-12-12			-6.04	EUR	free time	entertainment	\N	t
17783	db	2013-12-13	2013-12-13			-5.40	EUR	living	food	\N	t
17782	db	2013-12-13	2013-12-13			-11.04	EUR	free time	going out	\N	t
17781	db	2013-12-13	2013-12-13			-19.93	EUR	mobility	gas	\N	t
17775	db	2013-12-13	2013-12-13			-20.00	EUR	other	cash	\N	t
17810	db	2013-12-14	2013-12-14			-5.52	EUR	health	wellness	\N	t
17809	db	2013-12-14	2013-12-14			-13.97	EUR	free time	going out	\N	t
17845	db	2013-12-15	2013-12-15			-68.63	EUR	living	household	\N	t
17851	db	2013-12-16	2013-12-16			-8.12	EUR	living	food	\N	t
17877	db	2013-12-17	2013-12-17			-7.18	EUR	free time	hobbies	\N	t
17903	db	2013-12-18	2013-12-18			-1.42	EUR	free time	sport	\N	t
17930	db	2013-12-19	2013-12-19			-8.53	EUR	living	food	\N	t
17929	db	2013-12-19	2013-12-19			-4.66	EUR	free time	entertainment	\N	t
17972	db	2013-12-20	2013-12-20			-2.41	EUR	free time	gadgets	\N	t
17971	db	2013-12-20	2013-12-20			-21.97	EUR	living	clothes	\N	t
17958	db	2013-12-20	2013-12-20			-11.17	EUR	living	food	\N	t
17957	db	2013-12-20	2013-12-20			-14.91	EUR	free time	going out	\N	t
17956	db	2013-12-20	2013-12-20			-11.22	EUR	mobility	gas	\N	t
17950	db	2013-12-20	2013-12-20			-20.00	EUR	other	cash	\N	t
17999	db	2013-12-21	2013-12-21			-19.77	EUR	free time	presents	\N	t
17985	db	2013-12-21	2013-12-21			-0.13	EUR	health	wellness	\N	t
17984	db	2013-12-21	2013-12-21			-19.85	EUR	free time	going out	\N	t
18026	db	2013-12-23	2013-12-23			-2.04	EUR	living	food	\N	t
18052	db	2013-12-24	2013-12-24			-3.52	EUR	free time	hobbies	\N	t
18078	db	2013-12-25	2013-12-25			-9.86	EUR	free time	sport	\N	t
18105	db	2013-12-26	2013-12-26			-9.22	EUR	living	food	\N	t
18104	db	2013-12-26	2013-12-26			-0.75	EUR	free time	entertainment	\N	t
18133	db	2013-12-27	2013-12-27			-19.54	EUR	living	food	\N	t
18132	db	2013-12-27	2013-12-27			-11.86	EUR	free time	going out	\N	t
18131	db	2013-12-27	2013-12-27			-13.17	EUR	mobility	gas	\N	t
18125	db	2013-12-27	2013-12-27			-20.00	EUR	other	cash	\N	t
18160	db	2013-12-28	2013-12-28			-4.34	EUR	health	wellness	\N	t
18159	db	2013-12-28	2013-12-28			-0.59	EUR	free time	going out	\N	t
18201	db	2013-12-30	2013-12-30			-5.12	EUR	living	food	\N	t
18227	db	2013-12-31	2013-12-31			-4.54	EUR	free time	hobbies	\N	t
18261	db	2014-01-01	2014-01-01			-10.00	EUR	house	phone	\N	t
18253	db	2014-01-01	2014-01-01			-3.05	EUR	free time	sport	\N	t
18287	db	2014-01-02	2014-01-02			-10.00	EUR	house	electricity	\N	t
18280	db	2014-01-02	2014-01-02			-9.54	EUR	living	food	\N	t
18279	db	2014-01-02	2014-01-02			-4.31	EUR	free time	entertainment	\N	t
18313	db	2014-01-03	2014-01-03			-10.00	EUR	house	internet	\N	t
18308	db	2014-01-03	2014-01-03			-19.44	EUR	living	food	\N	t
18307	db	2014-01-03	2014-01-03			-12.32	EUR	free time	going out	\N	t
18306	db	2014-01-03	2014-01-03			-9.71	EUR	mobility	gas	\N	t
18300	db	2014-01-03	2014-01-03			-20.00	EUR	other	cash	\N	t
18339	db	2014-01-04	2014-01-04			-250.00	EUR	house	rent	\N	t
18335	db	2014-01-04	2014-01-04			-3.65	EUR	health	wellness	\N	t
18334	db	2014-01-04	2014-01-04			-8.13	EUR	free time	going out	\N	t
18365	db	2014-01-05	2014-01-05			-10.00	EUR	finance	costs and fees	\N	t
18391	db	2014-01-06	2014-01-06			-50.00	EUR	finance	insurance	\N	t
18376	db	2014-01-06	2014-01-06			-1.45	EUR	living	food	\N	t
18417	db	2014-01-07	2014-01-07			-22.20	EUR	health	doctor visits	\N	t
18402	db	2014-01-07	2014-01-07			-2.73	EUR	free time	hobbies	\N	t
18443	db	2014-01-08	2014-01-08			1000.00	EUR	work and training	salary	\N	t
18428	db	2014-01-08	2014-01-08			-7.00	EUR	free time	sport	\N	t
18455	db	2014-01-09	2014-01-09			-7.03	EUR	living	food	\N	t
18454	db	2014-01-09	2014-01-09			-4.26	EUR	free time	entertainment	\N	t
18494	db	2014-01-10	2014-01-10			-29.70	EUR	living	pets	\N	t
18483	db	2014-01-10	2014-01-10			-11.35	EUR	living	food	\N	t
18482	db	2014-01-10	2014-01-10			-9.64	EUR	free time	going out	\N	t
18481	db	2014-01-10	2014-01-10			-14.22	EUR	mobility	gas	\N	t
18475	db	2014-01-10	2014-01-10			-20.00	EUR	other	cash	\N	t
18510	db	2014-01-11	2014-01-11			-18.85	EUR	health	wellness	\N	t
18509	db	2014-01-11	2014-01-11			-3.72	EUR	free time	going out	\N	t
18551	db	2014-01-13	2014-01-13			-2.45	EUR	living	food	\N	t
18577	db	2014-01-14	2014-01-14			-9.14	EUR	free time	hobbies	\N	t
18620	db	2014-01-15	2014-01-15			-75.73	EUR	living	household	\N	t
18603	db	2014-01-15	2014-01-15			-3.78	EUR	free time	sport	\N	t
18630	db	2014-01-16	2014-01-16			-9.78	EUR	living	food	\N	t
18629	db	2014-01-16	2014-01-16			-9.69	EUR	free time	entertainment	\N	t
18658	db	2014-01-17	2014-01-17			-13.95	EUR	living	food	\N	t
18657	db	2014-01-17	2014-01-17			-2.44	EUR	free time	going out	\N	t
18656	db	2014-01-17	2014-01-17			-14.45	EUR	mobility	gas	\N	t
18650	db	2014-01-17	2014-01-17			-20.00	EUR	other	cash	\N	t
18685	db	2014-01-18	2014-01-18			-6.21	EUR	health	wellness	\N	t
18684	db	2014-01-18	2014-01-18			-7.46	EUR	free time	going out	\N	t
18747	db	2014-01-20	2014-01-20			-2.48	EUR	free time	gadgets	\N	t
18746	db	2014-01-20	2014-01-20			-5.35	EUR	living	clothes	\N	t
18726	db	2014-01-20	2014-01-20			-1.36	EUR	living	food	\N	t
18752	db	2014-01-21	2014-01-21			-6.76	EUR	free time	hobbies	\N	t
18778	db	2014-01-22	2014-01-22			-5.51	EUR	free time	sport	\N	t
18805	db	2014-01-23	2014-01-23			-9.50	EUR	living	food	\N	t
18804	db	2014-01-23	2014-01-23			-3.93	EUR	free time	entertainment	\N	t
18833	db	2014-01-24	2014-01-24			-2.33	EUR	living	food	\N	t
18832	db	2014-01-24	2014-01-24			-15.09	EUR	free time	going out	\N	t
18831	db	2014-01-24	2014-01-24			-4.19	EUR	mobility	gas	\N	t
18825	db	2014-01-24	2014-01-24			-20.00	EUR	other	cash	\N	t
18860	db	2014-01-25	2014-01-25			-13.95	EUR	health	wellness	\N	t
18859	db	2014-01-25	2014-01-25			-6.21	EUR	free time	going out	\N	t
18901	db	2014-01-27	2014-01-27			-7.92	EUR	living	food	\N	t
18927	db	2014-01-28	2014-01-28			-5.66	EUR	free time	hobbies	\N	t
18953	db	2014-01-29	2014-01-29			-8.17	EUR	free time	sport	\N	t
18980	db	2014-01-30	2014-01-30			-6.06	EUR	living	food	\N	t
18979	db	2014-01-30	2014-01-30			-3.59	EUR	free time	entertainment	\N	t
19008	db	2014-01-31	2014-01-31			-16.68	EUR	living	food	\N	t
19007	db	2014-01-31	2014-01-31			-1.70	EUR	free time	going out	\N	t
19006	db	2014-01-31	2014-01-31			-14.67	EUR	mobility	gas	\N	t
19000	db	2014-01-31	2014-01-31			-20.00	EUR	other	cash	\N	t
19036	db	2014-02-01	2014-02-01			-10.00	EUR	house	phone	\N	t
19035	db	2014-02-01	2014-02-01			-5.38	EUR	health	wellness	\N	t
19034	db	2014-02-01	2014-02-01			-6.47	EUR	free time	going out	\N	t
19062	db	2014-02-02	2014-02-02			-10.00	EUR	house	electricity	\N	t
19088	db	2014-02-03	2014-02-03			-10.00	EUR	house	internet	\N	t
19076	db	2014-02-03	2014-02-03			-6.22	EUR	living	food	\N	t
19114	db	2014-02-04	2014-02-04			-250.00	EUR	house	rent	\N	t
19102	db	2014-02-04	2014-02-04			-7.52	EUR	free time	hobbies	\N	t
19140	db	2014-02-05	2014-02-05			-10.00	EUR	finance	costs and fees	\N	t
19128	db	2014-02-05	2014-02-05			-7.42	EUR	free time	sport	\N	t
19166	db	2014-02-06	2014-02-06			-50.00	EUR	finance	insurance	\N	t
19155	db	2014-02-06	2014-02-06			-5.19	EUR	living	food	\N	t
19154	db	2014-02-06	2014-02-06			-0.45	EUR	free time	entertainment	\N	t
19192	db	2014-02-07	2014-02-07			-48.98	EUR	health	doctor visits	\N	t
19183	db	2014-02-07	2014-02-07			-9.24	EUR	living	food	\N	t
19182	db	2014-02-07	2014-02-07			-1.78	EUR	free time	going out	\N	t
19181	db	2014-02-07	2014-02-07			-17.14	EUR	mobility	gas	\N	t
19175	db	2014-02-07	2014-02-07			-20.00	EUR	other	cash	\N	t
19218	db	2014-02-08	2014-02-08			1000.00	EUR	work and training	salary	\N	t
19210	db	2014-02-08	2014-02-08			-9.63	EUR	health	wellness	\N	t
19209	db	2014-02-08	2014-02-08			-4.20	EUR	free time	going out	\N	t
19269	db	2014-02-10	2014-02-10			-24.61	EUR	living	pets	\N	t
19251	db	2014-02-10	2014-02-10			-1.14	EUR	living	food	\N	t
19277	db	2014-02-11	2014-02-11			-6.29	EUR	free time	hobbies	\N	t
19303	db	2014-02-12	2014-02-12			-2.20	EUR	free time	sport	\N	t
19330	db	2014-02-13	2014-02-13			-9.84	EUR	living	food	\N	t
19329	db	2014-02-13	2014-02-13			-5.77	EUR	free time	entertainment	\N	t
19358	db	2014-02-14	2014-02-14			-16.97	EUR	living	food	\N	t
19357	db	2014-02-14	2014-02-14			-4.60	EUR	free time	going out	\N	t
19356	db	2014-02-14	2014-02-14			-7.33	EUR	mobility	gas	\N	t
19350	db	2014-02-14	2014-02-14			-20.00	EUR	other	cash	\N	t
19395	db	2014-02-15	2014-02-15			-39.30	EUR	living	household	\N	t
19385	db	2014-02-15	2014-02-15			-0.12	EUR	health	wellness	\N	t
19384	db	2014-02-15	2014-02-15			-5.92	EUR	free time	going out	\N	t
19426	db	2014-02-17	2014-02-17			-3.91	EUR	living	food	\N	t
19452	db	2014-02-18	2014-02-18			-3.67	EUR	free time	hobbies	\N	t
19478	db	2014-02-19	2014-02-19			-6.85	EUR	free time	sport	\N	t
19522	db	2014-02-20	2014-02-20			-5.05	EUR	free time	gadgets	\N	t
19521	db	2014-02-20	2014-02-20			-3.61	EUR	living	clothes	\N	t
19505	db	2014-02-20	2014-02-20			-8.58	EUR	living	food	\N	t
19504	db	2014-02-20	2014-02-20			-2.68	EUR	free time	entertainment	\N	t
19533	db	2014-02-21	2014-02-21			-15.90	EUR	living	food	\N	t
19532	db	2014-02-21	2014-02-21			-5.67	EUR	free time	going out	\N	t
19531	db	2014-02-21	2014-02-21			-6.07	EUR	mobility	gas	\N	t
19525	db	2014-02-21	2014-02-21			-20.00	EUR	other	cash	\N	t
19560	db	2014-02-22	2014-02-22			-18.77	EUR	health	wellness	\N	t
19559	db	2014-02-22	2014-02-22			-17.81	EUR	free time	going out	\N	t
19601	db	2014-02-24	2014-02-24			-9.54	EUR	living	food	\N	t
19627	db	2014-02-25	2014-02-25			-6.14	EUR	free time	hobbies	\N	t
19653	db	2014-02-26	2014-02-26			-6.45	EUR	free time	sport	\N	t
19680	db	2014-02-27	2014-02-27			-2.24	EUR	living	food	\N	t
19679	db	2014-02-27	2014-02-27			-2.46	EUR	free time	entertainment	\N	t
19708	db	2014-02-28	2014-02-28			-18.28	EUR	living	food	\N	t
19707	db	2014-02-28	2014-02-28			-9.25	EUR	free time	going out	\N	t
19706	db	2014-02-28	2014-02-28			-6.01	EUR	mobility	gas	\N	t
19700	db	2014-02-28	2014-02-28			-20.00	EUR	other	cash	\N	t
19736	db	2014-03-01	2014-03-01			-10.00	EUR	house	phone	\N	t
19735	db	2014-03-01	2014-03-01			-0.33	EUR	health	wellness	\N	t
19734	db	2014-03-01	2014-03-01			-5.17	EUR	free time	going out	\N	t
19762	db	2014-03-02	2014-03-02			-10.00	EUR	house	electricity	\N	t
19788	db	2014-03-03	2014-03-03			-10.00	EUR	house	internet	\N	t
19776	db	2014-03-03	2014-03-03			-5.22	EUR	living	food	\N	t
19814	db	2014-03-04	2014-03-04			-250.00	EUR	house	rent	\N	t
19802	db	2014-03-04	2014-03-04			-5.43	EUR	free time	hobbies	\N	t
19840	db	2014-03-05	2014-03-05			-10.00	EUR	finance	costs and fees	\N	t
19828	db	2014-03-05	2014-03-05			-0.55	EUR	free time	sport	\N	t
19866	db	2014-03-06	2014-03-06			-50.00	EUR	finance	insurance	\N	t
19855	db	2014-03-06	2014-03-06			-0.88	EUR	living	food	\N	t
19854	db	2014-03-06	2014-03-06			-6.70	EUR	free time	entertainment	\N	t
19892	db	2014-03-07	2014-03-07			-67.88	EUR	health	doctor visits	\N	t
19883	db	2014-03-07	2014-03-07			-2.43	EUR	living	food	\N	t
19882	db	2014-03-07	2014-03-07			-2.51	EUR	free time	going out	\N	t
19881	db	2014-03-07	2014-03-07			-9.17	EUR	mobility	gas	\N	t
19875	db	2014-03-07	2014-03-07			-20.00	EUR	other	cash	\N	t
19918	db	2014-03-08	2014-03-08			1000.00	EUR	work and training	salary	\N	t
19910	db	2014-03-08	2014-03-08			-18.26	EUR	health	wellness	\N	t
19909	db	2014-03-08	2014-03-08			-18.56	EUR	free time	going out	\N	t
19969	db	2014-03-10	2014-03-10			-16.86	EUR	living	pets	\N	t
19951	db	2014-03-10	2014-03-10			-5.94	EUR	living	food	\N	t
19977	db	2014-03-11	2014-03-11			-8.67	EUR	free time	hobbies	\N	t
20003	db	2014-03-12	2014-03-12			-3.35	EUR	free time	sport	\N	t
20030	db	2014-03-13	2014-03-13			-4.79	EUR	living	food	\N	t
20029	db	2014-03-13	2014-03-13			-9.50	EUR	free time	entertainment	\N	t
20058	db	2014-03-14	2014-03-14			-13.82	EUR	living	food	\N	t
20057	db	2014-03-14	2014-03-14			-17.46	EUR	free time	going out	\N	t
20056	db	2014-03-14	2014-03-14			-15.14	EUR	mobility	gas	\N	t
20050	db	2014-03-14	2014-03-14			-20.00	EUR	other	cash	\N	t
20095	db	2014-03-15	2014-03-15			-20.83	EUR	living	household	\N	t
20085	db	2014-03-15	2014-03-15			-10.12	EUR	health	wellness	\N	t
20084	db	2014-03-15	2014-03-15			-1.72	EUR	free time	going out	\N	t
20126	db	2014-03-17	2014-03-17			-6.41	EUR	living	food	\N	t
20152	db	2014-03-18	2014-03-18			-7.53	EUR	free time	hobbies	\N	t
20178	db	2014-03-19	2014-03-19			-3.98	EUR	free time	sport	\N	t
20222	db	2014-03-20	2014-03-20			-10.93	EUR	free time	gadgets	\N	t
20221	db	2014-03-20	2014-03-20			-76.95	EUR	living	clothes	\N	t
20205	db	2014-03-20	2014-03-20			-2.73	EUR	living	food	\N	t
20204	db	2014-03-20	2014-03-20			-1.33	EUR	free time	entertainment	\N	t
20233	db	2014-03-21	2014-03-21			-1.32	EUR	living	food	\N	t
20232	db	2014-03-21	2014-03-21			-10.99	EUR	free time	going out	\N	t
20231	db	2014-03-21	2014-03-21			-19.51	EUR	mobility	gas	\N	t
20225	db	2014-03-21	2014-03-21			-20.00	EUR	other	cash	\N	t
20260	db	2014-03-22	2014-03-22			-6.66	EUR	health	wellness	\N	t
20259	db	2014-03-22	2014-03-22			-4.17	EUR	free time	going out	\N	t
20301	db	2014-03-24	2014-03-24			-9.70	EUR	living	food	\N	t
20327	db	2014-03-25	2014-03-25			-3.08	EUR	free time	hobbies	\N	t
20353	db	2014-03-26	2014-03-26			-4.35	EUR	free time	sport	\N	t
20380	db	2014-03-27	2014-03-27			-2.33	EUR	living	food	\N	t
20379	db	2014-03-27	2014-03-27			-4.96	EUR	free time	entertainment	\N	t
20408	db	2014-03-28	2014-03-28			-16.94	EUR	living	food	\N	t
20407	db	2014-03-28	2014-03-28			-13.01	EUR	free time	going out	\N	t
20406	db	2014-03-28	2014-03-28			-13.68	EUR	mobility	gas	\N	t
20400	db	2014-03-28	2014-03-28			-20.00	EUR	other	cash	\N	t
20435	db	2014-03-29	2014-03-29			-4.35	EUR	health	wellness	\N	t
20434	db	2014-03-29	2014-03-29			-11.31	EUR	free time	going out	\N	t
20476	db	2014-03-31	2014-03-31			-8.92	EUR	living	food	\N	t
20511	db	2014-04-01	2014-04-01			-10.00	EUR	house	phone	\N	t
20502	db	2014-04-01	2014-04-01			-6.26	EUR	free time	hobbies	\N	t
20537	db	2014-04-02	2014-04-02			-10.00	EUR	house	electricity	\N	t
20528	db	2014-04-02	2014-04-02			-2.95	EUR	free time	sport	\N	t
20563	db	2014-04-03	2014-04-03			-10.00	EUR	house	internet	\N	t
20555	db	2014-04-03	2014-04-03			-3.36	EUR	living	food	\N	t
20554	db	2014-04-03	2014-04-03			-0.11	EUR	free time	entertainment	\N	t
20589	db	2014-04-04	2014-04-04			-250.00	EUR	house	rent	\N	t
20583	db	2014-04-04	2014-04-04			-7.67	EUR	living	food	\N	t
20582	db	2014-04-04	2014-04-04			-13.46	EUR	free time	going out	\N	t
20581	db	2014-04-04	2014-04-04			-2.11	EUR	mobility	gas	\N	t
20575	db	2014-04-04	2014-04-04			-20.00	EUR	other	cash	\N	t
20615	db	2014-04-05	2014-04-05			-10.00	EUR	finance	costs and fees	\N	t
20610	db	2014-04-05	2014-04-05			-2.13	EUR	health	wellness	\N	t
20609	db	2014-04-05	2014-04-05			-10.50	EUR	free time	going out	\N	t
20641	db	2014-04-06	2014-04-06			-50.00	EUR	finance	insurance	\N	t
20667	db	2014-04-07	2014-04-07			-51.81	EUR	health	doctor visits	\N	t
20651	db	2014-04-07	2014-04-07			-3.50	EUR	living	food	\N	t
20693	db	2014-04-08	2014-04-08			1000.00	EUR	work and training	salary	\N	t
20677	db	2014-04-08	2014-04-08			-0.63	EUR	free time	hobbies	\N	t
20703	db	2014-04-09	2014-04-09			-3.06	EUR	free time	sport	\N	t
20744	db	2014-04-10	2014-04-10			-5.07	EUR	living	pets	\N	t
20730	db	2014-04-10	2014-04-10			-2.98	EUR	living	food	\N	t
20729	db	2014-04-10	2014-04-10			-0.96	EUR	free time	entertainment	\N	t
20758	db	2014-04-11	2014-04-11			-8.63	EUR	living	food	\N	t
20757	db	2014-04-11	2014-04-11			-11.43	EUR	free time	going out	\N	t
20756	db	2014-04-11	2014-04-11			-0.57	EUR	mobility	gas	\N	t
20750	db	2014-04-11	2014-04-11			-20.00	EUR	other	cash	\N	t
20785	db	2014-04-12	2014-04-12			-1.64	EUR	health	wellness	\N	t
20784	db	2014-04-12	2014-04-12			-2.71	EUR	free time	going out	\N	t
20826	db	2014-04-14	2014-04-14			-0.03	EUR	living	food	\N	t
20870	db	2014-04-15	2014-04-15			-43.35	EUR	living	household	\N	t
20852	db	2014-04-15	2014-04-15			-5.55	EUR	free time	hobbies	\N	t
20878	db	2014-04-16	2014-04-16			-7.13	EUR	free time	sport	\N	t
20905	db	2014-04-17	2014-04-17			-6.97	EUR	living	food	\N	t
20904	db	2014-04-17	2014-04-17			-5.76	EUR	free time	entertainment	\N	t
20933	db	2014-04-18	2014-04-18			-5.48	EUR	living	food	\N	t
20932	db	2014-04-18	2014-04-18			-19.20	EUR	free time	going out	\N	t
20931	db	2014-04-18	2014-04-18			-10.58	EUR	mobility	gas	\N	t
20925	db	2014-04-18	2014-04-18			-20.00	EUR	other	cash	\N	t
20960	db	2014-04-19	2014-04-19			-9.57	EUR	health	wellness	\N	t
20959	db	2014-04-19	2014-04-19			-8.51	EUR	free time	going out	\N	t
20997	db	2014-04-20	2014-04-20			-50.79	EUR	free time	gadgets	\N	t
20996	db	2014-04-20	2014-04-20			-41.30	EUR	living	clothes	\N	t
21001	db	2014-04-21	2014-04-21			-9.98	EUR	living	food	\N	t
21027	db	2014-04-22	2014-04-22			-6.85	EUR	free time	hobbies	\N	t
21053	db	2014-04-23	2014-04-23			-6.96	EUR	free time	sport	\N	t
21080	db	2014-04-24	2014-04-24			-0.69	EUR	living	food	\N	t
21079	db	2014-04-24	2014-04-24			-6.30	EUR	free time	entertainment	\N	t
21108	db	2014-04-25	2014-04-25			-8.75	EUR	living	food	\N	t
21107	db	2014-04-25	2014-04-25			-5.59	EUR	free time	going out	\N	t
21106	db	2014-04-25	2014-04-25			-1.18	EUR	mobility	gas	\N	t
21100	db	2014-04-25	2014-04-25			-20.00	EUR	other	cash	\N	t
21135	db	2014-04-26	2014-04-26			-0.02	EUR	health	wellness	\N	t
21134	db	2014-04-26	2014-04-26			-16.74	EUR	free time	going out	\N	t
21176	db	2014-04-28	2014-04-28			-8.09	EUR	living	food	\N	t
21202	db	2014-04-29	2014-04-29			-4.06	EUR	free time	hobbies	\N	t
21228	db	2014-04-30	2014-04-30			-0.53	EUR	free time	sport	\N	t
21261	db	2014-05-01	2014-05-01			-10.00	EUR	house	phone	\N	t
21255	db	2014-05-01	2014-05-01			-3.52	EUR	living	food	\N	t
21254	db	2014-05-01	2014-05-01			-0.06	EUR	free time	entertainment	\N	t
21287	db	2014-05-02	2014-05-02			-10.00	EUR	house	electricity	\N	t
21283	db	2014-05-02	2014-05-02			-6.24	EUR	living	food	\N	t
21282	db	2014-05-02	2014-05-02			-19.15	EUR	free time	going out	\N	t
21281	db	2014-05-02	2014-05-02			-18.14	EUR	mobility	gas	\N	t
21275	db	2014-05-02	2014-05-02			-20.00	EUR	other	cash	\N	t
21313	db	2014-05-03	2014-05-03			-10.00	EUR	house	internet	\N	t
21310	db	2014-05-03	2014-05-03			-1.85	EUR	health	wellness	\N	t
21309	db	2014-05-03	2014-05-03			-18.29	EUR	free time	going out	\N	t
21339	db	2014-05-04	2014-05-04			-250.00	EUR	house	rent	\N	t
21365	db	2014-05-05	2014-05-05			-10.00	EUR	finance	costs and fees	\N	t
21351	db	2014-05-05	2014-05-05			-0.58	EUR	living	food	\N	t
21391	db	2014-05-06	2014-05-06			-50.00	EUR	finance	insurance	\N	t
21377	db	2014-05-06	2014-05-06			-0.55	EUR	free time	hobbies	\N	t
21417	db	2014-05-07	2014-05-07			-80.37	EUR	health	doctor visits	\N	t
21403	db	2014-05-07	2014-05-07			-4.26	EUR	free time	sport	\N	t
21443	db	2014-05-08	2014-05-08			1000.00	EUR	work and training	salary	\N	t
21430	db	2014-05-08	2014-05-08			-9.11	EUR	living	food	\N	t
21429	db	2014-05-08	2014-05-08			-6.23	EUR	free time	entertainment	\N	t
21458	db	2014-05-09	2014-05-09			-18.42	EUR	living	food	\N	t
21457	db	2014-05-09	2014-05-09			-19.95	EUR	free time	going out	\N	t
21456	db	2014-05-09	2014-05-09			-13.37	EUR	mobility	gas	\N	t
21450	db	2014-05-09	2014-05-09			-20.00	EUR	other	cash	\N	t
21494	db	2014-05-10	2014-05-10			-8.02	EUR	living	pets	\N	t
21485	db	2014-05-10	2014-05-10			-12.42	EUR	health	wellness	\N	t
21484	db	2014-05-10	2014-05-10			-4.44	EUR	free time	going out	\N	t
21526	db	2014-05-12	2014-05-12			-5.21	EUR	living	food	\N	t
21552	db	2014-05-13	2014-05-13			-9.09	EUR	free time	hobbies	\N	t
21578	db	2014-05-14	2014-05-14			-4.16	EUR	free time	sport	\N	t
21620	db	2014-05-15	2014-05-15			-22.14	EUR	living	household	\N	t
21605	db	2014-05-15	2014-05-15			-4.08	EUR	living	food	\N	t
21604	db	2014-05-15	2014-05-15			-6.44	EUR	free time	entertainment	\N	t
21633	db	2014-05-16	2014-05-16			-6.28	EUR	living	food	\N	t
21632	db	2014-05-16	2014-05-16			-7.41	EUR	free time	going out	\N	t
21631	db	2014-05-16	2014-05-16			-10.57	EUR	mobility	gas	\N	t
21625	db	2014-05-16	2014-05-16			-20.00	EUR	other	cash	\N	t
21660	db	2014-05-17	2014-05-17			-17.44	EUR	health	wellness	\N	t
21659	db	2014-05-17	2014-05-17			-19.92	EUR	free time	going out	\N	t
21701	db	2014-05-19	2014-05-19			-7.74	EUR	living	food	\N	t
21747	db	2014-05-20	2014-05-20			-14.19	EUR	free time	gadgets	\N	t
21746	db	2014-05-20	2014-05-20			-8.34	EUR	living	clothes	\N	t
21727	db	2014-05-20	2014-05-20			-3.61	EUR	free time	hobbies	\N	t
21753	db	2014-05-21	2014-05-21			-6.81	EUR	free time	sport	\N	t
21780	db	2014-05-22	2014-05-22			-8.88	EUR	living	food	\N	t
21779	db	2014-05-22	2014-05-22			-1.11	EUR	free time	entertainment	\N	t
21808	db	2014-05-23	2014-05-23			-2.33	EUR	living	food	\N	t
21807	db	2014-05-23	2014-05-23			-1.22	EUR	free time	going out	\N	t
21806	db	2014-05-23	2014-05-23			-8.55	EUR	mobility	gas	\N	t
21800	db	2014-05-23	2014-05-23			-20.00	EUR	other	cash	\N	t
21835	db	2014-05-24	2014-05-24			-2.54	EUR	health	wellness	\N	t
21834	db	2014-05-24	2014-05-24			-17.60	EUR	free time	going out	\N	t
21876	db	2014-05-26	2014-05-26			-7.20	EUR	living	food	\N	t
21902	db	2014-05-27	2014-05-27			-3.64	EUR	free time	hobbies	\N	t
21928	db	2014-05-28	2014-05-28			-0.20	EUR	free time	sport	\N	t
21955	db	2014-05-29	2014-05-29			-9.04	EUR	living	food	\N	t
21954	db	2014-05-29	2014-05-29			-8.88	EUR	free time	entertainment	\N	t
21983	db	2014-05-30	2014-05-30			-2.73	EUR	living	food	\N	t
21982	db	2014-05-30	2014-05-30			-4.66	EUR	free time	going out	\N	t
21981	db	2014-05-30	2014-05-30			-6.67	EUR	mobility	gas	\N	t
21975	db	2014-05-30	2014-05-30			-20.00	EUR	other	cash	\N	t
22010	db	2014-05-31	2014-05-31			-19.63	EUR	health	wellness	\N	t
22009	db	2014-05-31	2014-05-31			-3.12	EUR	free time	going out	\N	t
22036	db	2014-06-01	2014-06-01			-10.00	EUR	house	phone	\N	t
22062	db	2014-06-02	2014-06-02			-10.00	EUR	house	electricity	\N	t
22051	db	2014-06-02	2014-06-02			-2.87	EUR	living	food	\N	t
22088	db	2014-06-03	2014-06-03			-10.00	EUR	house	internet	\N	t
22077	db	2014-06-03	2014-06-03			-7.57	EUR	free time	hobbies	\N	t
22114	db	2014-06-04	2014-06-04			-250.00	EUR	house	rent	\N	t
22103	db	2014-06-04	2014-06-04			-9.10	EUR	free time	sport	\N	t
22140	db	2014-06-05	2014-06-05			-10.00	EUR	finance	costs and fees	\N	t
22130	db	2014-06-05	2014-06-05			-8.26	EUR	living	food	\N	t
22129	db	2014-06-05	2014-06-05			-6.36	EUR	free time	entertainment	\N	t
22166	db	2014-06-06	2014-06-06			-50.00	EUR	finance	insurance	\N	t
22158	db	2014-06-06	2014-06-06			-13.11	EUR	living	food	\N	t
22157	db	2014-06-06	2014-06-06			-9.29	EUR	free time	going out	\N	t
22156	db	2014-06-06	2014-06-06			-2.66	EUR	mobility	gas	\N	t
22150	db	2014-06-06	2014-06-06			-20.00	EUR	other	cash	\N	t
22192	db	2014-06-07	2014-06-07			-93.10	EUR	health	doctor visits	\N	t
22185	db	2014-06-07	2014-06-07			-7.40	EUR	health	wellness	\N	t
22184	db	2014-06-07	2014-06-07			-17.59	EUR	free time	going out	\N	t
22218	db	2014-06-08	2014-06-08			1000.00	EUR	work and training	salary	\N	t
22226	db	2014-06-09	2014-06-09			-7.04	EUR	living	food	\N	t
22269	db	2014-06-10	2014-06-10			-33.48	EUR	living	pets	\N	t
22252	db	2014-06-10	2014-06-10			-0.19	EUR	free time	hobbies	\N	t
22278	db	2014-06-11	2014-06-11			-7.02	EUR	free time	sport	\N	t
22305	db	2014-06-12	2014-06-12			-5.15	EUR	living	food	\N	t
22304	db	2014-06-12	2014-06-12			-6.91	EUR	free time	entertainment	\N	t
22333	db	2014-06-13	2014-06-13			-14.23	EUR	living	food	\N	t
22332	db	2014-06-13	2014-06-13			-15.38	EUR	free time	going out	\N	t
22331	db	2014-06-13	2014-06-13			-9.67	EUR	mobility	gas	\N	t
22325	db	2014-06-13	2014-06-13			-20.00	EUR	other	cash	\N	t
22360	db	2014-06-14	2014-06-14			-6.75	EUR	health	wellness	\N	t
22359	db	2014-06-14	2014-06-14			-11.17	EUR	free time	going out	\N	t
22395	db	2014-06-15	2014-06-15			-78.34	EUR	living	household	\N	t
22401	db	2014-06-16	2014-06-16			-8.43	EUR	living	food	\N	t
22427	db	2014-06-17	2014-06-17			-6.16	EUR	free time	hobbies	\N	t
22453	db	2014-06-18	2014-06-18			-1.31	EUR	free time	sport	\N	t
22480	db	2014-06-19	2014-06-19			-2.60	EUR	living	food	\N	t
22479	db	2014-06-19	2014-06-19			-9.11	EUR	free time	entertainment	\N	t
22522	db	2014-06-20	2014-06-20			-19.24	EUR	free time	gadgets	\N	t
22521	db	2014-06-20	2014-06-20			-75.39	EUR	living	clothes	\N	t
22508	db	2014-06-20	2014-06-20			-12.31	EUR	living	food	\N	t
22507	db	2014-06-20	2014-06-20			-16.96	EUR	free time	going out	\N	t
22506	db	2014-06-20	2014-06-20			-9.00	EUR	mobility	gas	\N	t
22500	db	2014-06-20	2014-06-20			-20.00	EUR	other	cash	\N	t
22535	db	2014-06-21	2014-06-21			-18.12	EUR	health	wellness	\N	t
22534	db	2014-06-21	2014-06-21			-16.77	EUR	free time	going out	\N	t
22576	db	2014-06-23	2014-06-23			-1.98	EUR	living	food	\N	t
22602	db	2014-06-24	2014-06-24			-4.51	EUR	free time	hobbies	\N	t
22628	db	2014-06-25	2014-06-25			-7.20	EUR	free time	sport	\N	t
22655	db	2014-06-26	2014-06-26			-3.17	EUR	living	food	\N	t
22654	db	2014-06-26	2014-06-26			-2.06	EUR	free time	entertainment	\N	t
22683	db	2014-06-27	2014-06-27			-5.10	EUR	living	food	\N	t
22682	db	2014-06-27	2014-06-27			-10.81	EUR	free time	going out	\N	t
22681	db	2014-06-27	2014-06-27			-16.22	EUR	mobility	gas	\N	t
22675	db	2014-06-27	2014-06-27			-20.00	EUR	other	cash	\N	t
22710	db	2014-06-28	2014-06-28			-17.14	EUR	health	wellness	\N	t
22709	db	2014-06-28	2014-06-28			-19.29	EUR	free time	going out	\N	t
22748	db	2014-06-29	2014-06-29			-148.41	EUR	free time	travel	\N	t
22751	db	2014-06-30	2014-06-30			-1.04	EUR	living	food	\N	t
22786	db	2014-07-01	2014-07-01			-10.00	EUR	house	phone	\N	t
22777	db	2014-07-01	2014-07-01			-2.91	EUR	free time	hobbies	\N	t
22812	db	2014-07-02	2014-07-02			-10.00	EUR	house	electricity	\N	t
22803	db	2014-07-02	2014-07-02			-9.36	EUR	free time	sport	\N	t
22838	db	2014-07-03	2014-07-03			-10.00	EUR	house	internet	\N	t
22830	db	2014-07-03	2014-07-03			-9.15	EUR	living	food	\N	t
22829	db	2014-07-03	2014-07-03			-7.51	EUR	free time	entertainment	\N	t
22864	db	2014-07-04	2014-07-04			-250.00	EUR	house	rent	\N	t
22858	db	2014-07-04	2014-07-04			-1.10	EUR	living	food	\N	t
22857	db	2014-07-04	2014-07-04			-10.21	EUR	free time	going out	\N	t
22856	db	2014-07-04	2014-07-04			-7.44	EUR	mobility	gas	\N	t
22850	db	2014-07-04	2014-07-04			-20.00	EUR	other	cash	\N	t
22890	db	2014-07-05	2014-07-05			-10.00	EUR	finance	costs and fees	\N	t
22885	db	2014-07-05	2014-07-05			-5.45	EUR	health	wellness	\N	t
22884	db	2014-07-05	2014-07-05			-0.90	EUR	free time	going out	\N	t
22916	db	2014-07-06	2014-07-06			-50.00	EUR	finance	insurance	\N	t
22942	db	2014-07-07	2014-07-07			-85.43	EUR	health	doctor visits	\N	t
22926	db	2014-07-07	2014-07-07			-8.90	EUR	living	food	\N	t
22968	db	2014-07-08	2014-07-08			1000.00	EUR	work and training	salary	\N	t
22952	db	2014-07-08	2014-07-08			-7.87	EUR	free time	hobbies	\N	t
22978	db	2014-07-09	2014-07-09			-9.46	EUR	free time	sport	\N	t
23019	db	2014-07-10	2014-07-10			-72.32	EUR	living	pets	\N	t
23005	db	2014-07-10	2014-07-10			-3.85	EUR	living	food	\N	t
23004	db	2014-07-10	2014-07-10			-1.98	EUR	free time	entertainment	\N	t
23033	db	2014-07-11	2014-07-11			-11.48	EUR	living	food	\N	t
23032	db	2014-07-11	2014-07-11			-10.94	EUR	free time	going out	\N	t
23031	db	2014-07-11	2014-07-11			-4.11	EUR	mobility	gas	\N	t
23025	db	2014-07-11	2014-07-11			-20.00	EUR	other	cash	\N	t
23060	db	2014-07-12	2014-07-12			-4.67	EUR	health	wellness	\N	t
23059	db	2014-07-12	2014-07-12			-16.18	EUR	free time	going out	\N	t
23101	db	2014-07-14	2014-07-14			-8.70	EUR	living	food	\N	t
23145	db	2014-07-15	2014-07-15			-66.34	EUR	living	household	\N	t
23127	db	2014-07-15	2014-07-15			-3.29	EUR	free time	hobbies	\N	t
23153	db	2014-07-16	2014-07-16			-3.99	EUR	free time	sport	\N	t
23180	db	2014-07-17	2014-07-17			-9.62	EUR	living	food	\N	t
23179	db	2014-07-17	2014-07-17			-8.06	EUR	free time	entertainment	\N	t
23208	db	2014-07-18	2014-07-18			-7.24	EUR	living	food	\N	t
23207	db	2014-07-18	2014-07-18			-14.57	EUR	free time	going out	\N	t
23206	db	2014-07-18	2014-07-18			-9.96	EUR	mobility	gas	\N	t
23200	db	2014-07-18	2014-07-18			-20.00	EUR	other	cash	\N	t
23235	db	2014-07-19	2014-07-19			-4.65	EUR	health	wellness	\N	t
23234	db	2014-07-19	2014-07-19			-4.47	EUR	free time	going out	\N	t
23272	db	2014-07-20	2014-07-20			-66.21	EUR	free time	gadgets	\N	t
23271	db	2014-07-20	2014-07-20			-0.36	EUR	living	clothes	\N	t
23276	db	2014-07-21	2014-07-21			-4.88	EUR	living	food	\N	t
23302	db	2014-07-22	2014-07-22			-0.74	EUR	free time	hobbies	\N	t
23328	db	2014-07-23	2014-07-23			-2.88	EUR	free time	sport	\N	t
23355	db	2014-07-24	2014-07-24			-4.44	EUR	living	food	\N	t
23354	db	2014-07-24	2014-07-24			-5.32	EUR	free time	entertainment	\N	t
23383	db	2014-07-25	2014-07-25			-12.52	EUR	living	food	\N	t
23382	db	2014-07-25	2014-07-25			-13.50	EUR	free time	going out	\N	t
23381	db	2014-07-25	2014-07-25			-7.60	EUR	mobility	gas	\N	t
23375	db	2014-07-25	2014-07-25			-20.00	EUR	other	cash	\N	t
23410	db	2014-07-26	2014-07-26			-10.29	EUR	health	wellness	\N	t
23409	db	2014-07-26	2014-07-26			-1.27	EUR	free time	going out	\N	t
23451	db	2014-07-28	2014-07-28			-2.05	EUR	living	food	\N	t
23477	db	2014-07-29	2014-07-29			-9.97	EUR	free time	hobbies	\N	t
23503	db	2014-07-30	2014-07-30			-7.22	EUR	free time	sport	\N	t
23530	db	2014-07-31	2014-07-31			-1.46	EUR	living	food	\N	t
23529	db	2014-07-31	2014-07-31			-5.71	EUR	free time	entertainment	\N	t
23561	db	2014-08-01	2014-08-01			-10.00	EUR	house	phone	\N	t
23558	db	2014-08-01	2014-08-01			-3.36	EUR	living	food	\N	t
23557	db	2014-08-01	2014-08-01			-1.52	EUR	free time	going out	\N	t
23556	db	2014-08-01	2014-08-01			-16.11	EUR	mobility	gas	\N	t
23550	db	2014-08-01	2014-08-01			-20.00	EUR	other	cash	\N	t
23587	db	2014-08-02	2014-08-02			-10.00	EUR	house	electricity	\N	t
23585	db	2014-08-02	2014-08-02			-17.90	EUR	health	wellness	\N	t
23584	db	2014-08-02	2014-08-02			-6.48	EUR	free time	going out	\N	t
23613	db	2014-08-03	2014-08-03			-10.00	EUR	house	internet	\N	t
23639	db	2014-08-04	2014-08-04			-250.00	EUR	house	rent	\N	t
23626	db	2014-08-04	2014-08-04			-7.35	EUR	living	food	\N	t
23665	db	2014-08-05	2014-08-05			-10.00	EUR	finance	costs and fees	\N	t
23652	db	2014-08-05	2014-08-05			-1.42	EUR	free time	hobbies	\N	t
23691	db	2014-08-06	2014-08-06			-50.00	EUR	finance	insurance	\N	t
23678	db	2014-08-06	2014-08-06			-7.88	EUR	free time	sport	\N	t
23717	db	2014-08-07	2014-08-07			-77.00	EUR	health	doctor visits	\N	t
23705	db	2014-08-07	2014-08-07			-7.75	EUR	living	food	\N	t
23704	db	2014-08-07	2014-08-07			-5.14	EUR	free time	entertainment	\N	t
23743	db	2014-08-08	2014-08-08			1000.00	EUR	work and training	salary	\N	t
23733	db	2014-08-08	2014-08-08			-18.57	EUR	living	food	\N	t
23732	db	2014-08-08	2014-08-08			-6.95	EUR	free time	going out	\N	t
23731	db	2014-08-08	2014-08-08			-16.76	EUR	mobility	gas	\N	t
23725	db	2014-08-08	2014-08-08			-20.00	EUR	other	cash	\N	t
23760	db	2014-08-09	2014-08-09			-7.69	EUR	health	wellness	\N	t
23759	db	2014-08-09	2014-08-09			-15.63	EUR	free time	going out	\N	t
23794	db	2014-08-10	2014-08-10			-71.48	EUR	living	pets	\N	t
23801	db	2014-08-11	2014-08-11			-5.79	EUR	living	food	\N	t
23827	db	2014-08-12	2014-08-12			-9.95	EUR	free time	hobbies	\N	t
23853	db	2014-08-13	2014-08-13			-6.75	EUR	free time	sport	\N	t
23880	db	2014-08-14	2014-08-14			-7.78	EUR	living	food	\N	t
23879	db	2014-08-14	2014-08-14			-5.43	EUR	free time	entertainment	\N	t
23920	db	2014-08-15	2014-08-15			-12.26	EUR	living	household	\N	t
23908	db	2014-08-15	2014-08-15			-11.96	EUR	living	food	\N	t
23907	db	2014-08-15	2014-08-15			-13.07	EUR	free time	going out	\N	t
23906	db	2014-08-15	2014-08-15			-18.06	EUR	mobility	gas	\N	t
23900	db	2014-08-15	2014-08-15			-20.00	EUR	other	cash	\N	t
23935	db	2014-08-16	2014-08-16			-12.12	EUR	health	wellness	\N	t
23934	db	2014-08-16	2014-08-16			-17.78	EUR	free time	going out	\N	t
23976	db	2014-08-18	2014-08-18			-6.24	EUR	living	food	\N	t
24002	db	2014-08-19	2014-08-19			-9.39	EUR	free time	hobbies	\N	t
24047	db	2014-08-20	2014-08-20			-12.35	EUR	free time	gadgets	\N	t
24046	db	2014-08-20	2014-08-20			-23.48	EUR	living	clothes	\N	t
24028	db	2014-08-20	2014-08-20			-0.53	EUR	free time	sport	\N	t
24055	db	2014-08-21	2014-08-21			-8.19	EUR	living	food	\N	t
24054	db	2014-08-21	2014-08-21			-3.22	EUR	free time	entertainment	\N	t
24083	db	2014-08-22	2014-08-22			-0.16	EUR	living	food	\N	t
24082	db	2014-08-22	2014-08-22			-16.07	EUR	free time	going out	\N	t
24081	db	2014-08-22	2014-08-22			-9.47	EUR	mobility	gas	\N	t
24075	db	2014-08-22	2014-08-22			-20.00	EUR	other	cash	\N	t
24110	db	2014-08-23	2014-08-23			-11.18	EUR	health	wellness	\N	t
24109	db	2014-08-23	2014-08-23			-11.95	EUR	free time	going out	\N	t
24151	db	2014-08-25	2014-08-25			-2.47	EUR	living	food	\N	t
24177	db	2014-08-26	2014-08-26			-1.55	EUR	free time	hobbies	\N	t
24203	db	2014-08-27	2014-08-27			-7.70	EUR	free time	sport	\N	t
24230	db	2014-08-28	2014-08-28			-3.81	EUR	living	food	\N	t
24229	db	2014-08-28	2014-08-28			-1.90	EUR	free time	entertainment	\N	t
24258	db	2014-08-29	2014-08-29			-12.96	EUR	living	food	\N	t
24257	db	2014-08-29	2014-08-29			-3.63	EUR	free time	going out	\N	t
24256	db	2014-08-29	2014-08-29			-16.81	EUR	mobility	gas	\N	t
24250	db	2014-08-29	2014-08-29			-20.00	EUR	other	cash	\N	t
24285	db	2014-08-30	2014-08-30			-16.40	EUR	health	wellness	\N	t
24284	db	2014-08-30	2014-08-30			-3.99	EUR	free time	going out	\N	t
24336	db	2014-09-01	2014-09-01			-10.00	EUR	house	phone	\N	t
24326	db	2014-09-01	2014-09-01			-1.45	EUR	living	food	\N	t
24362	db	2014-09-02	2014-09-02			-10.00	EUR	house	electricity	\N	t
24352	db	2014-09-02	2014-09-02			-3.89	EUR	free time	hobbies	\N	t
24388	db	2014-09-03	2014-09-03			-10.00	EUR	house	internet	\N	t
24378	db	2014-09-03	2014-09-03			-5.83	EUR	free time	sport	\N	t
24414	db	2014-09-04	2014-09-04			-250.00	EUR	house	rent	\N	t
24405	db	2014-09-04	2014-09-04			-6.86	EUR	living	food	\N	t
24404	db	2014-09-04	2014-09-04			-6.31	EUR	free time	entertainment	\N	t
24440	db	2014-09-05	2014-09-05			-10.00	EUR	finance	costs and fees	\N	t
24433	db	2014-09-05	2014-09-05			-0.24	EUR	living	food	\N	t
24432	db	2014-09-05	2014-09-05			-4.52	EUR	free time	going out	\N	t
24431	db	2014-09-05	2014-09-05			-8.27	EUR	mobility	gas	\N	t
24425	db	2014-09-05	2014-09-05			-20.00	EUR	other	cash	\N	t
24466	db	2014-09-06	2014-09-06			-50.00	EUR	finance	insurance	\N	t
24460	db	2014-09-06	2014-09-06			-17.80	EUR	health	wellness	\N	t
24459	db	2014-09-06	2014-09-06			-7.65	EUR	free time	going out	\N	t
24492	db	2014-09-07	2014-09-07			-41.99	EUR	health	doctor visits	\N	t
24518	db	2014-09-08	2014-09-08			1000.00	EUR	work and training	salary	\N	t
24501	db	2014-09-08	2014-09-08			-2.22	EUR	living	food	\N	t
24527	db	2014-09-09	2014-09-09			-6.84	EUR	free time	hobbies	\N	t
24569	db	2014-09-10	2014-09-10			-18.97	EUR	living	pets	\N	t
24553	db	2014-09-10	2014-09-10			-1.70	EUR	free time	sport	\N	t
24580	db	2014-09-11	2014-09-11			-0.55	EUR	living	food	\N	t
24579	db	2014-09-11	2014-09-11			-0.61	EUR	free time	entertainment	\N	t
24608	db	2014-09-12	2014-09-12			-6.77	EUR	living	food	\N	t
24607	db	2014-09-12	2014-09-12			-19.21	EUR	free time	going out	\N	t
24606	db	2014-09-12	2014-09-12			-7.09	EUR	mobility	gas	\N	t
24600	db	2014-09-12	2014-09-12			-20.00	EUR	other	cash	\N	t
24635	db	2014-09-13	2014-09-13			-12.32	EUR	health	wellness	\N	t
24634	db	2014-09-13	2014-09-13			-12.47	EUR	free time	going out	\N	t
24695	db	2014-09-15	2014-09-15			-3.18	EUR	living	household	\N	t
24676	db	2014-09-15	2014-09-15			-2.60	EUR	living	food	\N	t
24702	db	2014-09-16	2014-09-16			-2.67	EUR	free time	hobbies	\N	t
24728	db	2014-09-17	2014-09-17			-7.90	EUR	free time	sport	\N	t
24755	db	2014-09-18	2014-09-18			-7.18	EUR	living	food	\N	t
24754	db	2014-09-18	2014-09-18			-7.16	EUR	free time	entertainment	\N	t
24783	db	2014-09-19	2014-09-19			-15.35	EUR	living	food	\N	t
24782	db	2014-09-19	2014-09-19			-2.79	EUR	free time	going out	\N	t
24781	db	2014-09-19	2014-09-19			-4.76	EUR	mobility	gas	\N	t
24775	db	2014-09-19	2014-09-19			-20.00	EUR	other	cash	\N	t
24822	db	2014-09-20	2014-09-20			-4.81	EUR	free time	gadgets	\N	t
24821	db	2014-09-20	2014-09-20			-63.02	EUR	living	clothes	\N	t
24810	db	2014-09-20	2014-09-20			-10.00	EUR	health	wellness	\N	t
24809	db	2014-09-20	2014-09-20			-9.15	EUR	free time	going out	\N	t
24851	db	2014-09-22	2014-09-22			-3.24	EUR	living	food	\N	t
24877	db	2014-09-23	2014-09-23			-9.06	EUR	free time	hobbies	\N	t
24903	db	2014-09-24	2014-09-24			-0.32	EUR	free time	sport	\N	t
24930	db	2014-09-25	2014-09-25			-3.69	EUR	living	food	\N	t
24929	db	2014-09-25	2014-09-25			-4.80	EUR	free time	entertainment	\N	t
24958	db	2014-09-26	2014-09-26			-17.03	EUR	living	food	\N	t
24957	db	2014-09-26	2014-09-26			-13.03	EUR	free time	going out	\N	t
24956	db	2014-09-26	2014-09-26			-4.89	EUR	mobility	gas	\N	t
24950	db	2014-09-26	2014-09-26			-20.00	EUR	other	cash	\N	t
24985	db	2014-09-27	2014-09-27			-19.24	EUR	health	wellness	\N	t
24984	db	2014-09-27	2014-09-27			-2.40	EUR	free time	going out	\N	t
25026	db	2014-09-29	2014-09-29			-3.68	EUR	living	food	\N	t
25052	db	2014-09-30	2014-09-30			-4.16	EUR	free time	hobbies	\N	t
25086	db	2014-10-01	2014-10-01			-10.00	EUR	house	phone	\N	t
25078	db	2014-10-01	2014-10-01			-9.82	EUR	free time	sport	\N	t
25112	db	2014-10-02	2014-10-02			-10.00	EUR	house	electricity	\N	t
25105	db	2014-10-02	2014-10-02			-7.93	EUR	living	food	\N	t
25104	db	2014-10-02	2014-10-02			-0.48	EUR	free time	entertainment	\N	t
25138	db	2014-10-03	2014-10-03			-10.00	EUR	house	internet	\N	t
25133	db	2014-10-03	2014-10-03			-3.93	EUR	living	food	\N	t
25132	db	2014-10-03	2014-10-03			-1.98	EUR	free time	going out	\N	t
25131	db	2014-10-03	2014-10-03			-13.80	EUR	mobility	gas	\N	t
25125	db	2014-10-03	2014-10-03			-20.00	EUR	other	cash	\N	t
25164	db	2014-10-04	2014-10-04			-250.00	EUR	house	rent	\N	t
25160	db	2014-10-04	2014-10-04			-5.49	EUR	health	wellness	\N	t
25159	db	2014-10-04	2014-10-04			-11.76	EUR	free time	going out	\N	t
25190	db	2014-10-05	2014-10-05			-10.00	EUR	finance	costs and fees	\N	t
25216	db	2014-10-06	2014-10-06			-50.00	EUR	finance	insurance	\N	t
25201	db	2014-10-06	2014-10-06			-0.99	EUR	living	food	\N	t
25242	db	2014-10-07	2014-10-07			-5.40	EUR	health	doctor visits	\N	t
25227	db	2014-10-07	2014-10-07			-8.31	EUR	free time	hobbies	\N	t
25268	db	2014-10-08	2014-10-08			1000.00	EUR	work and training	salary	\N	t
25253	db	2014-10-08	2014-10-08			-4.84	EUR	free time	sport	\N	t
25280	db	2014-10-09	2014-10-09			-0.19	EUR	living	food	\N	t
25279	db	2014-10-09	2014-10-09			-5.27	EUR	free time	entertainment	\N	t
25319	db	2014-10-10	2014-10-10			-47.39	EUR	living	pets	\N	t
25308	db	2014-10-10	2014-10-10			-19.42	EUR	living	food	\N	t
25307	db	2014-10-10	2014-10-10			-8.35	EUR	free time	going out	\N	t
25306	db	2014-10-10	2014-10-10			-0.68	EUR	mobility	gas	\N	t
25300	db	2014-10-10	2014-10-10			-20.00	EUR	other	cash	\N	t
25335	db	2014-10-11	2014-10-11			-4.95	EUR	health	wellness	\N	t
25334	db	2014-10-11	2014-10-11			-17.02	EUR	free time	going out	\N	t
25376	db	2014-10-13	2014-10-13			-6.12	EUR	living	food	\N	t
25402	db	2014-10-14	2014-10-14			-0.43	EUR	free time	hobbies	\N	t
25445	db	2014-10-15	2014-10-15			-2.34	EUR	living	household	\N	t
25428	db	2014-10-15	2014-10-15			-9.77	EUR	free time	sport	\N	t
25455	db	2014-10-16	2014-10-16			-8.62	EUR	living	food	\N	t
25454	db	2014-10-16	2014-10-16			-3.90	EUR	free time	entertainment	\N	t
25483	db	2014-10-17	2014-10-17			-1.02	EUR	living	food	\N	t
25482	db	2014-10-17	2014-10-17			-6.38	EUR	free time	going out	\N	t
25481	db	2014-10-17	2014-10-17			-5.33	EUR	mobility	gas	\N	t
25475	db	2014-10-17	2014-10-17			-20.00	EUR	other	cash	\N	t
25510	db	2014-10-18	2014-10-18			-17.70	EUR	health	wellness	\N	t
25509	db	2014-10-18	2014-10-18			-1.20	EUR	free time	going out	\N	t
25572	db	2014-10-20	2014-10-20			-41.14	EUR	free time	gadgets	\N	t
25571	db	2014-10-20	2014-10-20			-9.19	EUR	living	clothes	\N	t
25551	db	2014-10-20	2014-10-20			-2.40	EUR	living	food	\N	t
25577	db	2014-10-21	2014-10-21			-5.08	EUR	free time	hobbies	\N	t
25603	db	2014-10-22	2014-10-22			-4.00	EUR	free time	sport	\N	t
25630	db	2014-10-23	2014-10-23			-6.64	EUR	living	food	\N	t
25629	db	2014-10-23	2014-10-23			-1.65	EUR	free time	entertainment	\N	t
25658	db	2014-10-24	2014-10-24			-19.20	EUR	living	food	\N	t
25657	db	2014-10-24	2014-10-24			-5.24	EUR	free time	going out	\N	t
25656	db	2014-10-24	2014-10-24			-19.52	EUR	mobility	gas	\N	t
25650	db	2014-10-24	2014-10-24			-20.00	EUR	other	cash	\N	t
25685	db	2014-10-25	2014-10-25			-7.22	EUR	health	wellness	\N	t
25684	db	2014-10-25	2014-10-25			-16.33	EUR	free time	going out	\N	t
25726	db	2014-10-27	2014-10-27			-1.20	EUR	living	food	\N	t
25752	db	2014-10-28	2014-10-28			-5.74	EUR	free time	hobbies	\N	t
25778	db	2014-10-29	2014-10-29			-9.93	EUR	free time	sport	\N	t
25805	db	2014-10-30	2014-10-30			-8.56	EUR	living	food	\N	t
25804	db	2014-10-30	2014-10-30			-2.99	EUR	free time	entertainment	\N	t
25833	db	2014-10-31	2014-10-31			-10.76	EUR	living	food	\N	t
25832	db	2014-10-31	2014-10-31			-16.06	EUR	free time	going out	\N	t
25831	db	2014-10-31	2014-10-31			-2.23	EUR	mobility	gas	\N	t
25825	db	2014-10-31	2014-10-31			-20.00	EUR	other	cash	\N	t
25861	db	2014-11-01	2014-11-01			-10.00	EUR	house	phone	\N	t
25860	db	2014-11-01	2014-11-01			-12.61	EUR	health	wellness	\N	t
25859	db	2014-11-01	2014-11-01			-0.59	EUR	free time	going out	\N	t
25887	db	2014-11-02	2014-11-02			-10.00	EUR	house	electricity	\N	t
25913	db	2014-11-03	2014-11-03			-10.00	EUR	house	internet	\N	t
25901	db	2014-11-03	2014-11-03			-3.33	EUR	living	food	\N	t
25939	db	2014-11-04	2014-11-04			-250.00	EUR	house	rent	\N	t
25927	db	2014-11-04	2014-11-04			-8.81	EUR	free time	hobbies	\N	t
25965	db	2014-11-05	2014-11-05			-10.00	EUR	finance	costs and fees	\N	t
25953	db	2014-11-05	2014-11-05			-6.53	EUR	free time	sport	\N	t
25991	db	2014-11-06	2014-11-06			-50.00	EUR	finance	insurance	\N	t
25980	db	2014-11-06	2014-11-06			-3.63	EUR	living	food	\N	t
25979	db	2014-11-06	2014-11-06			-5.31	EUR	free time	entertainment	\N	t
26017	db	2014-11-07	2014-11-07			-58.68	EUR	health	doctor visits	\N	t
26008	db	2014-11-07	2014-11-07			-1.06	EUR	living	food	\N	t
26007	db	2014-11-07	2014-11-07			-4.33	EUR	free time	going out	\N	t
26006	db	2014-11-07	2014-11-07			-1.31	EUR	mobility	gas	\N	t
26000	db	2014-11-07	2014-11-07			-20.00	EUR	other	cash	\N	t
26043	db	2014-11-08	2014-11-08			1000.00	EUR	work and training	salary	\N	t
26035	db	2014-11-08	2014-11-08			-3.16	EUR	health	wellness	\N	t
26034	db	2014-11-08	2014-11-08			-14.17	EUR	free time	going out	\N	t
26094	db	2014-11-10	2014-11-10			-50.76	EUR	living	pets	\N	t
26076	db	2014-11-10	2014-11-10			-5.03	EUR	living	food	\N	t
26102	db	2014-11-11	2014-11-11			-1.05	EUR	free time	hobbies	\N	t
26128	db	2014-11-12	2014-11-12			-9.52	EUR	free time	sport	\N	t
26155	db	2014-11-13	2014-11-13			-8.25	EUR	living	food	\N	t
26154	db	2014-11-13	2014-11-13			-4.77	EUR	free time	entertainment	\N	t
26183	db	2014-11-14	2014-11-14			-13.60	EUR	living	food	\N	t
26182	db	2014-11-14	2014-11-14			-9.37	EUR	free time	going out	\N	t
26181	db	2014-11-14	2014-11-14			-10.98	EUR	mobility	gas	\N	t
26175	db	2014-11-14	2014-11-14			-20.00	EUR	other	cash	\N	t
26220	db	2014-11-15	2014-11-15			-4.27	EUR	living	household	\N	t
26210	db	2014-11-15	2014-11-15			-17.03	EUR	health	wellness	\N	t
26209	db	2014-11-15	2014-11-15			-11.83	EUR	free time	going out	\N	t
26251	db	2014-11-17	2014-11-17			-8.81	EUR	living	food	\N	t
26277	db	2014-11-18	2014-11-18			-4.13	EUR	free time	hobbies	\N	t
26303	db	2014-11-19	2014-11-19			-8.97	EUR	free time	sport	\N	t
26347	db	2014-11-20	2014-11-20			-32.50	EUR	free time	gadgets	\N	t
26346	db	2014-11-20	2014-11-20			-72.39	EUR	living	clothes	\N	t
26330	db	2014-11-20	2014-11-20			-1.87	EUR	living	food	\N	t
26329	db	2014-11-20	2014-11-20			-0.18	EUR	free time	entertainment	\N	t
26358	db	2014-11-21	2014-11-21			-9.32	EUR	living	food	\N	t
26357	db	2014-11-21	2014-11-21			-1.70	EUR	free time	going out	\N	t
26356	db	2014-11-21	2014-11-21			-17.98	EUR	mobility	gas	\N	t
26350	db	2014-11-21	2014-11-21			-20.00	EUR	other	cash	\N	t
26385	db	2014-11-22	2014-11-22			-17.70	EUR	health	wellness	\N	t
26384	db	2014-11-22	2014-11-22			-11.19	EUR	free time	going out	\N	t
26426	db	2014-11-24	2014-11-24			-6.33	EUR	living	food	\N	t
26452	db	2014-11-25	2014-11-25			-4.75	EUR	free time	hobbies	\N	t
26478	db	2014-11-26	2014-11-26			-7.64	EUR	free time	sport	\N	t
26505	db	2014-11-27	2014-11-27			-7.92	EUR	living	food	\N	t
26504	db	2014-11-27	2014-11-27			-2.42	EUR	free time	entertainment	\N	t
26533	db	2014-11-28	2014-11-28			-9.77	EUR	living	food	\N	t
26532	db	2014-11-28	2014-11-28			-12.91	EUR	free time	going out	\N	t
26531	db	2014-11-28	2014-11-28			-12.08	EUR	mobility	gas	\N	t
26525	db	2014-11-28	2014-11-28			-20.00	EUR	other	cash	\N	t
26560	db	2014-11-29	2014-11-29			-4.46	EUR	health	wellness	\N	t
26559	db	2014-11-29	2014-11-29			-2.09	EUR	free time	going out	\N	t
26611	db	2014-12-01	2014-12-01			-10.00	EUR	house	phone	\N	t
26601	db	2014-12-01	2014-12-01			-3.10	EUR	living	food	\N	t
26637	db	2014-12-02	2014-12-02			-10.00	EUR	house	electricity	\N	t
26627	db	2014-12-02	2014-12-02			-2.81	EUR	free time	hobbies	\N	t
26663	db	2014-12-03	2014-12-03			-10.00	EUR	house	internet	\N	t
26653	db	2014-12-03	2014-12-03			-8.68	EUR	free time	sport	\N	t
26689	db	2014-12-04	2014-12-04			-250.00	EUR	house	rent	\N	t
26680	db	2014-12-04	2014-12-04			-9.87	EUR	living	food	\N	t
26679	db	2014-12-04	2014-12-04			-2.49	EUR	free time	entertainment	\N	t
26715	db	2014-12-05	2014-12-05			-10.00	EUR	finance	costs and fees	\N	t
26708	db	2014-12-05	2014-12-05			-0.40	EUR	living	food	\N	t
26707	db	2014-12-05	2014-12-05			-9.44	EUR	free time	going out	\N	t
26706	db	2014-12-05	2014-12-05			-13.91	EUR	mobility	gas	\N	t
26700	db	2014-12-05	2014-12-05			-20.00	EUR	other	cash	\N	t
26741	db	2014-12-06	2014-12-06			-50.00	EUR	finance	insurance	\N	t
26735	db	2014-12-06	2014-12-06			-12.83	EUR	health	wellness	\N	t
26734	db	2014-12-06	2014-12-06			-9.66	EUR	free time	going out	\N	t
26767	db	2014-12-07	2014-12-07			-82.10	EUR	health	doctor visits	\N	t
26793	db	2014-12-08	2014-12-08			1000.00	EUR	work and training	salary	\N	t
26776	db	2014-12-08	2014-12-08			-9.61	EUR	living	food	\N	t
26802	db	2014-12-09	2014-12-09			-2.52	EUR	free time	hobbies	\N	t
26844	db	2014-12-10	2014-12-10			-47.90	EUR	living	pets	\N	t
26828	db	2014-12-10	2014-12-10			-6.57	EUR	free time	sport	\N	t
26855	db	2014-12-11	2014-12-11			-4.75	EUR	living	food	\N	t
26854	db	2014-12-11	2014-12-11			-8.58	EUR	free time	entertainment	\N	t
26883	db	2014-12-12	2014-12-12			-10.77	EUR	living	food	\N	t
26882	db	2014-12-12	2014-12-12			-13.90	EUR	free time	going out	\N	t
26881	db	2014-12-12	2014-12-12			-4.11	EUR	mobility	gas	\N	t
26875	db	2014-12-12	2014-12-12			-20.00	EUR	other	cash	\N	t
26910	db	2014-12-13	2014-12-13			-18.48	EUR	health	wellness	\N	t
26909	db	2014-12-13	2014-12-13			-5.64	EUR	free time	going out	\N	t
26970	db	2014-12-15	2014-12-15			-50.64	EUR	living	household	\N	t
26951	db	2014-12-15	2014-12-15			-2.74	EUR	living	food	\N	t
26977	db	2014-12-16	2014-12-16			-1.35	EUR	free time	hobbies	\N	t
27003	db	2014-12-17	2014-12-17			-9.56	EUR	free time	sport	\N	t
27030	db	2014-12-18	2014-12-18			-8.83	EUR	living	food	\N	t
27029	db	2014-12-18	2014-12-18			-8.16	EUR	free time	entertainment	\N	t
27058	db	2014-12-19	2014-12-19			-19.17	EUR	living	food	\N	t
27057	db	2014-12-19	2014-12-19			-12.66	EUR	free time	going out	\N	t
27056	db	2014-12-19	2014-12-19			-8.17	EUR	mobility	gas	\N	t
27050	db	2014-12-19	2014-12-19			-20.00	EUR	other	cash	\N	t
27097	db	2014-12-20	2014-12-20			-9.42	EUR	free time	gadgets	\N	t
27096	db	2014-12-20	2014-12-20			-21.96	EUR	living	clothes	\N	t
27085	db	2014-12-20	2014-12-20			-9.23	EUR	health	wellness	\N	t
27084	db	2014-12-20	2014-12-20			-2.93	EUR	free time	going out	\N	t
27124	db	2014-12-21	2014-12-21			-171.35	EUR	free time	presents	\N	t
27126	db	2014-12-22	2014-12-22			-7.77	EUR	living	food	\N	t
27152	db	2014-12-23	2014-12-23			-8.25	EUR	free time	hobbies	\N	t
27178	db	2014-12-24	2014-12-24			-6.76	EUR	free time	sport	\N	t
27205	db	2014-12-25	2014-12-25			-3.29	EUR	living	food	\N	t
27204	db	2014-12-25	2014-12-25			-1.94	EUR	free time	entertainment	\N	t
27233	db	2014-12-26	2014-12-26			-12.61	EUR	living	food	\N	t
27232	db	2014-12-26	2014-12-26			-19.90	EUR	free time	going out	\N	t
27231	db	2014-12-26	2014-12-26			-7.03	EUR	mobility	gas	\N	t
27225	db	2014-12-26	2014-12-26			-20.00	EUR	other	cash	\N	t
27260	db	2014-12-27	2014-12-27			-3.78	EUR	health	wellness	\N	t
27259	db	2014-12-27	2014-12-27			-18.97	EUR	free time	going out	\N	t
27301	db	2014-12-29	2014-12-29			-6.28	EUR	living	food	\N	t
27327	db	2014-12-30	2014-12-30			-8.53	EUR	free time	hobbies	\N	t
27353	db	2014-12-31	2014-12-31			-3.36	EUR	free time	sport	\N	t
27386	db	2015-01-01	2015-01-01			-10.00	EUR	house	phone	\N	t
27380	db	2015-01-01	2015-01-01			-8.88	EUR	living	food	\N	t
27379	db	2015-01-01	2015-01-01			-6.51	EUR	free time	entertainment	\N	t
27412	db	2015-01-02	2015-01-02			-10.00	EUR	house	electricity	\N	t
27408	db	2015-01-02	2015-01-02			-15.66	EUR	living	food	\N	t
27407	db	2015-01-02	2015-01-02			-5.85	EUR	free time	going out	\N	t
27406	db	2015-01-02	2015-01-02			-5.02	EUR	mobility	gas	\N	t
27400	db	2015-01-02	2015-01-02			-20.00	EUR	other	cash	\N	t
27438	db	2015-01-03	2015-01-03			-10.00	EUR	house	internet	\N	t
27435	db	2015-01-03	2015-01-03			-6.64	EUR	health	wellness	\N	t
27434	db	2015-01-03	2015-01-03			-7.27	EUR	free time	going out	\N	t
27464	db	2015-01-04	2015-01-04			-250.00	EUR	house	rent	\N	t
27490	db	2015-01-05	2015-01-05			-10.00	EUR	finance	costs and fees	\N	t
27476	db	2015-01-05	2015-01-05			-9.40	EUR	living	food	\N	t
27516	db	2015-01-06	2015-01-06			-50.00	EUR	finance	insurance	\N	t
27502	db	2015-01-06	2015-01-06			-5.92	EUR	free time	hobbies	\N	t
27542	db	2015-01-07	2015-01-07			-42.31	EUR	health	doctor visits	\N	t
27528	db	2015-01-07	2015-01-07			-0.61	EUR	free time	sport	\N	t
27568	db	2015-01-08	2015-01-08			1000.00	EUR	work and training	salary	\N	t
27555	db	2015-01-08	2015-01-08			-5.41	EUR	living	food	\N	t
27554	db	2015-01-08	2015-01-08			-9.48	EUR	free time	entertainment	\N	t
27583	db	2015-01-09	2015-01-09			-5.00	EUR	living	food	\N	t
27582	db	2015-01-09	2015-01-09			-19.85	EUR	free time	going out	\N	t
27581	db	2015-01-09	2015-01-09			-11.93	EUR	mobility	gas	\N	t
27575	db	2015-01-09	2015-01-09			-20.00	EUR	other	cash	\N	t
27619	db	2015-01-10	2015-01-10			-59.40	EUR	living	pets	\N	t
27610	db	2015-01-10	2015-01-10			-5.66	EUR	health	wellness	\N	t
27609	db	2015-01-10	2015-01-10			-17.75	EUR	free time	going out	\N	t
27651	db	2015-01-12	2015-01-12			-3.63	EUR	living	food	\N	t
27677	db	2015-01-13	2015-01-13			-6.03	EUR	free time	hobbies	\N	t
27703	db	2015-01-14	2015-01-14			-9.85	EUR	free time	sport	\N	t
27745	db	2015-01-15	2015-01-15			-15.75	EUR	living	household	\N	t
27730	db	2015-01-15	2015-01-15			-1.31	EUR	living	food	\N	t
27729	db	2015-01-15	2015-01-15			-4.14	EUR	free time	entertainment	\N	t
27758	db	2015-01-16	2015-01-16			-13.92	EUR	living	food	\N	t
27757	db	2015-01-16	2015-01-16			-17.32	EUR	free time	going out	\N	t
27756	db	2015-01-16	2015-01-16			-7.21	EUR	mobility	gas	\N	t
27750	db	2015-01-16	2015-01-16			-20.00	EUR	other	cash	\N	t
27785	db	2015-01-17	2015-01-17			-9.37	EUR	health	wellness	\N	t
27784	db	2015-01-17	2015-01-17			-15.56	EUR	free time	going out	\N	t
27826	db	2015-01-19	2015-01-19			-6.05	EUR	living	food	\N	t
27872	db	2015-01-20	2015-01-20			-58.82	EUR	free time	gadgets	\N	t
27871	db	2015-01-20	2015-01-20			-2.94	EUR	living	clothes	\N	t
27852	db	2015-01-20	2015-01-20			-5.24	EUR	free time	hobbies	\N	t
27878	db	2015-01-21	2015-01-21			-3.60	EUR	free time	sport	\N	t
27905	db	2015-01-22	2015-01-22			-6.95	EUR	living	food	\N	t
27904	db	2015-01-22	2015-01-22			-5.79	EUR	free time	entertainment	\N	t
27933	db	2015-01-23	2015-01-23			-2.10	EUR	living	food	\N	t
27932	db	2015-01-23	2015-01-23			-14.70	EUR	free time	going out	\N	t
27931	db	2015-01-23	2015-01-23			-19.87	EUR	mobility	gas	\N	t
27925	db	2015-01-23	2015-01-23			-20.00	EUR	other	cash	\N	t
27960	db	2015-01-24	2015-01-24			-12.05	EUR	health	wellness	\N	t
27959	db	2015-01-24	2015-01-24			-2.31	EUR	free time	going out	\N	t
28001	db	2015-01-26	2015-01-26			-2.12	EUR	living	food	\N	t
28027	db	2015-01-27	2015-01-27			-0.31	EUR	free time	hobbies	\N	t
28053	db	2015-01-28	2015-01-28			-4.29	EUR	free time	sport	\N	t
28080	db	2015-01-29	2015-01-29			-9.90	EUR	living	food	\N	t
28079	db	2015-01-29	2015-01-29			-7.00	EUR	free time	entertainment	\N	t
28108	db	2015-01-30	2015-01-30			-5.09	EUR	living	food	\N	t
28107	db	2015-01-30	2015-01-30			-10.37	EUR	free time	going out	\N	t
28106	db	2015-01-30	2015-01-30			-14.10	EUR	mobility	gas	\N	t
28100	db	2015-01-30	2015-01-30			-20.00	EUR	other	cash	\N	t
28135	db	2015-01-31	2015-01-31			-10.68	EUR	health	wellness	\N	t
28134	db	2015-01-31	2015-01-31			-4.99	EUR	free time	going out	\N	t
28161	db	2015-02-01	2015-02-01			-10.00	EUR	house	phone	\N	t
28187	db	2015-02-02	2015-02-02			-10.00	EUR	house	electricity	\N	t
28176	db	2015-02-02	2015-02-02			-6.61	EUR	living	food	\N	t
28213	db	2015-02-03	2015-02-03			-10.00	EUR	house	internet	\N	t
28202	db	2015-02-03	2015-02-03			-9.15	EUR	free time	hobbies	\N	t
28239	db	2015-02-04	2015-02-04			-250.00	EUR	house	rent	\N	t
28228	db	2015-02-04	2015-02-04			-4.21	EUR	free time	sport	\N	t
28265	db	2015-02-05	2015-02-05			-10.00	EUR	finance	costs and fees	\N	t
28255	db	2015-02-05	2015-02-05			-4.23	EUR	living	food	\N	t
28254	db	2015-02-05	2015-02-05			-1.05	EUR	free time	entertainment	\N	t
28291	db	2015-02-06	2015-02-06			-50.00	EUR	finance	insurance	\N	t
28283	db	2015-02-06	2015-02-06			-10.67	EUR	living	food	\N	t
28282	db	2015-02-06	2015-02-06			-19.00	EUR	free time	going out	\N	t
28281	db	2015-02-06	2015-02-06			-12.30	EUR	mobility	gas	\N	t
28275	db	2015-02-06	2015-02-06			-20.00	EUR	other	cash	\N	t
28317	db	2015-02-07	2015-02-07			-89.68	EUR	health	doctor visits	\N	t
28310	db	2015-02-07	2015-02-07			-10.38	EUR	health	wellness	\N	t
28309	db	2015-02-07	2015-02-07			-13.61	EUR	free time	going out	\N	t
28343	db	2015-02-08	2015-02-08			1000.00	EUR	work and training	salary	\N	t
28351	db	2015-02-09	2015-02-09			-1.26	EUR	living	food	\N	t
28394	db	2015-02-10	2015-02-10			-12.35	EUR	living	pets	\N	t
28377	db	2015-02-10	2015-02-10			-2.64	EUR	free time	hobbies	\N	t
28403	db	2015-02-11	2015-02-11			-3.76	EUR	free time	sport	\N	t
28430	db	2015-02-12	2015-02-12			-7.64	EUR	living	food	\N	t
28429	db	2015-02-12	2015-02-12			-8.96	EUR	free time	entertainment	\N	t
28458	db	2015-02-13	2015-02-13			-2.89	EUR	living	food	\N	t
28457	db	2015-02-13	2015-02-13			-10.61	EUR	free time	going out	\N	t
28456	db	2015-02-13	2015-02-13			-10.74	EUR	mobility	gas	\N	t
28450	db	2015-02-13	2015-02-13			-20.00	EUR	other	cash	\N	t
28485	db	2015-02-14	2015-02-14			-13.30	EUR	health	wellness	\N	t
28484	db	2015-02-14	2015-02-14			-10.66	EUR	free time	going out	\N	t
28520	db	2015-02-15	2015-02-15			-18.83	EUR	living	household	\N	t
28526	db	2015-02-16	2015-02-16			-0.84	EUR	living	food	\N	t
28552	db	2015-02-17	2015-02-17			-7.41	EUR	free time	hobbies	\N	t
28578	db	2015-02-18	2015-02-18			-0.16	EUR	free time	sport	\N	t
28605	db	2015-02-19	2015-02-19			-4.38	EUR	living	food	\N	t
28604	db	2015-02-19	2015-02-19			-1.76	EUR	free time	entertainment	\N	t
28647	db	2015-02-20	2015-02-20			-64.08	EUR	free time	gadgets	\N	t
28646	db	2015-02-20	2015-02-20			-6.08	EUR	living	clothes	\N	t
28633	db	2015-02-20	2015-02-20			-5.91	EUR	living	food	\N	t
28632	db	2015-02-20	2015-02-20			-11.63	EUR	free time	going out	\N	t
28631	db	2015-02-20	2015-02-20			-12.58	EUR	mobility	gas	\N	t
28625	db	2015-02-20	2015-02-20			-20.00	EUR	other	cash	\N	t
28660	db	2015-02-21	2015-02-21			-17.53	EUR	health	wellness	\N	t
28659	db	2015-02-21	2015-02-21			-10.65	EUR	free time	going out	\N	t
28701	db	2015-02-23	2015-02-23			-9.85	EUR	living	food	\N	t
28727	db	2015-02-24	2015-02-24			-4.38	EUR	free time	hobbies	\N	t
28753	db	2015-02-25	2015-02-25			-8.22	EUR	free time	sport	\N	t
28780	db	2015-02-26	2015-02-26			-2.89	EUR	living	food	\N	t
28779	db	2015-02-26	2015-02-26			-6.41	EUR	free time	entertainment	\N	t
28808	db	2015-02-27	2015-02-27			-7.52	EUR	living	food	\N	t
28807	db	2015-02-27	2015-02-27			-18.28	EUR	free time	going out	\N	t
28806	db	2015-02-27	2015-02-27			-16.73	EUR	mobility	gas	\N	t
28800	db	2015-02-27	2015-02-27			-20.00	EUR	other	cash	\N	t
28835	db	2015-02-28	2015-02-28			-11.49	EUR	health	wellness	\N	t
28834	db	2015-02-28	2015-02-28			-12.93	EUR	free time	going out	\N	t
28861	db	2015-03-01	2015-03-01			-10.00	EUR	house	phone	\N	t
28887	db	2015-03-02	2015-03-02			-10.00	EUR	house	electricity	\N	t
28876	db	2015-03-02	2015-03-02			-3.43	EUR	living	food	\N	t
28913	db	2015-03-03	2015-03-03			-10.00	EUR	house	internet	\N	t
28902	db	2015-03-03	2015-03-03			-5.18	EUR	free time	hobbies	\N	t
28939	db	2015-03-04	2015-03-04			-250.00	EUR	house	rent	\N	t
28928	db	2015-03-04	2015-03-04			-0.33	EUR	free time	sport	\N	t
28965	db	2015-03-05	2015-03-05			-10.00	EUR	finance	costs and fees	\N	t
28955	db	2015-03-05	2015-03-05			-9.98	EUR	living	food	\N	t
28954	db	2015-03-05	2015-03-05			-8.69	EUR	free time	entertainment	\N	t
28991	db	2015-03-06	2015-03-06			-50.00	EUR	finance	insurance	\N	t
28983	db	2015-03-06	2015-03-06			-9.08	EUR	living	food	\N	t
28982	db	2015-03-06	2015-03-06			-16.81	EUR	free time	going out	\N	t
28981	db	2015-03-06	2015-03-06			-0.78	EUR	mobility	gas	\N	t
28975	db	2015-03-06	2015-03-06			-20.00	EUR	other	cash	\N	t
29017	db	2015-03-07	2015-03-07			-26.45	EUR	health	doctor visits	\N	t
29010	db	2015-03-07	2015-03-07			-14.94	EUR	health	wellness	\N	t
29009	db	2015-03-07	2015-03-07			-17.48	EUR	free time	going out	\N	t
29043	db	2015-03-08	2015-03-08			1000.00	EUR	work and training	salary	\N	t
29051	db	2015-03-09	2015-03-09			-3.70	EUR	living	food	\N	t
29094	db	2015-03-10	2015-03-10			-65.20	EUR	living	pets	\N	t
29077	db	2015-03-10	2015-03-10			-5.14	EUR	free time	hobbies	\N	t
29103	db	2015-03-11	2015-03-11			-1.26	EUR	free time	sport	\N	t
29130	db	2015-03-12	2015-03-12			-5.35	EUR	living	food	\N	t
29129	db	2015-03-12	2015-03-12			-6.18	EUR	free time	entertainment	\N	t
29158	db	2015-03-13	2015-03-13			-10.41	EUR	living	food	\N	t
29157	db	2015-03-13	2015-03-13			-13.28	EUR	free time	going out	\N	t
29156	db	2015-03-13	2015-03-13			-18.96	EUR	mobility	gas	\N	t
29150	db	2015-03-13	2015-03-13			-20.00	EUR	other	cash	\N	t
29185	db	2015-03-14	2015-03-14			-1.96	EUR	health	wellness	\N	t
29184	db	2015-03-14	2015-03-14			-8.54	EUR	free time	going out	\N	t
29220	db	2015-03-15	2015-03-15			-26.48	EUR	living	household	\N	t
29226	db	2015-03-16	2015-03-16			-0.02	EUR	living	food	\N	t
29252	db	2015-03-17	2015-03-17			-2.95	EUR	free time	hobbies	\N	t
29278	db	2015-03-18	2015-03-18			-0.62	EUR	free time	sport	\N	t
29305	db	2015-03-19	2015-03-19			-7.09	EUR	living	food	\N	t
29304	db	2015-03-19	2015-03-19			-2.87	EUR	free time	entertainment	\N	t
29347	db	2015-03-20	2015-03-20			-37.91	EUR	free time	gadgets	\N	t
29346	db	2015-03-20	2015-03-20			-4.30	EUR	living	clothes	\N	t
29333	db	2015-03-20	2015-03-20			-2.49	EUR	living	food	\N	t
29332	db	2015-03-20	2015-03-20			-11.88	EUR	free time	going out	\N	t
29331	db	2015-03-20	2015-03-20			-6.26	EUR	mobility	gas	\N	t
29325	db	2015-03-20	2015-03-20			-20.00	EUR	other	cash	\N	t
29360	db	2015-03-21	2015-03-21			-6.72	EUR	health	wellness	\N	t
29359	db	2015-03-21	2015-03-21			-18.18	EUR	free time	going out	\N	t
29401	db	2015-03-23	2015-03-23			-8.20	EUR	living	food	\N	t
29427	db	2015-03-24	2015-03-24			-6.06	EUR	free time	hobbies	\N	t
29453	db	2015-03-25	2015-03-25			-5.67	EUR	free time	sport	\N	t
29480	db	2015-03-26	2015-03-26			-8.97	EUR	living	food	\N	t
29479	db	2015-03-26	2015-03-26			-1.69	EUR	free time	entertainment	\N	t
29508	db	2015-03-27	2015-03-27			-16.06	EUR	living	food	\N	t
29507	db	2015-03-27	2015-03-27			-15.47	EUR	free time	going out	\N	t
29506	db	2015-03-27	2015-03-27			-15.21	EUR	mobility	gas	\N	t
29500	db	2015-03-27	2015-03-27			-20.00	EUR	other	cash	\N	t
29535	db	2015-03-28	2015-03-28			-16.02	EUR	health	wellness	\N	t
29534	db	2015-03-28	2015-03-28			-2.45	EUR	free time	going out	\N	t
29576	db	2015-03-30	2015-03-30			-0.72	EUR	living	food	\N	t
29602	db	2015-03-31	2015-03-31			-2.58	EUR	free time	hobbies	\N	t
29636	db	2015-04-01	2015-04-01			-10.00	EUR	house	phone	\N	t
29628	db	2015-04-01	2015-04-01			-9.44	EUR	free time	sport	\N	t
29662	db	2015-04-02	2015-04-02			-10.00	EUR	house	electricity	\N	t
29655	db	2015-04-02	2015-04-02			-2.50	EUR	living	food	\N	t
29654	db	2015-04-02	2015-04-02			-4.27	EUR	free time	entertainment	\N	t
29688	db	2015-04-03	2015-04-03			-10.00	EUR	house	internet	\N	t
29683	db	2015-04-03	2015-04-03			-18.67	EUR	living	food	\N	t
29682	db	2015-04-03	2015-04-03			-15.80	EUR	free time	going out	\N	t
29681	db	2015-04-03	2015-04-03			-0.16	EUR	mobility	gas	\N	t
29675	db	2015-04-03	2015-04-03			-20.00	EUR	other	cash	\N	t
29714	db	2015-04-04	2015-04-04			-250.00	EUR	house	rent	\N	t
29710	db	2015-04-04	2015-04-04			-1.60	EUR	health	wellness	\N	t
29709	db	2015-04-04	2015-04-04			-0.71	EUR	free time	going out	\N	t
29740	db	2015-04-05	2015-04-05			-10.00	EUR	finance	costs and fees	\N	t
29766	db	2015-04-06	2015-04-06			-50.00	EUR	finance	insurance	\N	t
29751	db	2015-04-06	2015-04-06			-6.59	EUR	living	food	\N	t
29792	db	2015-04-07	2015-04-07			-83.59	EUR	health	doctor visits	\N	t
29777	db	2015-04-07	2015-04-07			-7.22	EUR	free time	hobbies	\N	t
29818	db	2015-04-08	2015-04-08			1000.00	EUR	work and training	salary	\N	t
29803	db	2015-04-08	2015-04-08			-3.07	EUR	free time	sport	\N	t
29830	db	2015-04-09	2015-04-09			-9.34	EUR	living	food	\N	t
29829	db	2015-04-09	2015-04-09			-3.72	EUR	free time	entertainment	\N	t
29869	db	2015-04-10	2015-04-10			-51.18	EUR	living	pets	\N	t
29858	db	2015-04-10	2015-04-10			-7.51	EUR	living	food	\N	t
29857	db	2015-04-10	2015-04-10			-9.87	EUR	free time	going out	\N	t
29856	db	2015-04-10	2015-04-10			-6.07	EUR	mobility	gas	\N	t
29850	db	2015-04-10	2015-04-10			-20.00	EUR	other	cash	\N	t
29885	db	2015-04-11	2015-04-11			-9.60	EUR	health	wellness	\N	t
29884	db	2015-04-11	2015-04-11			-0.58	EUR	free time	going out	\N	t
29926	db	2015-04-13	2015-04-13			-7.57	EUR	living	food	\N	t
29952	db	2015-04-14	2015-04-14			-6.70	EUR	free time	hobbies	\N	t
29995	db	2015-04-15	2015-04-15			-37.98	EUR	living	household	\N	t
29978	db	2015-04-15	2015-04-15			-0.17	EUR	free time	sport	\N	t
30005	db	2015-04-16	2015-04-16			-5.18	EUR	living	food	\N	t
30004	db	2015-04-16	2015-04-16			-3.51	EUR	free time	entertainment	\N	t
30033	db	2015-04-17	2015-04-17			-8.61	EUR	living	food	\N	t
30032	db	2015-04-17	2015-04-17			-11.60	EUR	free time	going out	\N	t
30031	db	2015-04-17	2015-04-17			-17.66	EUR	mobility	gas	\N	t
30025	db	2015-04-17	2015-04-17			-20.00	EUR	other	cash	\N	t
30060	db	2015-04-18	2015-04-18			-18.50	EUR	health	wellness	\N	t
30059	db	2015-04-18	2015-04-18			-15.58	EUR	free time	going out	\N	t
30122	db	2015-04-20	2015-04-20			-14.07	EUR	free time	gadgets	\N	t
30121	db	2015-04-20	2015-04-20			-39.47	EUR	living	clothes	\N	t
30101	db	2015-04-20	2015-04-20			-1.19	EUR	living	food	\N	t
30127	db	2015-04-21	2015-04-21			-2.92	EUR	free time	hobbies	\N	t
30153	db	2015-04-22	2015-04-22			-2.50	EUR	free time	sport	\N	t
30180	db	2015-04-23	2015-04-23			-6.07	EUR	living	food	\N	t
30179	db	2015-04-23	2015-04-23			-0.84	EUR	free time	entertainment	\N	t
30208	db	2015-04-24	2015-04-24			-8.45	EUR	living	food	\N	t
30207	db	2015-04-24	2015-04-24			-6.89	EUR	free time	going out	\N	t
30206	db	2015-04-24	2015-04-24			-10.11	EUR	mobility	gas	\N	t
30200	db	2015-04-24	2015-04-24			-20.00	EUR	other	cash	\N	t
30235	db	2015-04-25	2015-04-25			-9.55	EUR	health	wellness	\N	t
30234	db	2015-04-25	2015-04-25			-11.04	EUR	free time	going out	\N	t
30276	db	2015-04-27	2015-04-27			-7.91	EUR	living	food	\N	t
30302	db	2015-04-28	2015-04-28			-8.60	EUR	free time	hobbies	\N	t
30328	db	2015-04-29	2015-04-29			-8.41	EUR	free time	sport	\N	t
30355	db	2015-04-30	2015-04-30			-2.00	EUR	living	food	\N	t
30354	db	2015-04-30	2015-04-30			-0.03	EUR	free time	entertainment	\N	t
30386	db	2015-05-01	2015-05-01			-10.00	EUR	house	phone	\N	t
30383	db	2015-05-01	2015-05-01			-8.30	EUR	living	food	\N	t
30382	db	2015-05-01	2015-05-01			-0.86	EUR	free time	going out	\N	t
30381	db	2015-05-01	2015-05-01			-15.94	EUR	mobility	gas	\N	t
30375	db	2015-05-01	2015-05-01			-20.00	EUR	other	cash	\N	t
30412	db	2015-05-02	2015-05-02			-10.00	EUR	house	electricity	\N	t
30410	db	2015-05-02	2015-05-02			-16.12	EUR	health	wellness	\N	t
30409	db	2015-05-02	2015-05-02			-9.70	EUR	free time	going out	\N	t
30438	db	2015-05-03	2015-05-03			-10.00	EUR	house	internet	\N	t
30464	db	2015-05-04	2015-05-04			-250.00	EUR	house	rent	\N	t
30451	db	2015-05-04	2015-05-04			-6.72	EUR	living	food	\N	t
30490	db	2015-05-05	2015-05-05			-10.00	EUR	finance	costs and fees	\N	t
30477	db	2015-05-05	2015-05-05			-7.40	EUR	free time	hobbies	\N	t
30516	db	2015-05-06	2015-05-06			-50.00	EUR	finance	insurance	\N	t
30503	db	2015-05-06	2015-05-06			-9.04	EUR	free time	sport	\N	t
30542	db	2015-05-07	2015-05-07			-19.31	EUR	health	doctor visits	\N	t
30530	db	2015-05-07	2015-05-07			-0.07	EUR	living	food	\N	t
30529	db	2015-05-07	2015-05-07			-0.87	EUR	free time	entertainment	\N	t
30568	db	2015-05-08	2015-05-08			1000.00	EUR	work and training	salary	\N	t
30558	db	2015-05-08	2015-05-08			-11.18	EUR	living	food	\N	t
30557	db	2015-05-08	2015-05-08			-6.44	EUR	free time	going out	\N	t
30556	db	2015-05-08	2015-05-08			-19.24	EUR	mobility	gas	\N	t
30550	db	2015-05-08	2015-05-08			-20.00	EUR	other	cash	\N	t
30585	db	2015-05-09	2015-05-09			-0.60	EUR	health	wellness	\N	t
30584	db	2015-05-09	2015-05-09			-6.74	EUR	free time	going out	\N	t
30619	db	2015-05-10	2015-05-10			-16.67	EUR	living	pets	\N	t
30626	db	2015-05-11	2015-05-11			-1.29	EUR	living	food	\N	t
30652	db	2015-05-12	2015-05-12			-5.44	EUR	free time	hobbies	\N	t
30678	db	2015-05-13	2015-05-13			-6.08	EUR	free time	sport	\N	t
30705	db	2015-05-14	2015-05-14			-9.46	EUR	living	food	\N	t
30704	db	2015-05-14	2015-05-14			-6.56	EUR	free time	entertainment	\N	t
30745	db	2015-05-15	2015-05-15			-49.54	EUR	living	household	\N	t
30733	db	2015-05-15	2015-05-15			-14.16	EUR	living	food	\N	t
30732	db	2015-05-15	2015-05-15			-9.36	EUR	free time	going out	\N	t
30731	db	2015-05-15	2015-05-15			-13.45	EUR	mobility	gas	\N	t
30725	db	2015-05-15	2015-05-15			-20.00	EUR	other	cash	\N	t
30760	db	2015-05-16	2015-05-16			-6.01	EUR	health	wellness	\N	t
30759	db	2015-05-16	2015-05-16			-0.52	EUR	free time	going out	\N	t
30801	db	2015-05-18	2015-05-18			-7.48	EUR	living	food	\N	t
30827	db	2015-05-19	2015-05-19			-4.83	EUR	free time	hobbies	\N	t
30872	db	2015-05-20	2015-05-20			-32.82	EUR	free time	gadgets	\N	t
30871	db	2015-05-20	2015-05-20			-5.03	EUR	living	clothes	\N	t
30853	db	2015-05-20	2015-05-20			-7.26	EUR	free time	sport	\N	t
30880	db	2015-05-21	2015-05-21			-6.09	EUR	living	food	\N	t
30879	db	2015-05-21	2015-05-21			-4.37	EUR	free time	entertainment	\N	t
30908	db	2015-05-22	2015-05-22			-12.37	EUR	living	food	\N	t
30907	db	2015-05-22	2015-05-22			-19.64	EUR	free time	going out	\N	t
30906	db	2015-05-22	2015-05-22			-19.81	EUR	mobility	gas	\N	t
30900	db	2015-05-22	2015-05-22			-20.00	EUR	other	cash	\N	t
30935	db	2015-05-23	2015-05-23			-1.45	EUR	health	wellness	\N	t
30934	db	2015-05-23	2015-05-23			-12.92	EUR	free time	going out	\N	t
30976	db	2015-05-25	2015-05-25			-7.14	EUR	living	food	\N	t
31002	db	2015-05-26	2015-05-26			-0.05	EUR	free time	hobbies	\N	t
31028	db	2015-05-27	2015-05-27			-6.38	EUR	free time	sport	\N	t
31055	db	2015-05-28	2015-05-28			-6.34	EUR	living	food	\N	t
31054	db	2015-05-28	2015-05-28			-8.86	EUR	free time	entertainment	\N	t
31083	db	2015-05-29	2015-05-29			-16.78	EUR	living	food	\N	t
31082	db	2015-05-29	2015-05-29			-13.53	EUR	free time	going out	\N	t
31081	db	2015-05-29	2015-05-29			-12.42	EUR	mobility	gas	\N	t
31075	db	2015-05-29	2015-05-29			-20.00	EUR	other	cash	\N	t
31110	db	2015-05-30	2015-05-30			-2.44	EUR	health	wellness	\N	t
31109	db	2015-05-30	2015-05-30			-19.08	EUR	free time	going out	\N	t
31161	db	2015-06-01	2015-06-01			-10.00	EUR	house	phone	\N	t
31151	db	2015-06-01	2015-06-01			-4.23	EUR	living	food	\N	t
31187	db	2015-06-02	2015-06-02			-10.00	EUR	house	electricity	\N	t
31177	db	2015-06-02	2015-06-02			-2.71	EUR	free time	hobbies	\N	t
31213	db	2015-06-03	2015-06-03			-10.00	EUR	house	internet	\N	t
31203	db	2015-06-03	2015-06-03			-0.69	EUR	free time	sport	\N	t
31239	db	2015-06-04	2015-06-04			-250.00	EUR	house	rent	\N	t
31230	db	2015-06-04	2015-06-04			-7.80	EUR	living	food	\N	t
31229	db	2015-06-04	2015-06-04			-3.65	EUR	free time	entertainment	\N	t
31265	db	2015-06-05	2015-06-05			-10.00	EUR	finance	costs and fees	\N	t
31258	db	2015-06-05	2015-06-05			-0.54	EUR	living	food	\N	t
31257	db	2015-06-05	2015-06-05			-10.41	EUR	free time	going out	\N	t
31256	db	2015-06-05	2015-06-05			-6.49	EUR	mobility	gas	\N	t
31250	db	2015-06-05	2015-06-05			-20.00	EUR	other	cash	\N	t
31291	db	2015-06-06	2015-06-06			-50.00	EUR	finance	insurance	\N	t
31285	db	2015-06-06	2015-06-06			-4.55	EUR	health	wellness	\N	t
31284	db	2015-06-06	2015-06-06			-18.72	EUR	free time	going out	\N	t
31317	db	2015-06-07	2015-06-07			-99.99	EUR	health	doctor visits	\N	t
31343	db	2015-06-08	2015-06-08			1000.00	EUR	work and training	salary	\N	t
31326	db	2015-06-08	2015-06-08			-4.73	EUR	living	food	\N	t
31352	db	2015-06-09	2015-06-09			-0.90	EUR	free time	hobbies	\N	t
31394	db	2015-06-10	2015-06-10			-50.84	EUR	living	pets	\N	t
31378	db	2015-06-10	2015-06-10			-3.94	EUR	free time	sport	\N	t
31405	db	2015-06-11	2015-06-11			-3.61	EUR	living	food	\N	t
31404	db	2015-06-11	2015-06-11			-8.23	EUR	free time	entertainment	\N	t
31433	db	2015-06-12	2015-06-12			-12.82	EUR	living	food	\N	t
31432	db	2015-06-12	2015-06-12			-6.85	EUR	free time	going out	\N	t
31431	db	2015-06-12	2015-06-12			-15.45	EUR	mobility	gas	\N	t
31425	db	2015-06-12	2015-06-12			-20.00	EUR	other	cash	\N	t
31460	db	2015-06-13	2015-06-13			-19.99	EUR	health	wellness	\N	t
31459	db	2015-06-13	2015-06-13			-11.15	EUR	free time	going out	\N	t
31520	db	2015-06-15	2015-06-15			-57.68	EUR	living	household	\N	t
31501	db	2015-06-15	2015-06-15			-9.89	EUR	living	food	\N	t
31527	db	2015-06-16	2015-06-16			-4.78	EUR	free time	hobbies	\N	t
31553	db	2015-06-17	2015-06-17			-1.86	EUR	free time	sport	\N	t
31580	db	2015-06-18	2015-06-18			-2.25	EUR	living	food	\N	t
31579	db	2015-06-18	2015-06-18			-4.79	EUR	free time	entertainment	\N	t
31608	db	2015-06-19	2015-06-19			-12.85	EUR	living	food	\N	t
31607	db	2015-06-19	2015-06-19			-13.19	EUR	free time	going out	\N	t
31606	db	2015-06-19	2015-06-19			-7.69	EUR	mobility	gas	\N	t
31600	db	2015-06-19	2015-06-19			-20.00	EUR	other	cash	\N	t
31647	db	2015-06-20	2015-06-20			-78.08	EUR	free time	gadgets	\N	t
31646	db	2015-06-20	2015-06-20			-43.71	EUR	living	clothes	\N	t
31635	db	2015-06-20	2015-06-20			-2.47	EUR	health	wellness	\N	t
31634	db	2015-06-20	2015-06-20			-16.08	EUR	free time	going out	\N	t
31676	db	2015-06-22	2015-06-22			-4.21	EUR	living	food	\N	t
31702	db	2015-06-23	2015-06-23			-1.30	EUR	free time	hobbies	\N	t
31728	db	2015-06-24	2015-06-24			-8.71	EUR	free time	sport	\N	t
31755	db	2015-06-25	2015-06-25			-2.74	EUR	living	food	\N	t
31754	db	2015-06-25	2015-06-25			-8.87	EUR	free time	entertainment	\N	t
31783	db	2015-06-26	2015-06-26			-1.17	EUR	living	food	\N	t
31782	db	2015-06-26	2015-06-26			-15.00	EUR	free time	going out	\N	t
31781	db	2015-06-26	2015-06-26			-4.30	EUR	mobility	gas	\N	t
31775	db	2015-06-26	2015-06-26			-20.00	EUR	other	cash	\N	t
31810	db	2015-06-27	2015-06-27			-11.80	EUR	health	wellness	\N	t
31809	db	2015-06-27	2015-06-27			-12.63	EUR	free time	going out	\N	t
31873	db	2015-06-29	2015-06-29			-484.87	EUR	free time	travel	\N	t
31851	db	2015-06-29	2015-06-29			-3.55	EUR	living	food	\N	t
31877	db	2015-06-30	2015-06-30			-3.88	EUR	free time	hobbies	\N	t
31911	db	2015-07-01	2015-07-01			-10.00	EUR	house	phone	\N	t
31903	db	2015-07-01	2015-07-01			-0.78	EUR	free time	sport	\N	t
31937	db	2015-07-02	2015-07-02			-10.00	EUR	house	electricity	\N	t
31930	db	2015-07-02	2015-07-02			-3.90	EUR	living	food	\N	t
31929	db	2015-07-02	2015-07-02			-5.19	EUR	free time	entertainment	\N	t
31963	db	2015-07-03	2015-07-03			-10.00	EUR	house	internet	\N	t
31958	db	2015-07-03	2015-07-03			-5.62	EUR	living	food	\N	t
31957	db	2015-07-03	2015-07-03			-16.34	EUR	free time	going out	\N	t
31956	db	2015-07-03	2015-07-03			-16.80	EUR	mobility	gas	\N	t
31950	db	2015-07-03	2015-07-03			-20.00	EUR	other	cash	\N	t
31989	db	2015-07-04	2015-07-04			-250.00	EUR	house	rent	\N	t
31985	db	2015-07-04	2015-07-04			-10.84	EUR	health	wellness	\N	t
31984	db	2015-07-04	2015-07-04			-17.61	EUR	free time	going out	\N	t
32015	db	2015-07-05	2015-07-05			-10.00	EUR	finance	costs and fees	\N	t
32041	db	2015-07-06	2015-07-06			-50.00	EUR	finance	insurance	\N	t
32026	db	2015-07-06	2015-07-06			-0.63	EUR	living	food	\N	t
32067	db	2015-07-07	2015-07-07			-96.22	EUR	health	doctor visits	\N	t
32052	db	2015-07-07	2015-07-07			-1.85	EUR	free time	hobbies	\N	t
32093	db	2015-07-08	2015-07-08			1000.00	EUR	work and training	salary	\N	t
32078	db	2015-07-08	2015-07-08			-0.71	EUR	free time	sport	\N	t
32105	db	2015-07-09	2015-07-09			-8.59	EUR	living	food	\N	t
32104	db	2015-07-09	2015-07-09			-8.93	EUR	free time	entertainment	\N	t
32144	db	2015-07-10	2015-07-10			-20.47	EUR	living	pets	\N	t
32133	db	2015-07-10	2015-07-10			-13.79	EUR	living	food	\N	t
32132	db	2015-07-10	2015-07-10			-3.98	EUR	free time	going out	\N	t
32131	db	2015-07-10	2015-07-10			-12.11	EUR	mobility	gas	\N	t
32125	db	2015-07-10	2015-07-10			-20.00	EUR	other	cash	\N	t
32160	db	2015-07-11	2015-07-11			-5.68	EUR	health	wellness	\N	t
32159	db	2015-07-11	2015-07-11			-2.87	EUR	free time	going out	\N	t
32201	db	2015-07-13	2015-07-13			-3.20	EUR	living	food	\N	t
32227	db	2015-07-14	2015-07-14			-9.49	EUR	free time	hobbies	\N	t
32270	db	2015-07-15	2015-07-15			-50.85	EUR	living	household	\N	t
32253	db	2015-07-15	2015-07-15			-5.42	EUR	free time	sport	\N	t
32280	db	2015-07-16	2015-07-16			-0.40	EUR	living	food	\N	t
32279	db	2015-07-16	2015-07-16			-8.09	EUR	free time	entertainment	\N	t
32308	db	2015-07-17	2015-07-17			-2.78	EUR	living	food	\N	t
32307	db	2015-07-17	2015-07-17			-5.40	EUR	free time	going out	\N	t
32306	db	2015-07-17	2015-07-17			-3.63	EUR	mobility	gas	\N	t
32300	db	2015-07-17	2015-07-17			-20.00	EUR	other	cash	\N	t
32335	db	2015-07-18	2015-07-18			-19.69	EUR	health	wellness	\N	t
32334	db	2015-07-18	2015-07-18			-11.56	EUR	free time	going out	\N	t
32397	db	2015-07-20	2015-07-20			-67.51	EUR	free time	gadgets	\N	t
32396	db	2015-07-20	2015-07-20			-41.90	EUR	living	clothes	\N	t
32376	db	2015-07-20	2015-07-20			-6.99	EUR	living	food	\N	t
32402	db	2015-07-21	2015-07-21			-7.25	EUR	free time	hobbies	\N	t
32428	db	2015-07-22	2015-07-22			-3.86	EUR	free time	sport	\N	t
32455	db	2015-07-23	2015-07-23			-5.17	EUR	living	food	\N	t
32454	db	2015-07-23	2015-07-23			-1.43	EUR	free time	entertainment	\N	t
32483	db	2015-07-24	2015-07-24			-16.93	EUR	living	food	\N	t
32482	db	2015-07-24	2015-07-24			-0.81	EUR	free time	going out	\N	t
32481	db	2015-07-24	2015-07-24			-17.47	EUR	mobility	gas	\N	t
32475	db	2015-07-24	2015-07-24			-20.00	EUR	other	cash	\N	t
32510	db	2015-07-25	2015-07-25			-2.91	EUR	health	wellness	\N	t
32509	db	2015-07-25	2015-07-25			-10.41	EUR	free time	going out	\N	t
32551	db	2015-07-27	2015-07-27			-2.14	EUR	living	food	\N	t
32577	db	2015-07-28	2015-07-28			-7.95	EUR	free time	hobbies	\N	t
32603	db	2015-07-29	2015-07-29			-2.99	EUR	free time	sport	\N	t
32630	db	2015-07-30	2015-07-30			-5.29	EUR	living	food	\N	t
32629	db	2015-07-30	2015-07-30			-2.15	EUR	free time	entertainment	\N	t
32658	db	2015-07-31	2015-07-31			-14.64	EUR	living	food	\N	t
32657	db	2015-07-31	2015-07-31			-7.55	EUR	free time	going out	\N	t
32656	db	2015-07-31	2015-07-31			-6.84	EUR	mobility	gas	\N	t
32650	db	2015-07-31	2015-07-31			-20.00	EUR	other	cash	\N	t
32686	db	2015-08-01	2015-08-01			-10.00	EUR	house	phone	\N	t
32685	db	2015-08-01	2015-08-01			-14.36	EUR	health	wellness	\N	t
32684	db	2015-08-01	2015-08-01			-9.26	EUR	free time	going out	\N	t
32712	db	2015-08-02	2015-08-02			-10.00	EUR	house	electricity	\N	t
32738	db	2015-08-03	2015-08-03			-10.00	EUR	house	internet	\N	t
32726	db	2015-08-03	2015-08-03			-3.37	EUR	living	food	\N	t
32764	db	2015-08-04	2015-08-04			-250.00	EUR	house	rent	\N	t
32752	db	2015-08-04	2015-08-04			-8.60	EUR	free time	hobbies	\N	t
32790	db	2015-08-05	2015-08-05			-10.00	EUR	finance	costs and fees	\N	t
32778	db	2015-08-05	2015-08-05			-7.98	EUR	free time	sport	\N	t
32816	db	2015-08-06	2015-08-06			-50.00	EUR	finance	insurance	\N	t
32805	db	2015-08-06	2015-08-06			-7.23	EUR	living	food	\N	t
32804	db	2015-08-06	2015-08-06			-2.44	EUR	free time	entertainment	\N	t
32842	db	2015-08-07	2015-08-07			-2.76	EUR	health	doctor visits	\N	t
32833	db	2015-08-07	2015-08-07			-17.30	EUR	living	food	\N	t
32832	db	2015-08-07	2015-08-07			-14.48	EUR	free time	going out	\N	t
32831	db	2015-08-07	2015-08-07			-0.77	EUR	mobility	gas	\N	t
32825	db	2015-08-07	2015-08-07			-20.00	EUR	other	cash	\N	t
32868	db	2015-08-08	2015-08-08			1000.00	EUR	work and training	salary	\N	t
32860	db	2015-08-08	2015-08-08			-2.92	EUR	health	wellness	\N	t
32859	db	2015-08-08	2015-08-08			-11.41	EUR	free time	going out	\N	t
32919	db	2015-08-10	2015-08-10			-45.17	EUR	living	pets	\N	t
32901	db	2015-08-10	2015-08-10			-7.70	EUR	living	food	\N	t
32927	db	2015-08-11	2015-08-11			-9.51	EUR	free time	hobbies	\N	t
32953	db	2015-08-12	2015-08-12			-8.69	EUR	free time	sport	\N	t
32980	db	2015-08-13	2015-08-13			-9.90	EUR	living	food	\N	t
32979	db	2015-08-13	2015-08-13			-7.38	EUR	free time	entertainment	\N	t
33008	db	2015-08-14	2015-08-14			-12.92	EUR	living	food	\N	t
33007	db	2015-08-14	2015-08-14			-4.62	EUR	free time	going out	\N	t
33006	db	2015-08-14	2015-08-14			-10.62	EUR	mobility	gas	\N	t
33000	db	2015-08-14	2015-08-14			-20.00	EUR	other	cash	\N	t
33045	db	2015-08-15	2015-08-15			-17.51	EUR	living	household	\N	t
33035	db	2015-08-15	2015-08-15			-5.26	EUR	health	wellness	\N	t
33034	db	2015-08-15	2015-08-15			-4.65	EUR	free time	going out	\N	t
33076	db	2015-08-17	2015-08-17			-2.64	EUR	living	food	\N	t
33102	db	2015-08-18	2015-08-18			-8.24	EUR	free time	hobbies	\N	t
33128	db	2015-08-19	2015-08-19			-7.56	EUR	free time	sport	\N	t
33172	db	2015-08-20	2015-08-20			-65.98	EUR	free time	gadgets	\N	t
33171	db	2015-08-20	2015-08-20			-75.53	EUR	living	clothes	\N	t
33155	db	2015-08-20	2015-08-20			-0.54	EUR	living	food	\N	t
33154	db	2015-08-20	2015-08-20			-2.73	EUR	free time	entertainment	\N	t
33183	db	2015-08-21	2015-08-21			-1.02	EUR	living	food	\N	t
33182	db	2015-08-21	2015-08-21			-3.95	EUR	free time	going out	\N	t
33181	db	2015-08-21	2015-08-21			-15.58	EUR	mobility	gas	\N	t
33175	db	2015-08-21	2015-08-21			-20.00	EUR	other	cash	\N	t
33210	db	2015-08-22	2015-08-22			-14.58	EUR	health	wellness	\N	t
33209	db	2015-08-22	2015-08-22			-0.92	EUR	free time	going out	\N	t
33251	db	2015-08-24	2015-08-24			-5.08	EUR	living	food	\N	t
33277	db	2015-08-25	2015-08-25			-5.85	EUR	free time	hobbies	\N	t
33303	db	2015-08-26	2015-08-26			-5.47	EUR	free time	sport	\N	t
33330	db	2015-08-27	2015-08-27			-1.53	EUR	living	food	\N	t
33329	db	2015-08-27	2015-08-27			-1.44	EUR	free time	entertainment	\N	t
33358	db	2015-08-28	2015-08-28			-12.66	EUR	living	food	\N	t
33357	db	2015-08-28	2015-08-28			-8.75	EUR	free time	going out	\N	t
33356	db	2015-08-28	2015-08-28			-2.27	EUR	mobility	gas	\N	t
33350	db	2015-08-28	2015-08-28			-20.00	EUR	other	cash	\N	t
33385	db	2015-08-29	2015-08-29			-4.34	EUR	health	wellness	\N	t
33384	db	2015-08-29	2015-08-29			-7.90	EUR	free time	going out	\N	t
33426	db	2015-08-31	2015-08-31			-8.26	EUR	living	food	\N	t
33461	db	2015-09-01	2015-09-01			-10.00	EUR	house	phone	\N	t
33452	db	2015-09-01	2015-09-01			-8.96	EUR	free time	hobbies	\N	t
33487	db	2015-09-02	2015-09-02			-10.00	EUR	house	electricity	\N	t
33478	db	2015-09-02	2015-09-02			-6.42	EUR	free time	sport	\N	t
33513	db	2015-09-03	2015-09-03			-10.00	EUR	house	internet	\N	t
33505	db	2015-09-03	2015-09-03			-3.04	EUR	living	food	\N	t
33504	db	2015-09-03	2015-09-03			-5.88	EUR	free time	entertainment	\N	t
33539	db	2015-09-04	2015-09-04			-250.00	EUR	house	rent	\N	t
33533	db	2015-09-04	2015-09-04			-1.85	EUR	living	food	\N	t
33532	db	2015-09-04	2015-09-04			-3.16	EUR	free time	going out	\N	t
33531	db	2015-09-04	2015-09-04			-1.45	EUR	mobility	gas	\N	t
33525	db	2015-09-04	2015-09-04			-20.00	EUR	other	cash	\N	t
33565	db	2015-09-05	2015-09-05			-10.00	EUR	finance	costs and fees	\N	t
33560	db	2015-09-05	2015-09-05			-11.60	EUR	health	wellness	\N	t
33559	db	2015-09-05	2015-09-05			-3.79	EUR	free time	going out	\N	t
33591	db	2015-09-06	2015-09-06			-50.00	EUR	finance	insurance	\N	t
33617	db	2015-09-07	2015-09-07			-0.03	EUR	health	doctor visits	\N	t
33601	db	2015-09-07	2015-09-07			-7.22	EUR	living	food	\N	t
33643	db	2015-09-08	2015-09-08			1000.00	EUR	work and training	salary	\N	t
33627	db	2015-09-08	2015-09-08			-5.49	EUR	free time	hobbies	\N	t
33653	db	2015-09-09	2015-09-09			-4.96	EUR	free time	sport	\N	t
33694	db	2015-09-10	2015-09-10			-16.56	EUR	living	pets	\N	t
33680	db	2015-09-10	2015-09-10			-1.89	EUR	living	food	\N	t
33679	db	2015-09-10	2015-09-10			-3.72	EUR	free time	entertainment	\N	t
33708	db	2015-09-11	2015-09-11			-17.96	EUR	living	food	\N	t
33707	db	2015-09-11	2015-09-11			-2.38	EUR	free time	going out	\N	t
33706	db	2015-09-11	2015-09-11			-11.73	EUR	mobility	gas	\N	t
33700	db	2015-09-11	2015-09-11			-20.00	EUR	other	cash	\N	t
33735	db	2015-09-12	2015-09-12			-16.34	EUR	health	wellness	\N	t
33734	db	2015-09-12	2015-09-12			-11.25	EUR	free time	going out	\N	t
33776	db	2015-09-14	2015-09-14			-1.95	EUR	living	food	\N	t
33820	db	2015-09-15	2015-09-15			-77.17	EUR	living	household	\N	t
33802	db	2015-09-15	2015-09-15			-5.31	EUR	free time	hobbies	\N	t
33828	db	2015-09-16	2015-09-16			-5.29	EUR	free time	sport	\N	t
33855	db	2015-09-17	2015-09-17			-0.57	EUR	living	food	\N	t
33854	db	2015-09-17	2015-09-17			-9.41	EUR	free time	entertainment	\N	t
33883	db	2015-09-18	2015-09-18			-18.71	EUR	living	food	\N	t
33882	db	2015-09-18	2015-09-18			-10.42	EUR	free time	going out	\N	t
33881	db	2015-09-18	2015-09-18			-17.20	EUR	mobility	gas	\N	t
33875	db	2015-09-18	2015-09-18			-20.00	EUR	other	cash	\N	t
33910	db	2015-09-19	2015-09-19			-13.34	EUR	health	wellness	\N	t
33909	db	2015-09-19	2015-09-19			-16.56	EUR	free time	going out	\N	t
33947	db	2015-09-20	2015-09-20			-27.37	EUR	free time	gadgets	\N	t
33946	db	2015-09-20	2015-09-20			-75.11	EUR	living	clothes	\N	t
33951	db	2015-09-21	2015-09-21			-9.86	EUR	living	food	\N	t
33977	db	2015-09-22	2015-09-22			-5.89	EUR	free time	hobbies	\N	t
34003	db	2015-09-23	2015-09-23			-2.25	EUR	free time	sport	\N	t
34030	db	2015-09-24	2015-09-24			-1.90	EUR	living	food	\N	t
34029	db	2015-09-24	2015-09-24			-7.19	EUR	free time	entertainment	\N	t
34058	db	2015-09-25	2015-09-25			-15.15	EUR	living	food	\N	t
34057	db	2015-09-25	2015-09-25			-7.46	EUR	free time	going out	\N	t
34056	db	2015-09-25	2015-09-25			-3.08	EUR	mobility	gas	\N	t
34050	db	2015-09-25	2015-09-25			-20.00	EUR	other	cash	\N	t
34085	db	2015-09-26	2015-09-26			-6.43	EUR	health	wellness	\N	t
34084	db	2015-09-26	2015-09-26			-2.16	EUR	free time	going out	\N	t
34126	db	2015-09-28	2015-09-28			-4.04	EUR	living	food	\N	t
34152	db	2015-09-29	2015-09-29			-4.97	EUR	free time	hobbies	\N	t
34178	db	2015-09-30	2015-09-30			-9.38	EUR	free time	sport	\N	t
34211	db	2015-10-01	2015-10-01			-10.00	EUR	house	phone	\N	t
34205	db	2015-10-01	2015-10-01			-2.50	EUR	living	food	\N	t
34204	db	2015-10-01	2015-10-01			-3.92	EUR	free time	entertainment	\N	t
34237	db	2015-10-02	2015-10-02			-10.00	EUR	house	electricity	\N	t
34233	db	2015-10-02	2015-10-02			-16.36	EUR	living	food	\N	t
34232	db	2015-10-02	2015-10-02			-5.51	EUR	free time	going out	\N	t
34231	db	2015-10-02	2015-10-02			-11.19	EUR	mobility	gas	\N	t
34225	db	2015-10-02	2015-10-02			-20.00	EUR	other	cash	\N	t
34263	db	2015-10-03	2015-10-03			-10.00	EUR	house	internet	\N	t
34260	db	2015-10-03	2015-10-03			-17.78	EUR	health	wellness	\N	t
34259	db	2015-10-03	2015-10-03			-4.91	EUR	free time	going out	\N	t
34289	db	2015-10-04	2015-10-04			-250.00	EUR	house	rent	\N	t
34315	db	2015-10-05	2015-10-05			-10.00	EUR	finance	costs and fees	\N	t
34301	db	2015-10-05	2015-10-05			-7.91	EUR	living	food	\N	t
34341	db	2015-10-06	2015-10-06			-50.00	EUR	finance	insurance	\N	t
34327	db	2015-10-06	2015-10-06			-2.34	EUR	free time	hobbies	\N	t
34367	db	2015-10-07	2015-10-07			-26.15	EUR	health	doctor visits	\N	t
34353	db	2015-10-07	2015-10-07			-0.13	EUR	free time	sport	\N	t
34393	db	2015-10-08	2015-10-08			1000.00	EUR	work and training	salary	\N	t
34380	db	2015-10-08	2015-10-08			-6.74	EUR	living	food	\N	t
34379	db	2015-10-08	2015-10-08			-5.03	EUR	free time	entertainment	\N	t
34408	db	2015-10-09	2015-10-09			-18.74	EUR	living	food	\N	t
34407	db	2015-10-09	2015-10-09			-11.74	EUR	free time	going out	\N	t
34406	db	2015-10-09	2015-10-09			-16.41	EUR	mobility	gas	\N	t
34400	db	2015-10-09	2015-10-09			-20.00	EUR	other	cash	\N	t
34444	db	2015-10-10	2015-10-10			-50.20	EUR	living	pets	\N	t
34435	db	2015-10-10	2015-10-10			-8.71	EUR	health	wellness	\N	t
34434	db	2015-10-10	2015-10-10			-0.08	EUR	free time	going out	\N	t
34476	db	2015-10-12	2015-10-12			-0.68	EUR	living	food	\N	t
34502	db	2015-10-13	2015-10-13			-0.41	EUR	free time	hobbies	\N	t
34528	db	2015-10-14	2015-10-14			-0.53	EUR	free time	sport	\N	t
34570	db	2015-10-15	2015-10-15			-56.41	EUR	living	household	\N	t
34555	db	2015-10-15	2015-10-15			-7.63	EUR	living	food	\N	t
34554	db	2015-10-15	2015-10-15			-3.19	EUR	free time	entertainment	\N	t
34583	db	2015-10-16	2015-10-16			-7.50	EUR	living	food	\N	t
34582	db	2015-10-16	2015-10-16			-5.95	EUR	free time	going out	\N	t
34581	db	2015-10-16	2015-10-16			-3.47	EUR	mobility	gas	\N	t
34575	db	2015-10-16	2015-10-16			-20.00	EUR	other	cash	\N	t
34610	db	2015-10-17	2015-10-17			-3.44	EUR	health	wellness	\N	t
34609	db	2015-10-17	2015-10-17			-16.61	EUR	free time	going out	\N	t
34651	db	2015-10-19	2015-10-19			-6.06	EUR	living	food	\N	t
34697	db	2015-10-20	2015-10-20			-69.34	EUR	free time	gadgets	\N	t
34696	db	2015-10-20	2015-10-20			-71.96	EUR	living	clothes	\N	t
34677	db	2015-10-20	2015-10-20			-2.60	EUR	free time	hobbies	\N	t
34703	db	2015-10-21	2015-10-21			-7.96	EUR	free time	sport	\N	t
34730	db	2015-10-22	2015-10-22			-1.02	EUR	living	food	\N	t
34729	db	2015-10-22	2015-10-22			-2.26	EUR	free time	entertainment	\N	t
34758	db	2015-10-23	2015-10-23			-7.64	EUR	living	food	\N	t
34757	db	2015-10-23	2015-10-23			-16.03	EUR	free time	going out	\N	t
34756	db	2015-10-23	2015-10-23			-12.49	EUR	mobility	gas	\N	t
34750	db	2015-10-23	2015-10-23			-20.00	EUR	other	cash	\N	t
34785	db	2015-10-24	2015-10-24			-8.00	EUR	health	wellness	\N	t
34784	db	2015-10-24	2015-10-24			-11.32	EUR	free time	going out	\N	t
34826	db	2015-10-26	2015-10-26			-0.39	EUR	living	food	\N	t
34852	db	2015-10-27	2015-10-27			-3.88	EUR	free time	hobbies	\N	t
34878	db	2015-10-28	2015-10-28			-5.26	EUR	free time	sport	\N	t
34905	db	2015-10-29	2015-10-29			-1.52	EUR	living	food	\N	t
34904	db	2015-10-29	2015-10-29			-6.35	EUR	free time	entertainment	\N	t
34933	db	2015-10-30	2015-10-30			-2.71	EUR	living	food	\N	t
34932	db	2015-10-30	2015-10-30			-9.63	EUR	free time	going out	\N	t
34931	db	2015-10-30	2015-10-30			-17.29	EUR	mobility	gas	\N	t
34925	db	2015-10-30	2015-10-30			-20.00	EUR	other	cash	\N	t
34960	db	2015-10-31	2015-10-31			-12.16	EUR	health	wellness	\N	t
34959	db	2015-10-31	2015-10-31			-13.91	EUR	free time	going out	\N	t
34986	db	2015-11-01	2015-11-01			-10.00	EUR	house	phone	\N	t
35012	db	2015-11-02	2015-11-02			-10.00	EUR	house	electricity	\N	t
35001	db	2015-11-02	2015-11-02			-1.29	EUR	living	food	\N	t
35038	db	2015-11-03	2015-11-03			-10.00	EUR	house	internet	\N	t
35027	db	2015-11-03	2015-11-03			-8.82	EUR	free time	hobbies	\N	t
35064	db	2015-11-04	2015-11-04			-250.00	EUR	house	rent	\N	t
35053	db	2015-11-04	2015-11-04			-8.65	EUR	free time	sport	\N	t
35090	db	2015-11-05	2015-11-05			-10.00	EUR	finance	costs and fees	\N	t
35080	db	2015-11-05	2015-11-05			-9.30	EUR	living	food	\N	t
35079	db	2015-11-05	2015-11-05			-2.81	EUR	free time	entertainment	\N	t
35116	db	2015-11-06	2015-11-06			-50.00	EUR	finance	insurance	\N	t
35108	db	2015-11-06	2015-11-06			-9.43	EUR	living	food	\N	t
35107	db	2015-11-06	2015-11-06			-0.44	EUR	free time	going out	\N	t
35106	db	2015-11-06	2015-11-06			-4.27	EUR	mobility	gas	\N	t
35100	db	2015-11-06	2015-11-06			-20.00	EUR	other	cash	\N	t
35142	db	2015-11-07	2015-11-07			-42.76	EUR	health	doctor visits	\N	t
35135	db	2015-11-07	2015-11-07			-0.08	EUR	health	wellness	\N	t
35134	db	2015-11-07	2015-11-07			-14.69	EUR	free time	going out	\N	t
35168	db	2015-11-08	2015-11-08			1000.00	EUR	work and training	salary	\N	t
35176	db	2015-11-09	2015-11-09			-3.59	EUR	living	food	\N	t
35219	db	2015-11-10	2015-11-10			-19.17	EUR	living	pets	\N	t
35202	db	2015-11-10	2015-11-10			-7.88	EUR	free time	hobbies	\N	t
35228	db	2015-11-11	2015-11-11			-0.36	EUR	free time	sport	\N	t
35255	db	2015-11-12	2015-11-12			-7.69	EUR	living	food	\N	t
35254	db	2015-11-12	2015-11-12			-7.35	EUR	free time	entertainment	\N	t
35283	db	2015-11-13	2015-11-13			-16.25	EUR	living	food	\N	t
35282	db	2015-11-13	2015-11-13			-13.22	EUR	free time	going out	\N	t
35281	db	2015-11-13	2015-11-13			-17.43	EUR	mobility	gas	\N	t
35275	db	2015-11-13	2015-11-13			-20.00	EUR	other	cash	\N	t
35310	db	2015-11-14	2015-11-14			-19.08	EUR	health	wellness	\N	t
35309	db	2015-11-14	2015-11-14			-5.75	EUR	free time	going out	\N	t
35345	db	2015-11-15	2015-11-15			-10.36	EUR	living	household	\N	t
35351	db	2015-11-16	2015-11-16			-0.49	EUR	living	food	\N	t
35377	db	2015-11-17	2015-11-17			-3.66	EUR	free time	hobbies	\N	t
35403	db	2015-11-18	2015-11-18			-8.49	EUR	free time	sport	\N	t
35430	db	2015-11-19	2015-11-19			-2.34	EUR	living	food	\N	t
35429	db	2015-11-19	2015-11-19			-2.41	EUR	free time	entertainment	\N	t
35472	db	2015-11-20	2015-11-20			-76.03	EUR	free time	gadgets	\N	t
35471	db	2015-11-20	2015-11-20			-15.58	EUR	living	clothes	\N	t
35458	db	2015-11-20	2015-11-20			-10.16	EUR	living	food	\N	t
35457	db	2015-11-20	2015-11-20			-14.02	EUR	free time	going out	\N	t
35456	db	2015-11-20	2015-11-20			-0.24	EUR	mobility	gas	\N	t
35450	db	2015-11-20	2015-11-20			-20.00	EUR	other	cash	\N	t
35485	db	2015-11-21	2015-11-21			-13.80	EUR	health	wellness	\N	t
35484	db	2015-11-21	2015-11-21			-10.06	EUR	free time	going out	\N	t
35526	db	2015-11-23	2015-11-23			-7.83	EUR	living	food	\N	t
35552	db	2015-11-24	2015-11-24			-9.16	EUR	free time	hobbies	\N	t
35578	db	2015-11-25	2015-11-25			-7.95	EUR	free time	sport	\N	t
35605	db	2015-11-26	2015-11-26			-2.46	EUR	living	food	\N	t
35604	db	2015-11-26	2015-11-26			-0.38	EUR	free time	entertainment	\N	t
35633	db	2015-11-27	2015-11-27			-1.37	EUR	living	food	\N	t
35632	db	2015-11-27	2015-11-27			-9.09	EUR	free time	going out	\N	t
35631	db	2015-11-27	2015-11-27			-14.30	EUR	mobility	gas	\N	t
35625	db	2015-11-27	2015-11-27			-20.00	EUR	other	cash	\N	t
35660	db	2015-11-28	2015-11-28			-8.50	EUR	health	wellness	\N	t
35659	db	2015-11-28	2015-11-28			-14.39	EUR	free time	going out	\N	t
35701	db	2015-11-30	2015-11-30			-1.02	EUR	living	food	\N	t
35736	db	2015-12-01	2015-12-01			-10.00	EUR	house	phone	\N	t
35727	db	2015-12-01	2015-12-01			-3.98	EUR	free time	hobbies	\N	t
35762	db	2015-12-02	2015-12-02			-10.00	EUR	house	electricity	\N	t
35753	db	2015-12-02	2015-12-02			-2.88	EUR	free time	sport	\N	t
35788	db	2015-12-03	2015-12-03			-10.00	EUR	house	internet	\N	t
35780	db	2015-12-03	2015-12-03			-3.38	EUR	living	food	\N	t
35779	db	2015-12-03	2015-12-03			-6.70	EUR	free time	entertainment	\N	t
35814	db	2015-12-04	2015-12-04			-250.00	EUR	house	rent	\N	t
35808	db	2015-12-04	2015-12-04			-18.54	EUR	living	food	\N	t
35807	db	2015-12-04	2015-12-04			-0.85	EUR	free time	going out	\N	t
35806	db	2015-12-04	2015-12-04			-16.99	EUR	mobility	gas	\N	t
35800	db	2015-12-04	2015-12-04			-20.00	EUR	other	cash	\N	t
35840	db	2015-12-05	2015-12-05			-10.00	EUR	finance	costs and fees	\N	t
35835	db	2015-12-05	2015-12-05			-12.36	EUR	health	wellness	\N	t
35834	db	2015-12-05	2015-12-05			-8.62	EUR	free time	going out	\N	t
35866	db	2015-12-06	2015-12-06			-50.00	EUR	finance	insurance	\N	t
35892	db	2015-12-07	2015-12-07			-19.85	EUR	health	doctor visits	\N	t
35876	db	2015-12-07	2015-12-07			-5.94	EUR	living	food	\N	t
35918	db	2015-12-08	2015-12-08			1000.00	EUR	work and training	salary	\N	t
35902	db	2015-12-08	2015-12-08			-0.77	EUR	free time	hobbies	\N	t
35928	db	2015-12-09	2015-12-09			-7.24	EUR	free time	sport	\N	t
35969	db	2015-12-10	2015-12-10			-44.31	EUR	living	pets	\N	t
35955	db	2015-12-10	2015-12-10			-1.81	EUR	living	food	\N	t
35954	db	2015-12-10	2015-12-10			-7.42	EUR	free time	entertainment	\N	t
35983	db	2015-12-11	2015-12-11			-5.72	EUR	living	food	\N	t
35982	db	2015-12-11	2015-12-11			-8.16	EUR	free time	going out	\N	t
35981	db	2015-12-11	2015-12-11			-7.98	EUR	mobility	gas	\N	t
35975	db	2015-12-11	2015-12-11			-20.00	EUR	other	cash	\N	t
36010	db	2015-12-12	2015-12-12			-6.43	EUR	health	wellness	\N	t
36009	db	2015-12-12	2015-12-12			-18.52	EUR	free time	going out	\N	t
36051	db	2015-12-14	2015-12-14			-4.51	EUR	living	food	\N	t
36095	db	2015-12-15	2015-12-15			-75.91	EUR	living	household	\N	t
36077	db	2015-12-15	2015-12-15			-4.69	EUR	free time	hobbies	\N	t
36103	db	2015-12-16	2015-12-16			-7.95	EUR	free time	sport	\N	t
36130	db	2015-12-17	2015-12-17			-8.49	EUR	living	food	\N	t
36129	db	2015-12-17	2015-12-17			-7.17	EUR	free time	entertainment	\N	t
36158	db	2015-12-18	2015-12-18			-10.11	EUR	living	food	\N	t
36157	db	2015-12-18	2015-12-18			-1.73	EUR	free time	going out	\N	t
36156	db	2015-12-18	2015-12-18			-19.86	EUR	mobility	gas	\N	t
36150	db	2015-12-18	2015-12-18			-20.00	EUR	other	cash	\N	t
36185	db	2015-12-19	2015-12-19			-11.78	EUR	health	wellness	\N	t
36184	db	2015-12-19	2015-12-19			-10.52	EUR	free time	going out	\N	t
36222	db	2015-12-20	2015-12-20			-53.23	EUR	free time	gadgets	\N	t
36221	db	2015-12-20	2015-12-20			-11.52	EUR	living	clothes	\N	t
36249	db	2015-12-21	2015-12-21			-38.73	EUR	free time	presents	\N	t
36226	db	2015-12-21	2015-12-21			-8.44	EUR	living	food	\N	t
36252	db	2015-12-22	2015-12-22			-7.91	EUR	free time	hobbies	\N	t
36278	db	2015-12-23	2015-12-23			-6.90	EUR	free time	sport	\N	t
36305	db	2015-12-24	2015-12-24			-3.67	EUR	living	food	\N	t
36304	db	2015-12-24	2015-12-24			-5.60	EUR	free time	entertainment	\N	t
36333	db	2015-12-25	2015-12-25			-1.60	EUR	living	food	\N	t
36332	db	2015-12-25	2015-12-25			-10.21	EUR	free time	going out	\N	t
36331	db	2015-12-25	2015-12-25			-7.21	EUR	mobility	gas	\N	t
36325	db	2015-12-25	2015-12-25			-20.00	EUR	other	cash	\N	t
36360	db	2015-12-26	2015-12-26			-8.59	EUR	health	wellness	\N	t
36359	db	2015-12-26	2015-12-26			-17.02	EUR	free time	going out	\N	t
36401	db	2015-12-28	2015-12-28			-1.79	EUR	living	food	\N	t
36427	db	2015-12-29	2015-12-29			-8.99	EUR	free time	hobbies	\N	t
36453	db	2015-12-30	2015-12-30			-9.77	EUR	free time	sport	\N	t
36480	db	2015-12-31	2015-12-31			-2.45	EUR	living	food	\N	t
36479	db	2015-12-31	2015-12-31			-9.31	EUR	free time	entertainment	\N	t
36511	db	2016-01-01	2016-01-01			-10.00	EUR	house	phone	\N	t
36508	db	2016-01-01	2016-01-01			-9.80	EUR	living	food	\N	t
36507	db	2016-01-01	2016-01-01			-7.72	EUR	free time	going out	\N	t
36506	db	2016-01-01	2016-01-01			-18.23	EUR	mobility	gas	\N	t
36500	db	2016-01-01	2016-01-01			-20.00	EUR	other	cash	\N	t
36537	db	2016-01-02	2016-01-02			-10.00	EUR	house	electricity	\N	t
36535	db	2016-01-02	2016-01-02			-1.60	EUR	health	wellness	\N	t
36534	db	2016-01-02	2016-01-02			-9.05	EUR	free time	going out	\N	t
36563	db	2016-01-03	2016-01-03			-10.00	EUR	house	internet	\N	t
36589	db	2016-01-04	2016-01-04			-250.00	EUR	house	rent	\N	t
36576	db	2016-01-04	2016-01-04			-3.51	EUR	living	food	\N	t
36615	db	2016-01-05	2016-01-05			-10.00	EUR	finance	costs and fees	\N	t
36602	db	2016-01-05	2016-01-05			-2.53	EUR	free time	hobbies	\N	t
36641	db	2016-01-06	2016-01-06			-50.00	EUR	finance	insurance	\N	t
36628	db	2016-01-06	2016-01-06			-3.08	EUR	free time	sport	\N	t
36667	db	2016-01-07	2016-01-07			-81.81	EUR	health	doctor visits	\N	t
36655	db	2016-01-07	2016-01-07			-8.24	EUR	living	food	\N	t
36654	db	2016-01-07	2016-01-07			-2.30	EUR	free time	entertainment	\N	t
36693	db	2016-01-08	2016-01-08			1000.00	EUR	work and training	salary	\N	t
36683	db	2016-01-08	2016-01-08			-19.31	EUR	living	food	\N	t
36682	db	2016-01-08	2016-01-08			-8.48	EUR	free time	going out	\N	t
36681	db	2016-01-08	2016-01-08			-4.02	EUR	mobility	gas	\N	t
36675	db	2016-01-08	2016-01-08			-20.00	EUR	other	cash	\N	t
36710	db	2016-01-09	2016-01-09			-0.05	EUR	health	wellness	\N	t
36709	db	2016-01-09	2016-01-09			-3.27	EUR	free time	going out	\N	t
36744	db	2016-01-10	2016-01-10			-35.49	EUR	living	pets	\N	t
36751	db	2016-01-11	2016-01-11			-0.54	EUR	living	food	\N	t
36777	db	2016-01-12	2016-01-12			-5.87	EUR	free time	hobbies	\N	t
36803	db	2016-01-13	2016-01-13			-4.89	EUR	free time	sport	\N	t
36830	db	2016-01-14	2016-01-14			-6.12	EUR	living	food	\N	t
36829	db	2016-01-14	2016-01-14			-3.96	EUR	free time	entertainment	\N	t
36870	db	2016-01-15	2016-01-15			-5.09	EUR	living	household	\N	t
36858	db	2016-01-15	2016-01-15			-7.23	EUR	living	food	\N	t
36857	db	2016-01-15	2016-01-15			-10.66	EUR	free time	going out	\N	t
36856	db	2016-01-15	2016-01-15			-15.58	EUR	mobility	gas	\N	t
36850	db	2016-01-15	2016-01-15			-20.00	EUR	other	cash	\N	t
36885	db	2016-01-16	2016-01-16			-13.96	EUR	health	wellness	\N	t
36884	db	2016-01-16	2016-01-16			-1.92	EUR	free time	going out	\N	t
36926	db	2016-01-18	2016-01-18			-3.04	EUR	living	food	\N	t
36952	db	2016-01-19	2016-01-19			-4.57	EUR	free time	hobbies	\N	t
36997	db	2016-01-20	2016-01-20			-12.56	EUR	free time	gadgets	\N	t
36996	db	2016-01-20	2016-01-20			-64.00	EUR	living	clothes	\N	t
36978	db	2016-01-20	2016-01-20			-10.00	EUR	free time	sport	\N	t
37005	db	2016-01-21	2016-01-21			-3.93	EUR	living	food	\N	t
37004	db	2016-01-21	2016-01-21			-5.99	EUR	free time	entertainment	\N	t
37033	db	2016-01-22	2016-01-22			-9.50	EUR	living	food	\N	t
37032	db	2016-01-22	2016-01-22			-2.78	EUR	free time	going out	\N	t
37031	db	2016-01-22	2016-01-22			-0.37	EUR	mobility	gas	\N	t
37025	db	2016-01-22	2016-01-22			-20.00	EUR	other	cash	\N	t
37060	db	2016-01-23	2016-01-23			-6.86	EUR	health	wellness	\N	t
37059	db	2016-01-23	2016-01-23			-6.12	EUR	free time	going out	\N	t
37101	db	2016-01-25	2016-01-25			-8.43	EUR	living	food	\N	t
37127	db	2016-01-26	2016-01-26			-9.54	EUR	free time	hobbies	\N	t
37153	db	2016-01-27	2016-01-27			-9.53	EUR	free time	sport	\N	t
37180	db	2016-01-28	2016-01-28			-6.01	EUR	living	food	\N	t
37179	db	2016-01-28	2016-01-28			-5.11	EUR	free time	entertainment	\N	t
37208	db	2016-01-29	2016-01-29			-1.66	EUR	living	food	\N	t
37207	db	2016-01-29	2016-01-29			-13.99	EUR	free time	going out	\N	t
37206	db	2016-01-29	2016-01-29			-11.89	EUR	mobility	gas	\N	t
37200	db	2016-01-29	2016-01-29			-20.00	EUR	other	cash	\N	t
37235	db	2016-01-30	2016-01-30			-17.19	EUR	health	wellness	\N	t
37234	db	2016-01-30	2016-01-30			-18.59	EUR	free time	going out	\N	t
37286	db	2016-02-01	2016-02-01			-10.00	EUR	house	phone	\N	t
37276	db	2016-02-01	2016-02-01			-9.09	EUR	living	food	\N	t
37312	db	2016-02-02	2016-02-02			-10.00	EUR	house	electricity	\N	t
37302	db	2016-02-02	2016-02-02			-0.01	EUR	free time	hobbies	\N	t
37338	db	2016-02-03	2016-02-03			-10.00	EUR	house	internet	\N	t
37328	db	2016-02-03	2016-02-03			-6.21	EUR	free time	sport	\N	t
37364	db	2016-02-04	2016-02-04			-250.00	EUR	house	rent	\N	t
37355	db	2016-02-04	2016-02-04			-9.04	EUR	living	food	\N	t
37354	db	2016-02-04	2016-02-04			-1.21	EUR	free time	entertainment	\N	t
37390	db	2016-02-05	2016-02-05			-10.00	EUR	finance	costs and fees	\N	t
37383	db	2016-02-05	2016-02-05			-13.26	EUR	living	food	\N	t
37382	db	2016-02-05	2016-02-05			-3.81	EUR	free time	going out	\N	t
37381	db	2016-02-05	2016-02-05			-15.15	EUR	mobility	gas	\N	t
37375	db	2016-02-05	2016-02-05			-20.00	EUR	other	cash	\N	t
37416	db	2016-02-06	2016-02-06			-50.00	EUR	finance	insurance	\N	t
37410	db	2016-02-06	2016-02-06			-6.77	EUR	health	wellness	\N	t
37409	db	2016-02-06	2016-02-06			-11.39	EUR	free time	going out	\N	t
37442	db	2016-02-07	2016-02-07			-91.75	EUR	health	doctor visits	\N	t
37468	db	2016-02-08	2016-02-08			1000.00	EUR	work and training	salary	\N	t
37451	db	2016-02-08	2016-02-08			-2.90	EUR	living	food	\N	t
37477	db	2016-02-09	2016-02-09			-1.92	EUR	free time	hobbies	\N	t
37519	db	2016-02-10	2016-02-10			-57.39	EUR	living	pets	\N	t
37503	db	2016-02-10	2016-02-10			-1.89	EUR	free time	sport	\N	t
37530	db	2016-02-11	2016-02-11			-2.06	EUR	living	food	\N	t
37529	db	2016-02-11	2016-02-11			-2.62	EUR	free time	entertainment	\N	t
37558	db	2016-02-12	2016-02-12			-0.25	EUR	living	food	\N	t
37557	db	2016-02-12	2016-02-12			-8.02	EUR	free time	going out	\N	t
37556	db	2016-02-12	2016-02-12			-15.54	EUR	mobility	gas	\N	t
37550	db	2016-02-12	2016-02-12			-20.00	EUR	other	cash	\N	t
37585	db	2016-02-13	2016-02-13			-15.61	EUR	health	wellness	\N	t
37584	db	2016-02-13	2016-02-13			-8.94	EUR	free time	going out	\N	t
37645	db	2016-02-15	2016-02-15			-40.39	EUR	living	household	\N	t
37626	db	2016-02-15	2016-02-15			-6.84	EUR	living	food	\N	t
37652	db	2016-02-16	2016-02-16			-3.56	EUR	free time	hobbies	\N	t
37678	db	2016-02-17	2016-02-17			-5.00	EUR	free time	sport	\N	t
37705	db	2016-02-18	2016-02-18			-1.65	EUR	living	food	\N	t
37704	db	2016-02-18	2016-02-18			-4.68	EUR	free time	entertainment	\N	t
37733	db	2016-02-19	2016-02-19			-9.91	EUR	living	food	\N	t
37732	db	2016-02-19	2016-02-19			-17.95	EUR	free time	going out	\N	t
37731	db	2016-02-19	2016-02-19			-6.68	EUR	mobility	gas	\N	t
37725	db	2016-02-19	2016-02-19			-20.00	EUR	other	cash	\N	t
37772	db	2016-02-20	2016-02-20			-39.14	EUR	free time	gadgets	\N	t
37771	db	2016-02-20	2016-02-20			-45.35	EUR	living	clothes	\N	t
37760	db	2016-02-20	2016-02-20			-2.60	EUR	health	wellness	\N	t
37759	db	2016-02-20	2016-02-20			-0.14	EUR	free time	going out	\N	t
37801	db	2016-02-22	2016-02-22			-9.86	EUR	living	food	\N	t
37827	db	2016-02-23	2016-02-23			-6.71	EUR	free time	hobbies	\N	t
37853	db	2016-02-24	2016-02-24			-0.04	EUR	free time	sport	\N	t
37880	db	2016-02-25	2016-02-25			-5.92	EUR	living	food	\N	t
37879	db	2016-02-25	2016-02-25			-2.54	EUR	free time	entertainment	\N	t
37908	db	2016-02-26	2016-02-26			-0.92	EUR	living	food	\N	t
37907	db	2016-02-26	2016-02-26			-15.89	EUR	free time	going out	\N	t
37906	db	2016-02-26	2016-02-26			-5.12	EUR	mobility	gas	\N	t
37900	db	2016-02-26	2016-02-26			-20.00	EUR	other	cash	\N	t
37935	db	2016-02-27	2016-02-27			-7.84	EUR	health	wellness	\N	t
37934	db	2016-02-27	2016-02-27			-8.52	EUR	free time	going out	\N	t
37976	db	2016-02-29	2016-02-29			-7.24	EUR	living	food	\N	t
38011	db	2016-03-01	2016-03-01			-10.00	EUR	house	phone	\N	t
38002	db	2016-03-01	2016-03-01			-7.11	EUR	free time	hobbies	\N	t
38037	db	2016-03-02	2016-03-02			-10.00	EUR	house	electricity	\N	t
38028	db	2016-03-02	2016-03-02			-8.17	EUR	free time	sport	\N	t
38063	db	2016-03-03	2016-03-03			-10.00	EUR	house	internet	\N	t
38055	db	2016-03-03	2016-03-03			-3.37	EUR	living	food	\N	t
38054	db	2016-03-03	2016-03-03			-8.48	EUR	free time	entertainment	\N	t
38089	db	2016-03-04	2016-03-04			-250.00	EUR	house	rent	\N	t
38083	db	2016-03-04	2016-03-04			-13.78	EUR	living	food	\N	t
38082	db	2016-03-04	2016-03-04			-10.55	EUR	free time	going out	\N	t
38081	db	2016-03-04	2016-03-04			-14.07	EUR	mobility	gas	\N	t
38075	db	2016-03-04	2016-03-04			-20.00	EUR	other	cash	\N	t
38115	db	2016-03-05	2016-03-05			-10.00	EUR	finance	costs and fees	\N	t
38110	db	2016-03-05	2016-03-05			-2.65	EUR	health	wellness	\N	t
38109	db	2016-03-05	2016-03-05			-4.10	EUR	free time	going out	\N	t
38141	db	2016-03-06	2016-03-06			-50.00	EUR	finance	insurance	\N	t
38167	db	2016-03-07	2016-03-07			-14.83	EUR	health	doctor visits	\N	t
38151	db	2016-03-07	2016-03-07			-2.90	EUR	living	food	\N	t
38193	db	2016-03-08	2016-03-08			1000.00	EUR	work and training	salary	\N	t
38177	db	2016-03-08	2016-03-08			-9.95	EUR	free time	hobbies	\N	t
38203	db	2016-03-09	2016-03-09			-3.89	EUR	free time	sport	\N	t
38244	db	2016-03-10	2016-03-10			-35.20	EUR	living	pets	\N	t
38230	db	2016-03-10	2016-03-10			-2.18	EUR	living	food	\N	t
38229	db	2016-03-10	2016-03-10			-1.63	EUR	free time	entertainment	\N	t
38258	db	2016-03-11	2016-03-11			-14.35	EUR	living	food	\N	t
38257	db	2016-03-11	2016-03-11			-14.58	EUR	free time	going out	\N	t
38256	db	2016-03-11	2016-03-11			-15.20	EUR	mobility	gas	\N	t
38250	db	2016-03-11	2016-03-11			-20.00	EUR	other	cash	\N	t
38285	db	2016-03-12	2016-03-12			-13.25	EUR	health	wellness	\N	t
38284	db	2016-03-12	2016-03-12			-10.42	EUR	free time	going out	\N	t
38326	db	2016-03-14	2016-03-14			-7.21	EUR	living	food	\N	t
38370	db	2016-03-15	2016-03-15			-34.42	EUR	living	household	\N	t
38352	db	2016-03-15	2016-03-15			-4.63	EUR	free time	hobbies	\N	t
38378	db	2016-03-16	2016-03-16			-7.80	EUR	free time	sport	\N	t
38405	db	2016-03-17	2016-03-17			-8.21	EUR	living	food	\N	t
38404	db	2016-03-17	2016-03-17			-9.81	EUR	free time	entertainment	\N	t
38433	db	2016-03-18	2016-03-18			-11.38	EUR	living	food	\N	t
38432	db	2016-03-18	2016-03-18			-8.67	EUR	free time	going out	\N	t
38431	db	2016-03-18	2016-03-18			-8.70	EUR	mobility	gas	\N	t
38425	db	2016-03-18	2016-03-18			-20.00	EUR	other	cash	\N	t
38460	db	2016-03-19	2016-03-19			-6.90	EUR	health	wellness	\N	t
38459	db	2016-03-19	2016-03-19			-12.76	EUR	free time	going out	\N	t
38497	db	2016-03-20	2016-03-20			-35.56	EUR	free time	gadgets	\N	t
38496	db	2016-03-20	2016-03-20			-78.97	EUR	living	clothes	\N	t
38501	db	2016-03-21	2016-03-21			-9.94	EUR	living	food	\N	t
38527	db	2016-03-22	2016-03-22			-1.20	EUR	free time	hobbies	\N	t
38553	db	2016-03-23	2016-03-23			-9.30	EUR	free time	sport	\N	t
38580	db	2016-03-24	2016-03-24			-7.32	EUR	living	food	\N	t
38579	db	2016-03-24	2016-03-24			-3.71	EUR	free time	entertainment	\N	t
38608	db	2016-03-25	2016-03-25			-12.40	EUR	living	food	\N	t
38607	db	2016-03-25	2016-03-25			-11.48	EUR	free time	going out	\N	t
38606	db	2016-03-25	2016-03-25			-1.33	EUR	mobility	gas	\N	t
38600	db	2016-03-25	2016-03-25			-20.00	EUR	other	cash	\N	t
38635	db	2016-03-26	2016-03-26			-4.51	EUR	health	wellness	\N	t
38634	db	2016-03-26	2016-03-26			-0.58	EUR	free time	going out	\N	t
38676	db	2016-03-28	2016-03-28			-9.65	EUR	living	food	\N	t
38702	db	2016-03-29	2016-03-29			-5.96	EUR	free time	hobbies	\N	t
38728	db	2016-03-30	2016-03-30			-5.52	EUR	free time	sport	\N	t
38755	db	2016-03-31	2016-03-31			-6.98	EUR	living	food	\N	t
38754	db	2016-03-31	2016-03-31			-7.65	EUR	free time	entertainment	\N	t
38786	db	2016-04-01	2016-04-01			-10.00	EUR	house	phone	\N	t
38783	db	2016-04-01	2016-04-01			-12.90	EUR	living	food	\N	t
38782	db	2016-04-01	2016-04-01			-17.36	EUR	free time	going out	\N	t
38781	db	2016-04-01	2016-04-01			-14.47	EUR	mobility	gas	\N	t
38775	db	2016-04-01	2016-04-01			-20.00	EUR	other	cash	\N	t
38812	db	2016-04-02	2016-04-02			-10.00	EUR	house	electricity	\N	t
38810	db	2016-04-02	2016-04-02			-16.06	EUR	health	wellness	\N	t
38809	db	2016-04-02	2016-04-02			-16.01	EUR	free time	going out	\N	t
38838	db	2016-04-03	2016-04-03			-10.00	EUR	house	internet	\N	t
38864	db	2016-04-04	2016-04-04			-250.00	EUR	house	rent	\N	t
38851	db	2016-04-04	2016-04-04			-9.01	EUR	living	food	\N	t
38890	db	2016-04-05	2016-04-05			-10.00	EUR	finance	costs and fees	\N	t
38877	db	2016-04-05	2016-04-05			-4.00	EUR	free time	hobbies	\N	t
38916	db	2016-04-06	2016-04-06			-50.00	EUR	finance	insurance	\N	t
38903	db	2016-04-06	2016-04-06			-7.79	EUR	free time	sport	\N	t
38942	db	2016-04-07	2016-04-07			-57.47	EUR	health	doctor visits	\N	t
38930	db	2016-04-07	2016-04-07			-1.40	EUR	living	food	\N	t
38929	db	2016-04-07	2016-04-07			-5.94	EUR	free time	entertainment	\N	t
38968	db	2016-04-08	2016-04-08			1000.00	EUR	work and training	salary	\N	t
38958	db	2016-04-08	2016-04-08			-4.57	EUR	living	food	\N	t
38957	db	2016-04-08	2016-04-08			-10.50	EUR	free time	going out	\N	t
38956	db	2016-04-08	2016-04-08			-3.33	EUR	mobility	gas	\N	t
38950	db	2016-04-08	2016-04-08			-20.00	EUR	other	cash	\N	t
38985	db	2016-04-09	2016-04-09			-13.83	EUR	health	wellness	\N	t
38984	db	2016-04-09	2016-04-09			-5.89	EUR	free time	going out	\N	t
39019	db	2016-04-10	2016-04-10			-26.36	EUR	living	pets	\N	t
39026	db	2016-04-11	2016-04-11			-3.35	EUR	living	food	\N	t
39052	db	2016-04-12	2016-04-12			-4.45	EUR	free time	hobbies	\N	t
39078	db	2016-04-13	2016-04-13			-2.29	EUR	free time	sport	\N	t
39105	db	2016-04-14	2016-04-14			-3.83	EUR	living	food	\N	t
39104	db	2016-04-14	2016-04-14			-8.41	EUR	free time	entertainment	\N	t
39145	db	2016-04-15	2016-04-15			-67.99	EUR	living	household	\N	t
39133	db	2016-04-15	2016-04-15			-7.61	EUR	living	food	\N	t
39132	db	2016-04-15	2016-04-15			-5.43	EUR	free time	going out	\N	t
39131	db	2016-04-15	2016-04-15			-3.35	EUR	mobility	gas	\N	t
39125	db	2016-04-15	2016-04-15			-20.00	EUR	other	cash	\N	t
39160	db	2016-04-16	2016-04-16			-11.14	EUR	health	wellness	\N	t
39159	db	2016-04-16	2016-04-16			-14.47	EUR	free time	going out	\N	t
39201	db	2016-04-18	2016-04-18			-9.69	EUR	living	food	\N	t
39227	db	2016-04-19	2016-04-19			-3.21	EUR	free time	hobbies	\N	t
39272	db	2016-04-20	2016-04-20			-2.67	EUR	free time	gadgets	\N	t
39271	db	2016-04-20	2016-04-20			-65.79	EUR	living	clothes	\N	t
39253	db	2016-04-20	2016-04-20			-2.82	EUR	free time	sport	\N	t
39280	db	2016-04-21	2016-04-21			-8.78	EUR	living	food	\N	t
39279	db	2016-04-21	2016-04-21			-3.96	EUR	free time	entertainment	\N	t
39308	db	2016-04-22	2016-04-22			-17.91	EUR	living	food	\N	t
39307	db	2016-04-22	2016-04-22			-9.10	EUR	free time	going out	\N	t
39306	db	2016-04-22	2016-04-22			-8.08	EUR	mobility	gas	\N	t
39300	db	2016-04-22	2016-04-22			-20.00	EUR	other	cash	\N	t
39335	db	2016-04-23	2016-04-23			-10.93	EUR	health	wellness	\N	t
39334	db	2016-04-23	2016-04-23			-11.84	EUR	free time	going out	\N	t
39376	db	2016-04-25	2016-04-25			-5.15	EUR	living	food	\N	t
39402	db	2016-04-26	2016-04-26			-4.97	EUR	free time	hobbies	\N	t
39428	db	2016-04-27	2016-04-27			-9.97	EUR	free time	sport	\N	t
39455	db	2016-04-28	2016-04-28			-8.00	EUR	living	food	\N	t
39454	db	2016-04-28	2016-04-28			-8.28	EUR	free time	entertainment	\N	t
39483	db	2016-04-29	2016-04-29			-1.37	EUR	living	food	\N	t
39482	db	2016-04-29	2016-04-29			-0.85	EUR	free time	going out	\N	t
39481	db	2016-04-29	2016-04-29			-1.55	EUR	mobility	gas	\N	t
39475	db	2016-04-29	2016-04-29			-20.00	EUR	other	cash	\N	t
39510	db	2016-04-30	2016-04-30			-1.83	EUR	health	wellness	\N	t
39509	db	2016-04-30	2016-04-30			-3.16	EUR	free time	going out	\N	t
39536	db	2016-05-01	2016-05-01			-10.00	EUR	house	phone	\N	t
39562	db	2016-05-02	2016-05-02			-10.00	EUR	house	electricity	\N	t
39551	db	2016-05-02	2016-05-02			-8.61	EUR	living	food	\N	t
39588	db	2016-05-03	2016-05-03			-10.00	EUR	house	internet	\N	t
39577	db	2016-05-03	2016-05-03			-4.74	EUR	free time	hobbies	\N	t
39614	db	2016-05-04	2016-05-04			-250.00	EUR	house	rent	\N	t
39603	db	2016-05-04	2016-05-04			-5.93	EUR	free time	sport	\N	t
39640	db	2016-05-05	2016-05-05			-10.00	EUR	finance	costs and fees	\N	t
39630	db	2016-05-05	2016-05-05			-4.07	EUR	living	food	\N	t
39629	db	2016-05-05	2016-05-05			-2.26	EUR	free time	entertainment	\N	t
39666	db	2016-05-06	2016-05-06			-50.00	EUR	finance	insurance	\N	t
39658	db	2016-05-06	2016-05-06			-8.84	EUR	living	food	\N	t
39657	db	2016-05-06	2016-05-06			-6.89	EUR	free time	going out	\N	t
39656	db	2016-05-06	2016-05-06			-9.76	EUR	mobility	gas	\N	t
39650	db	2016-05-06	2016-05-06			-20.00	EUR	other	cash	\N	t
39692	db	2016-05-07	2016-05-07			-50.15	EUR	health	doctor visits	\N	t
39685	db	2016-05-07	2016-05-07			-1.36	EUR	health	wellness	\N	t
39684	db	2016-05-07	2016-05-07			-9.29	EUR	free time	going out	\N	t
39718	db	2016-05-08	2016-05-08			1000.00	EUR	work and training	salary	\N	t
39726	db	2016-05-09	2016-05-09			-2.72	EUR	living	food	\N	t
39769	db	2016-05-10	2016-05-10			-50.16	EUR	living	pets	\N	t
39752	db	2016-05-10	2016-05-10			-3.16	EUR	free time	hobbies	\N	t
39778	db	2016-05-11	2016-05-11			-1.79	EUR	free time	sport	\N	t
39805	db	2016-05-12	2016-05-12			-2.73	EUR	living	food	\N	t
39804	db	2016-05-12	2016-05-12			-8.70	EUR	free time	entertainment	\N	t
39833	db	2016-05-13	2016-05-13			-18.70	EUR	living	food	\N	t
39832	db	2016-05-13	2016-05-13			-13.62	EUR	free time	going out	\N	t
39831	db	2016-05-13	2016-05-13			-18.07	EUR	mobility	gas	\N	t
39825	db	2016-05-13	2016-05-13			-20.00	EUR	other	cash	\N	t
39860	db	2016-05-14	2016-05-14			-8.16	EUR	health	wellness	\N	t
39859	db	2016-05-14	2016-05-14			-7.38	EUR	free time	going out	\N	t
39895	db	2016-05-15	2016-05-15			-7.73	EUR	living	household	\N	t
39901	db	2016-05-16	2016-05-16			-0.39	EUR	living	food	\N	t
39927	db	2016-05-17	2016-05-17			-7.20	EUR	free time	hobbies	\N	t
39953	db	2016-05-18	2016-05-18			-8.96	EUR	free time	sport	\N	t
39980	db	2016-05-19	2016-05-19			-3.24	EUR	living	food	\N	t
39979	db	2016-05-19	2016-05-19			-4.49	EUR	free time	entertainment	\N	t
40022	db	2016-05-20	2016-05-20			-58.25	EUR	free time	gadgets	\N	t
40021	db	2016-05-20	2016-05-20			-62.36	EUR	living	clothes	\N	t
40008	db	2016-05-20	2016-05-20			-17.51	EUR	living	food	\N	t
40007	db	2016-05-20	2016-05-20			-10.54	EUR	free time	going out	\N	t
40006	db	2016-05-20	2016-05-20			-9.29	EUR	mobility	gas	\N	t
40000	db	2016-05-20	2016-05-20			-20.00	EUR	other	cash	\N	t
40035	db	2016-05-21	2016-05-21			-6.06	EUR	health	wellness	\N	t
40034	db	2016-05-21	2016-05-21			-19.75	EUR	free time	going out	\N	t
40076	db	2016-05-23	2016-05-23			-5.39	EUR	living	food	\N	t
40102	db	2016-05-24	2016-05-24			-7.63	EUR	free time	hobbies	\N	t
40128	db	2016-05-25	2016-05-25			-8.59	EUR	free time	sport	\N	t
40155	db	2016-05-26	2016-05-26			-6.90	EUR	living	food	\N	t
40154	db	2016-05-26	2016-05-26			-7.40	EUR	free time	entertainment	\N	t
40183	db	2016-05-27	2016-05-27			-12.20	EUR	living	food	\N	t
40182	db	2016-05-27	2016-05-27			-19.38	EUR	free time	going out	\N	t
40181	db	2016-05-27	2016-05-27			-5.32	EUR	mobility	gas	\N	t
40175	db	2016-05-27	2016-05-27			-20.00	EUR	other	cash	\N	t
40210	db	2016-05-28	2016-05-28			-18.05	EUR	health	wellness	\N	t
40209	db	2016-05-28	2016-05-28			-2.92	EUR	free time	going out	\N	t
40251	db	2016-05-30	2016-05-30			-2.63	EUR	living	food	\N	t
40277	db	2016-05-31	2016-05-31			-5.33	EUR	free time	hobbies	\N	t
40311	db	2016-06-01	2016-06-01			-10.00	EUR	house	phone	\N	t
40303	db	2016-06-01	2016-06-01			-0.04	EUR	free time	sport	\N	t
40337	db	2016-06-02	2016-06-02			-10.00	EUR	house	electricity	\N	t
40330	db	2016-06-02	2016-06-02			-0.02	EUR	living	food	\N	t
40329	db	2016-06-02	2016-06-02			-2.07	EUR	free time	entertainment	\N	t
40363	db	2016-06-03	2016-06-03			-10.00	EUR	house	internet	\N	t
40358	db	2016-06-03	2016-06-03			-7.75	EUR	living	food	\N	t
40357	db	2016-06-03	2016-06-03			-12.59	EUR	free time	going out	\N	t
40356	db	2016-06-03	2016-06-03			-11.11	EUR	mobility	gas	\N	t
40350	db	2016-06-03	2016-06-03			-20.00	EUR	other	cash	\N	t
40389	db	2016-06-04	2016-06-04			-250.00	EUR	house	rent	\N	t
40385	db	2016-06-04	2016-06-04			-2.97	EUR	health	wellness	\N	t
40384	db	2016-06-04	2016-06-04			-14.28	EUR	free time	going out	\N	t
40415	db	2016-06-05	2016-06-05			-10.00	EUR	finance	costs and fees	\N	t
40441	db	2016-06-06	2016-06-06			-50.00	EUR	finance	insurance	\N	t
40426	db	2016-06-06	2016-06-06			-4.71	EUR	living	food	\N	t
40467	db	2016-06-07	2016-06-07			-40.35	EUR	health	doctor visits	\N	t
40452	db	2016-06-07	2016-06-07			-0.21	EUR	free time	hobbies	\N	t
40493	db	2016-06-08	2016-06-08			1000.00	EUR	work and training	salary	\N	t
40478	db	2016-06-08	2016-06-08			-1.78	EUR	free time	sport	\N	t
40505	db	2016-06-09	2016-06-09			-2.70	EUR	living	food	\N	t
40504	db	2016-06-09	2016-06-09			-1.84	EUR	free time	entertainment	\N	t
40544	db	2016-06-10	2016-06-10			-4.30	EUR	living	pets	\N	t
40533	db	2016-06-10	2016-06-10			-4.39	EUR	living	food	\N	t
40532	db	2016-06-10	2016-06-10			-13.84	EUR	free time	going out	\N	t
40531	db	2016-06-10	2016-06-10			-18.91	EUR	mobility	gas	\N	t
40525	db	2016-06-10	2016-06-10			-20.00	EUR	other	cash	\N	t
40560	db	2016-06-11	2016-06-11			-11.55	EUR	health	wellness	\N	t
40559	db	2016-06-11	2016-06-11			-10.00	EUR	free time	going out	\N	t
40601	db	2016-06-13	2016-06-13			-4.65	EUR	living	food	\N	t
40627	db	2016-06-14	2016-06-14			-5.38	EUR	free time	hobbies	\N	t
40670	db	2016-06-15	2016-06-15			-5.37	EUR	living	household	\N	t
40653	db	2016-06-15	2016-06-15			-0.15	EUR	free time	sport	\N	t
40680	db	2016-06-16	2016-06-16			-4.32	EUR	living	food	\N	t
40679	db	2016-06-16	2016-06-16			-8.57	EUR	free time	entertainment	\N	t
40708	db	2016-06-17	2016-06-17			-3.28	EUR	living	food	\N	t
40707	db	2016-06-17	2016-06-17			-12.50	EUR	free time	going out	\N	t
40706	db	2016-06-17	2016-06-17			-11.57	EUR	mobility	gas	\N	t
40700	db	2016-06-17	2016-06-17			-20.00	EUR	other	cash	\N	t
40735	db	2016-06-18	2016-06-18			-9.52	EUR	health	wellness	\N	t
40734	db	2016-06-18	2016-06-18			-16.84	EUR	free time	going out	\N	t
40797	db	2016-06-20	2016-06-20			-66.97	EUR	free time	gadgets	\N	t
40796	db	2016-06-20	2016-06-20			-23.28	EUR	living	clothes	\N	t
40776	db	2016-06-20	2016-06-20			-9.55	EUR	living	food	\N	t
40802	db	2016-06-21	2016-06-21			-2.61	EUR	free time	hobbies	\N	t
40828	db	2016-06-22	2016-06-22			-7.57	EUR	free time	sport	\N	t
40855	db	2016-06-23	2016-06-23			-4.67	EUR	living	food	\N	t
40854	db	2016-06-23	2016-06-23			-5.09	EUR	free time	entertainment	\N	t
40883	db	2016-06-24	2016-06-24			-0.18	EUR	living	food	\N	t
40882	db	2016-06-24	2016-06-24			-7.58	EUR	free time	going out	\N	t
40881	db	2016-06-24	2016-06-24			-1.81	EUR	mobility	gas	\N	t
40875	db	2016-06-24	2016-06-24			-20.00	EUR	other	cash	\N	t
40910	db	2016-06-25	2016-06-25			-16.78	EUR	health	wellness	\N	t
40909	db	2016-06-25	2016-06-25			-14.08	EUR	free time	going out	\N	t
40951	db	2016-06-27	2016-06-27			-6.87	EUR	living	food	\N	t
40998	db	2016-06-28	2016-06-28			-338.03	EUR	free time	travel	\N	t
40977	db	2016-06-28	2016-06-28			-0.61	EUR	free time	hobbies	\N	t
41003	db	2016-06-29	2016-06-29			-2.35	EUR	free time	sport	\N	t
41030	db	2016-06-30	2016-06-30			-7.99	EUR	living	food	\N	t
41029	db	2016-06-30	2016-06-30			-3.36	EUR	free time	entertainment	\N	t
41061	db	2016-07-01	2016-07-01			-10.00	EUR	house	phone	\N	t
41058	db	2016-07-01	2016-07-01			-2.27	EUR	living	food	\N	t
41057	db	2016-07-01	2016-07-01			-7.39	EUR	free time	going out	\N	t
41056	db	2016-07-01	2016-07-01			-11.45	EUR	mobility	gas	\N	t
41050	db	2016-07-01	2016-07-01			-20.00	EUR	other	cash	\N	t
41087	db	2016-07-02	2016-07-02			-10.00	EUR	house	electricity	\N	t
41085	db	2016-07-02	2016-07-02			-16.89	EUR	health	wellness	\N	t
41084	db	2016-07-02	2016-07-02			-8.59	EUR	free time	going out	\N	t
41113	db	2016-07-03	2016-07-03			-10.00	EUR	house	internet	\N	t
41139	db	2016-07-04	2016-07-04			-250.00	EUR	house	rent	\N	t
41126	db	2016-07-04	2016-07-04			-4.50	EUR	living	food	\N	t
41165	db	2016-07-05	2016-07-05			-10.00	EUR	finance	costs and fees	\N	t
41152	db	2016-07-05	2016-07-05			-1.69	EUR	free time	hobbies	\N	t
41191	db	2016-07-06	2016-07-06			-50.00	EUR	finance	insurance	\N	t
41178	db	2016-07-06	2016-07-06			-1.62	EUR	free time	sport	\N	t
41217	db	2016-07-07	2016-07-07			-76.59	EUR	health	doctor visits	\N	t
41205	db	2016-07-07	2016-07-07			-5.91	EUR	living	food	\N	t
41204	db	2016-07-07	2016-07-07			-6.47	EUR	free time	entertainment	\N	t
41243	db	2016-07-08	2016-07-08			1000.00	EUR	work and training	salary	\N	t
41233	db	2016-07-08	2016-07-08			-15.86	EUR	living	food	\N	t
41232	db	2016-07-08	2016-07-08			-0.02	EUR	free time	going out	\N	t
41231	db	2016-07-08	2016-07-08			-15.04	EUR	mobility	gas	\N	t
41225	db	2016-07-08	2016-07-08			-20.00	EUR	other	cash	\N	t
41260	db	2016-07-09	2016-07-09			-17.88	EUR	health	wellness	\N	t
41259	db	2016-07-09	2016-07-09			-13.36	EUR	free time	going out	\N	t
41294	db	2016-07-10	2016-07-10			-64.76	EUR	living	pets	\N	t
41301	db	2016-07-11	2016-07-11			-9.51	EUR	living	food	\N	t
41327	db	2016-07-12	2016-07-12			-3.55	EUR	free time	hobbies	\N	t
41353	db	2016-07-13	2016-07-13			-0.61	EUR	free time	sport	\N	t
41380	db	2016-07-14	2016-07-14			-9.34	EUR	living	food	\N	t
41379	db	2016-07-14	2016-07-14			-6.99	EUR	free time	entertainment	\N	t
41420	db	2016-07-15	2016-07-15			-23.71	EUR	living	household	\N	t
41408	db	2016-07-15	2016-07-15			-12.48	EUR	living	food	\N	t
41407	db	2016-07-15	2016-07-15			-11.60	EUR	free time	going out	\N	t
41406	db	2016-07-15	2016-07-15			-1.83	EUR	mobility	gas	\N	t
41400	db	2016-07-15	2016-07-15			-20.00	EUR	other	cash	\N	t
41435	db	2016-07-16	2016-07-16			-18.00	EUR	health	wellness	\N	t
41434	db	2016-07-16	2016-07-16			-5.41	EUR	free time	going out	\N	t
41476	db	2016-07-18	2016-07-18			-3.38	EUR	living	food	\N	t
41502	db	2016-07-19	2016-07-19			-1.45	EUR	free time	hobbies	\N	t
41547	db	2016-07-20	2016-07-20			-6.48	EUR	free time	gadgets	\N	t
41546	db	2016-07-20	2016-07-20			-79.10	EUR	living	clothes	\N	t
41528	db	2016-07-20	2016-07-20			-5.59	EUR	free time	sport	\N	t
41555	db	2016-07-21	2016-07-21			-1.12	EUR	living	food	\N	t
41554	db	2016-07-21	2016-07-21			-0.45	EUR	free time	entertainment	\N	t
41583	db	2016-07-22	2016-07-22			-12.95	EUR	living	food	\N	t
41582	db	2016-07-22	2016-07-22			-6.93	EUR	free time	going out	\N	t
41581	db	2016-07-22	2016-07-22			-16.18	EUR	mobility	gas	\N	t
41575	db	2016-07-22	2016-07-22			-20.00	EUR	other	cash	\N	t
41610	db	2016-07-23	2016-07-23			-12.07	EUR	health	wellness	\N	t
41609	db	2016-07-23	2016-07-23			-10.84	EUR	free time	going out	\N	t
41651	db	2016-07-25	2016-07-25			-1.26	EUR	living	food	\N	t
41677	db	2016-07-26	2016-07-26			-8.55	EUR	free time	hobbies	\N	t
41703	db	2016-07-27	2016-07-27			-3.68	EUR	free time	sport	\N	t
41730	db	2016-07-28	2016-07-28			-8.65	EUR	living	food	\N	t
41729	db	2016-07-28	2016-07-28			-5.26	EUR	free time	entertainment	\N	t
41758	db	2016-07-29	2016-07-29			-15.61	EUR	living	food	\N	t
41757	db	2016-07-29	2016-07-29			-7.86	EUR	free time	going out	\N	t
41756	db	2016-07-29	2016-07-29			-19.08	EUR	mobility	gas	\N	t
41750	db	2016-07-29	2016-07-29			-20.00	EUR	other	cash	\N	t
41785	db	2016-07-30	2016-07-30			-2.59	EUR	health	wellness	\N	t
41784	db	2016-07-30	2016-07-30			-4.34	EUR	free time	going out	\N	t
41836	db	2016-08-01	2016-08-01			-10.00	EUR	house	phone	\N	t
41826	db	2016-08-01	2016-08-01			-8.46	EUR	living	food	\N	t
41862	db	2016-08-02	2016-08-02			-10.00	EUR	house	electricity	\N	t
41852	db	2016-08-02	2016-08-02			-0.30	EUR	free time	hobbies	\N	t
41888	db	2016-08-03	2016-08-03			-10.00	EUR	house	internet	\N	t
41878	db	2016-08-03	2016-08-03			-8.15	EUR	free time	sport	\N	t
41914	db	2016-08-04	2016-08-04			-250.00	EUR	house	rent	\N	t
41905	db	2016-08-04	2016-08-04			-1.23	EUR	living	food	\N	t
41904	db	2016-08-04	2016-08-04			-1.57	EUR	free time	entertainment	\N	t
41940	db	2016-08-05	2016-08-05			-10.00	EUR	finance	costs and fees	\N	t
41933	db	2016-08-05	2016-08-05			-17.69	EUR	living	food	\N	t
41932	db	2016-08-05	2016-08-05			-9.05	EUR	free time	going out	\N	t
41931	db	2016-08-05	2016-08-05			-5.44	EUR	mobility	gas	\N	t
41925	db	2016-08-05	2016-08-05			-20.00	EUR	other	cash	\N	t
41966	db	2016-08-06	2016-08-06			-50.00	EUR	finance	insurance	\N	t
41960	db	2016-08-06	2016-08-06			-15.93	EUR	health	wellness	\N	t
41959	db	2016-08-06	2016-08-06			-13.42	EUR	free time	going out	\N	t
41992	db	2016-08-07	2016-08-07			-51.92	EUR	health	doctor visits	\N	t
42018	db	2016-08-08	2016-08-08			1000.00	EUR	work and training	salary	\N	t
42001	db	2016-08-08	2016-08-08			-3.27	EUR	living	food	\N	t
42027	db	2016-08-09	2016-08-09			-8.92	EUR	free time	hobbies	\N	t
42069	db	2016-08-10	2016-08-10			-1.64	EUR	living	pets	\N	t
42053	db	2016-08-10	2016-08-10			-1.03	EUR	free time	sport	\N	t
42080	db	2016-08-11	2016-08-11			-9.37	EUR	living	food	\N	t
42079	db	2016-08-11	2016-08-11			-7.84	EUR	free time	entertainment	\N	t
42108	db	2016-08-12	2016-08-12			-9.06	EUR	living	food	\N	t
42107	db	2016-08-12	2016-08-12			-4.94	EUR	free time	going out	\N	t
42106	db	2016-08-12	2016-08-12			-17.04	EUR	mobility	gas	\N	t
42100	db	2016-08-12	2016-08-12			-20.00	EUR	other	cash	\N	t
42135	db	2016-08-13	2016-08-13			-0.68	EUR	health	wellness	\N	t
42134	db	2016-08-13	2016-08-13			-18.25	EUR	free time	going out	\N	t
42195	db	2016-08-15	2016-08-15			-31.94	EUR	living	household	\N	t
42176	db	2016-08-15	2016-08-15			-0.06	EUR	living	food	\N	t
42202	db	2016-08-16	2016-08-16			-3.51	EUR	free time	hobbies	\N	t
42228	db	2016-08-17	2016-08-17			-5.22	EUR	free time	sport	\N	t
42255	db	2016-08-18	2016-08-18			-5.98	EUR	living	food	\N	t
42254	db	2016-08-18	2016-08-18			-3.37	EUR	free time	entertainment	\N	t
42283	db	2016-08-19	2016-08-19			-16.15	EUR	living	food	\N	t
42282	db	2016-08-19	2016-08-19			-2.25	EUR	free time	going out	\N	t
42281	db	2016-08-19	2016-08-19			-14.44	EUR	mobility	gas	\N	t
42275	db	2016-08-19	2016-08-19			-20.00	EUR	other	cash	\N	t
42322	db	2016-08-20	2016-08-20			-63.97	EUR	free time	gadgets	\N	t
42321	db	2016-08-20	2016-08-20			-76.89	EUR	living	clothes	\N	t
42310	db	2016-08-20	2016-08-20			-8.81	EUR	health	wellness	\N	t
42309	db	2016-08-20	2016-08-20			-19.90	EUR	free time	going out	\N	t
42351	db	2016-08-22	2016-08-22			-1.91	EUR	living	food	\N	t
42377	db	2016-08-23	2016-08-23			-0.39	EUR	free time	hobbies	\N	t
42403	db	2016-08-24	2016-08-24			-0.34	EUR	free time	sport	\N	t
42430	db	2016-08-25	2016-08-25			-3.76	EUR	living	food	\N	t
42429	db	2016-08-25	2016-08-25			-7.02	EUR	free time	entertainment	\N	t
42458	db	2016-08-26	2016-08-26			-10.57	EUR	living	food	\N	t
42457	db	2016-08-26	2016-08-26			-16.99	EUR	free time	going out	\N	t
42456	db	2016-08-26	2016-08-26			-3.39	EUR	mobility	gas	\N	t
42450	db	2016-08-26	2016-08-26			-20.00	EUR	other	cash	\N	t
42485	db	2016-08-27	2016-08-27			-13.00	EUR	health	wellness	\N	t
42484	db	2016-08-27	2016-08-27			-12.81	EUR	free time	going out	\N	t
42526	db	2016-08-29	2016-08-29			-3.10	EUR	living	food	\N	t
42552	db	2016-08-30	2016-08-30			-3.10	EUR	free time	hobbies	\N	t
42578	db	2016-08-31	2016-08-31			-6.17	EUR	free time	sport	\N	t
42611	db	2016-09-01	2016-09-01			-10.00	EUR	house	phone	\N	t
42605	db	2016-09-01	2016-09-01			-8.46	EUR	living	food	\N	t
42604	db	2016-09-01	2016-09-01			-0.28	EUR	free time	entertainment	\N	t
42637	db	2016-09-02	2016-09-02			-10.00	EUR	house	electricity	\N	t
42633	db	2016-09-02	2016-09-02			-0.93	EUR	living	food	\N	t
42632	db	2016-09-02	2016-09-02			-13.85	EUR	free time	going out	\N	t
42631	db	2016-09-02	2016-09-02			-10.56	EUR	mobility	gas	\N	t
42625	db	2016-09-02	2016-09-02			-20.00	EUR	other	cash	\N	t
42663	db	2016-09-03	2016-09-03			-10.00	EUR	house	internet	\N	t
42660	db	2016-09-03	2016-09-03			-19.83	EUR	health	wellness	\N	t
42659	db	2016-09-03	2016-09-03			-9.71	EUR	free time	going out	\N	t
42689	db	2016-09-04	2016-09-04			-250.00	EUR	house	rent	\N	t
42715	db	2016-09-05	2016-09-05			-10.00	EUR	finance	costs and fees	\N	t
42701	db	2016-09-05	2016-09-05			-7.16	EUR	living	food	\N	t
42741	db	2016-09-06	2016-09-06			-50.00	EUR	finance	insurance	\N	t
42727	db	2016-09-06	2016-09-06			-9.46	EUR	free time	hobbies	\N	t
42767	db	2016-09-07	2016-09-07			-79.56	EUR	health	doctor visits	\N	t
42753	db	2016-09-07	2016-09-07			-6.79	EUR	free time	sport	\N	t
42793	db	2016-09-08	2016-09-08			1000.00	EUR	work and training	salary	\N	t
42780	db	2016-09-08	2016-09-08			-7.55	EUR	living	food	\N	t
42779	db	2016-09-08	2016-09-08			-1.96	EUR	free time	entertainment	\N	t
42808	db	2016-09-09	2016-09-09			-9.33	EUR	living	food	\N	t
42807	db	2016-09-09	2016-09-09			-8.83	EUR	free time	going out	\N	t
42806	db	2016-09-09	2016-09-09			-17.68	EUR	mobility	gas	\N	t
42800	db	2016-09-09	2016-09-09			-20.00	EUR	other	cash	\N	t
42844	db	2016-09-10	2016-09-10			-60.46	EUR	living	pets	\N	t
42835	db	2016-09-10	2016-09-10			-19.80	EUR	health	wellness	\N	t
42834	db	2016-09-10	2016-09-10			-11.95	EUR	free time	going out	\N	t
42876	db	2016-09-12	2016-09-12			-2.26	EUR	living	food	\N	t
42902	db	2016-09-13	2016-09-13			-5.74	EUR	free time	hobbies	\N	t
42928	db	2016-09-14	2016-09-14			-6.25	EUR	free time	sport	\N	t
42970	db	2016-09-15	2016-09-15			-75.20	EUR	living	household	\N	t
42955	db	2016-09-15	2016-09-15			-1.11	EUR	living	food	\N	t
42954	db	2016-09-15	2016-09-15			-9.96	EUR	free time	entertainment	\N	t
42983	db	2016-09-16	2016-09-16			-14.33	EUR	living	food	\N	t
42982	db	2016-09-16	2016-09-16			-7.74	EUR	free time	going out	\N	t
42981	db	2016-09-16	2016-09-16			-5.42	EUR	mobility	gas	\N	t
42975	db	2016-09-16	2016-09-16			-20.00	EUR	other	cash	\N	t
43010	db	2016-09-17	2016-09-17			-18.00	EUR	health	wellness	\N	t
43009	db	2016-09-17	2016-09-17			-3.69	EUR	free time	going out	\N	t
43051	db	2016-09-19	2016-09-19			-4.28	EUR	living	food	\N	t
43097	db	2016-09-20	2016-09-20			-42.84	EUR	free time	gadgets	\N	t
43096	db	2016-09-20	2016-09-20			-4.90	EUR	living	clothes	\N	t
43077	db	2016-09-20	2016-09-20			-5.66	EUR	free time	hobbies	\N	t
43103	db	2016-09-21	2016-09-21			-4.40	EUR	free time	sport	\N	t
43130	db	2016-09-22	2016-09-22			-8.21	EUR	living	food	\N	t
43129	db	2016-09-22	2016-09-22			-0.47	EUR	free time	entertainment	\N	t
43158	db	2016-09-23	2016-09-23			-5.69	EUR	living	food	\N	t
43157	db	2016-09-23	2016-09-23			-5.06	EUR	free time	going out	\N	t
43156	db	2016-09-23	2016-09-23			-14.93	EUR	mobility	gas	\N	t
43150	db	2016-09-23	2016-09-23			-20.00	EUR	other	cash	\N	t
43185	db	2016-09-24	2016-09-24			-11.43	EUR	health	wellness	\N	t
43184	db	2016-09-24	2016-09-24			-13.39	EUR	free time	going out	\N	t
43226	db	2016-09-26	2016-09-26			-3.90	EUR	living	food	\N	t
43252	db	2016-09-27	2016-09-27			-2.39	EUR	free time	hobbies	\N	t
43278	db	2016-09-28	2016-09-28			-9.73	EUR	free time	sport	\N	t
43305	db	2016-09-29	2016-09-29			-8.00	EUR	living	food	\N	t
43304	db	2016-09-29	2016-09-29			-8.08	EUR	free time	entertainment	\N	t
43333	db	2016-09-30	2016-09-30			-17.80	EUR	living	food	\N	t
43332	db	2016-09-30	2016-09-30			-16.24	EUR	free time	going out	\N	t
43331	db	2016-09-30	2016-09-30			-0.64	EUR	mobility	gas	\N	t
43325	db	2016-09-30	2016-09-30			-20.00	EUR	other	cash	\N	t
43361	db	2016-10-01	2016-10-01			-10.00	EUR	house	phone	\N	t
43360	db	2016-10-01	2016-10-01			-14.27	EUR	health	wellness	\N	t
43359	db	2016-10-01	2016-10-01			-0.33	EUR	free time	going out	\N	t
43387	db	2016-10-02	2016-10-02			-10.00	EUR	house	electricity	\N	t
43413	db	2016-10-03	2016-10-03			-10.00	EUR	house	internet	\N	t
43401	db	2016-10-03	2016-10-03			-3.26	EUR	living	food	\N	t
43439	db	2016-10-04	2016-10-04			-250.00	EUR	house	rent	\N	t
43427	db	2016-10-04	2016-10-04			-8.18	EUR	free time	hobbies	\N	t
43465	db	2016-10-05	2016-10-05			-10.00	EUR	finance	costs and fees	\N	t
43453	db	2016-10-05	2016-10-05			-5.86	EUR	free time	sport	\N	t
43491	db	2016-10-06	2016-10-06			-50.00	EUR	finance	insurance	\N	t
43480	db	2016-10-06	2016-10-06			-6.47	EUR	living	food	\N	t
43479	db	2016-10-06	2016-10-06			-1.52	EUR	free time	entertainment	\N	t
43517	db	2016-10-07	2016-10-07			-39.16	EUR	health	doctor visits	\N	t
43508	db	2016-10-07	2016-10-07			-15.27	EUR	living	food	\N	t
43507	db	2016-10-07	2016-10-07			-15.20	EUR	free time	going out	\N	t
43506	db	2016-10-07	2016-10-07			-14.80	EUR	mobility	gas	\N	t
43500	db	2016-10-07	2016-10-07			-20.00	EUR	other	cash	\N	t
43543	db	2016-10-08	2016-10-08			1000.00	EUR	work and training	salary	\N	t
43535	db	2016-10-08	2016-10-08			-14.97	EUR	health	wellness	\N	t
43534	db	2016-10-08	2016-10-08			-15.88	EUR	free time	going out	\N	t
43594	db	2016-10-10	2016-10-10			-28.77	EUR	living	pets	\N	t
43576	db	2016-10-10	2016-10-10			-1.07	EUR	living	food	\N	t
43602	db	2016-10-11	2016-10-11			-7.97	EUR	free time	hobbies	\N	t
43628	db	2016-10-12	2016-10-12			-2.41	EUR	free time	sport	\N	t
43655	db	2016-10-13	2016-10-13			-5.39	EUR	living	food	\N	t
43654	db	2016-10-13	2016-10-13			-1.73	EUR	free time	entertainment	\N	t
43683	db	2016-10-14	2016-10-14			-7.04	EUR	living	food	\N	t
43682	db	2016-10-14	2016-10-14			-11.39	EUR	free time	going out	\N	t
43681	db	2016-10-14	2016-10-14			-3.69	EUR	mobility	gas	\N	t
43675	db	2016-10-14	2016-10-14			-20.00	EUR	other	cash	\N	t
43720	db	2016-10-15	2016-10-15			-47.50	EUR	living	household	\N	t
43710	db	2016-10-15	2016-10-15			-7.72	EUR	health	wellness	\N	t
43709	db	2016-10-15	2016-10-15			-10.92	EUR	free time	going out	\N	t
43751	db	2016-10-17	2016-10-17			-6.68	EUR	living	food	\N	t
43777	db	2016-10-18	2016-10-18			-3.73	EUR	free time	hobbies	\N	t
43803	db	2016-10-19	2016-10-19			-4.55	EUR	free time	sport	\N	t
43847	db	2016-10-20	2016-10-20			-29.13	EUR	free time	gadgets	\N	t
43846	db	2016-10-20	2016-10-20			-52.01	EUR	living	clothes	\N	t
43830	db	2016-10-20	2016-10-20			-8.36	EUR	living	food	\N	t
43829	db	2016-10-20	2016-10-20			-3.44	EUR	free time	entertainment	\N	t
43858	db	2016-10-21	2016-10-21			-13.92	EUR	living	food	\N	t
43857	db	2016-10-21	2016-10-21			-2.22	EUR	free time	going out	\N	t
43856	db	2016-10-21	2016-10-21			-10.22	EUR	mobility	gas	\N	t
43850	db	2016-10-21	2016-10-21			-20.00	EUR	other	cash	\N	t
43885	db	2016-10-22	2016-10-22			-2.53	EUR	health	wellness	\N	t
43884	db	2016-10-22	2016-10-22			-16.92	EUR	free time	going out	\N	t
43926	db	2016-10-24	2016-10-24			-6.88	EUR	living	food	\N	t
43952	db	2016-10-25	2016-10-25			-2.92	EUR	free time	hobbies	\N	t
43978	db	2016-10-26	2016-10-26			-0.11	EUR	free time	sport	\N	t
44005	db	2016-10-27	2016-10-27			-6.27	EUR	living	food	\N	t
44004	db	2016-10-27	2016-10-27			-1.33	EUR	free time	entertainment	\N	t
44033	db	2016-10-28	2016-10-28			-2.40	EUR	living	food	\N	t
44032	db	2016-10-28	2016-10-28			-6.15	EUR	free time	going out	\N	t
44031	db	2016-10-28	2016-10-28			-9.30	EUR	mobility	gas	\N	t
44025	db	2016-10-28	2016-10-28			-20.00	EUR	other	cash	\N	t
44060	db	2016-10-29	2016-10-29			-11.09	EUR	health	wellness	\N	t
44059	db	2016-10-29	2016-10-29			-17.74	EUR	free time	going out	\N	t
44101	db	2016-10-31	2016-10-31			-5.49	EUR	living	food	\N	t
44136	db	2016-11-01	2016-11-01			-10.00	EUR	house	phone	\N	t
44127	db	2016-11-01	2016-11-01			-1.85	EUR	free time	hobbies	\N	t
44162	db	2016-11-02	2016-11-02			-10.00	EUR	house	electricity	\N	t
44153	db	2016-11-02	2016-11-02			-0.78	EUR	free time	sport	\N	t
44188	db	2016-11-03	2016-11-03			-10.00	EUR	house	internet	\N	t
44180	db	2016-11-03	2016-11-03			-8.24	EUR	living	food	\N	t
44179	db	2016-11-03	2016-11-03			-4.98	EUR	free time	entertainment	\N	t
44214	db	2016-11-04	2016-11-04			-250.00	EUR	house	rent	\N	t
44208	db	2016-11-04	2016-11-04			-11.59	EUR	living	food	\N	t
44207	db	2016-11-04	2016-11-04			-19.19	EUR	free time	going out	\N	t
44206	db	2016-11-04	2016-11-04			-14.50	EUR	mobility	gas	\N	t
44200	db	2016-11-04	2016-11-04			-20.00	EUR	other	cash	\N	t
44240	db	2016-11-05	2016-11-05			-10.00	EUR	finance	costs and fees	\N	t
44235	db	2016-11-05	2016-11-05			-0.20	EUR	health	wellness	\N	t
44234	db	2016-11-05	2016-11-05			-3.15	EUR	free time	going out	\N	t
44266	db	2016-11-06	2016-11-06			-50.00	EUR	finance	insurance	\N	t
44292	db	2016-11-07	2016-11-07			-84.85	EUR	health	doctor visits	\N	t
44276	db	2016-11-07	2016-11-07			-5.63	EUR	living	food	\N	t
44318	db	2016-11-08	2016-11-08			1000.00	EUR	work and training	salary	\N	t
44302	db	2016-11-08	2016-11-08			-6.37	EUR	free time	hobbies	\N	t
44328	db	2016-11-09	2016-11-09			-5.20	EUR	free time	sport	\N	t
44369	db	2016-11-10	2016-11-10			-47.38	EUR	living	pets	\N	t
44355	db	2016-11-10	2016-11-10			-0.37	EUR	living	food	\N	t
44354	db	2016-11-10	2016-11-10			-0.20	EUR	free time	entertainment	\N	t
44383	db	2016-11-11	2016-11-11			-1.68	EUR	living	food	\N	t
44382	db	2016-11-11	2016-11-11			-17.57	EUR	free time	going out	\N	t
44381	db	2016-11-11	2016-11-11			-7.59	EUR	mobility	gas	\N	t
44375	db	2016-11-11	2016-11-11			-20.00	EUR	other	cash	\N	t
44410	db	2016-11-12	2016-11-12			-13.89	EUR	health	wellness	\N	t
44409	db	2016-11-12	2016-11-12			-2.08	EUR	free time	going out	\N	t
44451	db	2016-11-14	2016-11-14			-6.86	EUR	living	food	\N	t
44495	db	2016-11-15	2016-11-15			-61.44	EUR	living	household	\N	t
44477	db	2016-11-15	2016-11-15			-3.14	EUR	free time	hobbies	\N	t
44503	db	2016-11-16	2016-11-16			-2.36	EUR	free time	sport	\N	t
44530	db	2016-11-17	2016-11-17			-9.02	EUR	living	food	\N	t
44529	db	2016-11-17	2016-11-17			-1.03	EUR	free time	entertainment	\N	t
44558	db	2016-11-18	2016-11-18			-13.81	EUR	living	food	\N	t
44557	db	2016-11-18	2016-11-18			-14.06	EUR	free time	going out	\N	t
44556	db	2016-11-18	2016-11-18			-3.28	EUR	mobility	gas	\N	t
44550	db	2016-11-18	2016-11-18			-20.00	EUR	other	cash	\N	t
44585	db	2016-11-19	2016-11-19			-18.53	EUR	health	wellness	\N	t
44584	db	2016-11-19	2016-11-19			-9.94	EUR	free time	going out	\N	t
44622	db	2016-11-20	2016-11-20			-58.95	EUR	free time	gadgets	\N	t
44621	db	2016-11-20	2016-11-20			-61.04	EUR	living	clothes	\N	t
44626	db	2016-11-21	2016-11-21			-8.10	EUR	living	food	\N	t
44652	db	2016-11-22	2016-11-22			-6.68	EUR	free time	hobbies	\N	t
44678	db	2016-11-23	2016-11-23			-1.56	EUR	free time	sport	\N	t
44705	db	2016-11-24	2016-11-24			-4.81	EUR	living	food	\N	t
44704	db	2016-11-24	2016-11-24			-2.25	EUR	free time	entertainment	\N	t
44733	db	2016-11-25	2016-11-25			-1.47	EUR	living	food	\N	t
44732	db	2016-11-25	2016-11-25			-8.37	EUR	free time	going out	\N	t
44731	db	2016-11-25	2016-11-25			-4.96	EUR	mobility	gas	\N	t
44725	db	2016-11-25	2016-11-25			-20.00	EUR	other	cash	\N	t
44760	db	2016-11-26	2016-11-26			-1.08	EUR	health	wellness	\N	t
44759	db	2016-11-26	2016-11-26			-16.29	EUR	free time	going out	\N	t
44801	db	2016-11-28	2016-11-28			-2.21	EUR	living	food	\N	t
44827	db	2016-11-29	2016-11-29			-3.14	EUR	free time	hobbies	\N	t
44853	db	2016-11-30	2016-11-30			-7.90	EUR	free time	sport	\N	t
44886	db	2016-12-01	2016-12-01			-10.00	EUR	house	phone	\N	t
44880	db	2016-12-01	2016-12-01			-8.35	EUR	living	food	\N	t
44879	db	2016-12-01	2016-12-01			-0.22	EUR	free time	entertainment	\N	t
44912	db	2016-12-02	2016-12-02			-10.00	EUR	house	electricity	\N	t
44908	db	2016-12-02	2016-12-02			-2.00	EUR	living	food	\N	t
44907	db	2016-12-02	2016-12-02			-6.56	EUR	free time	going out	\N	t
44906	db	2016-12-02	2016-12-02			-14.54	EUR	mobility	gas	\N	t
44900	db	2016-12-02	2016-12-02			-20.00	EUR	other	cash	\N	t
44938	db	2016-12-03	2016-12-03			-10.00	EUR	house	internet	\N	t
44935	db	2016-12-03	2016-12-03			-15.83	EUR	health	wellness	\N	t
44934	db	2016-12-03	2016-12-03			-1.16	EUR	free time	going out	\N	t
44964	db	2016-12-04	2016-12-04			-250.00	EUR	house	rent	\N	t
44990	db	2016-12-05	2016-12-05			-10.00	EUR	finance	costs and fees	\N	t
44976	db	2016-12-05	2016-12-05			-9.39	EUR	living	food	\N	t
45016	db	2016-12-06	2016-12-06			-50.00	EUR	finance	insurance	\N	t
45002	db	2016-12-06	2016-12-06			-7.36	EUR	free time	hobbies	\N	t
45042	db	2016-12-07	2016-12-07			-49.37	EUR	health	doctor visits	\N	t
45028	db	2016-12-07	2016-12-07			-7.25	EUR	free time	sport	\N	t
45068	db	2016-12-08	2016-12-08			1000.00	EUR	work and training	salary	\N	t
45055	db	2016-12-08	2016-12-08			-7.56	EUR	living	food	\N	t
45054	db	2016-12-08	2016-12-08			-7.56	EUR	free time	entertainment	\N	t
45083	db	2016-12-09	2016-12-09			-8.38	EUR	living	food	\N	t
45082	db	2016-12-09	2016-12-09			-13.11	EUR	free time	going out	\N	t
45081	db	2016-12-09	2016-12-09			-0.97	EUR	mobility	gas	\N	t
45075	db	2016-12-09	2016-12-09			-20.00	EUR	other	cash	\N	t
45119	db	2016-12-10	2016-12-10			-77.67	EUR	living	pets	\N	t
45110	db	2016-12-10	2016-12-10			-3.82	EUR	health	wellness	\N	t
45109	db	2016-12-10	2016-12-10			-14.03	EUR	free time	going out	\N	t
45151	db	2016-12-12	2016-12-12			-4.64	EUR	living	food	\N	t
45177	db	2016-12-13	2016-12-13			-2.79	EUR	free time	hobbies	\N	t
45203	db	2016-12-14	2016-12-14			-8.42	EUR	free time	sport	\N	t
45245	db	2016-12-15	2016-12-15			-6.39	EUR	living	household	\N	t
45230	db	2016-12-15	2016-12-15			-6.40	EUR	living	food	\N	t
45229	db	2016-12-15	2016-12-15			-8.65	EUR	free time	entertainment	\N	t
45258	db	2016-12-16	2016-12-16			-1.79	EUR	living	food	\N	t
45257	db	2016-12-16	2016-12-16			-12.14	EUR	free time	going out	\N	t
45256	db	2016-12-16	2016-12-16			-1.61	EUR	mobility	gas	\N	t
45250	db	2016-12-16	2016-12-16			-20.00	EUR	other	cash	\N	t
45285	db	2016-12-17	2016-12-17			-9.80	EUR	health	wellness	\N	t
45284	db	2016-12-17	2016-12-17			-3.42	EUR	free time	going out	\N	t
45326	db	2016-12-19	2016-12-19			-8.80	EUR	living	food	\N	t
45374	db	2016-12-20	2016-12-20			-22.90	EUR	free time	presents	\N	t
45372	db	2016-12-20	2016-12-20			-22.45	EUR	free time	gadgets	\N	t
45371	db	2016-12-20	2016-12-20			-32.96	EUR	living	clothes	\N	t
45352	db	2016-12-20	2016-12-20			-4.08	EUR	free time	hobbies	\N	t
45378	db	2016-12-21	2016-12-21			-3.99	EUR	free time	sport	\N	t
45405	db	2016-12-22	2016-12-22			-1.98	EUR	living	food	\N	t
45404	db	2016-12-22	2016-12-22			-6.53	EUR	free time	entertainment	\N	t
45433	db	2016-12-23	2016-12-23			-0.58	EUR	living	food	\N	t
45432	db	2016-12-23	2016-12-23			-15.51	EUR	free time	going out	\N	t
45431	db	2016-12-23	2016-12-23			-9.80	EUR	mobility	gas	\N	t
45425	db	2016-12-23	2016-12-23			-20.00	EUR	other	cash	\N	t
45460	db	2016-12-24	2016-12-24			-8.37	EUR	health	wellness	\N	t
45459	db	2016-12-24	2016-12-24			-2.09	EUR	free time	going out	\N	t
45501	db	2016-12-26	2016-12-26			-1.45	EUR	living	food	\N	t
45527	db	2016-12-27	2016-12-27			-6.58	EUR	free time	hobbies	\N	t
45553	db	2016-12-28	2016-12-28			-4.35	EUR	free time	sport	\N	t
45580	db	2016-12-29	2016-12-29			-3.45	EUR	living	food	\N	t
45579	db	2016-12-29	2016-12-29			-7.37	EUR	free time	entertainment	\N	t
45608	db	2016-12-30	2016-12-30			-11.27	EUR	living	food	\N	t
45607	db	2016-12-30	2016-12-30			-2.99	EUR	free time	going out	\N	t
45606	db	2016-12-30	2016-12-30			-18.94	EUR	mobility	gas	\N	t
45600	db	2016-12-30	2016-12-30			-20.00	EUR	other	cash	\N	t
