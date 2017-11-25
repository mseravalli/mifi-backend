COPY transactions (id, account_number, transaction_date, exchange_date, receiver, purpose, amount, currency, category, sub_category, comment, approved) FROM stdin;
12	db	2012-01-02	2012-01-02			-10.00	EUR	house	electricity	\N	t
1	db	2012-01-02	2012-01-02			-3.05	EUR	living	food	\N	t
38	db	2012-01-03	2012-01-03			-10.00	EUR	house	internet	\N	t
27	db	2012-01-03	2012-01-03			-3.56	EUR	free time	hobbies	\N	t
64	db	2012-01-04	2012-01-04			-250.00	EUR	house	rent	\N	t
53	db	2012-01-04	2012-01-04			-6.88	EUR	free time	sport	\N	t
90	db	2012-01-05	2012-01-05			-10.00	EUR	finance	costs and fees	\N	t
80	db	2012-01-05	2012-01-05			-1.86	EUR	living	food	\N	t
79	db	2012-01-05	2012-01-05			-9.14	EUR	free time	entertainment	\N	t
116	db	2012-01-06	2012-01-06			-50.00	EUR	finance	insurance	\N	t
108	db	2012-01-06	2012-01-06			-9.14	EUR	living	food	\N	t
107	db	2012-01-06	2012-01-06			-16.04	EUR	free time	going out	\N	t
106	db	2012-01-06	2012-01-06			-8.53	EUR	mobility	gas	\N	t
100	db	2012-01-06	2012-01-06			-20.00	EUR	other	cash	\N	t
142	db	2012-01-07	2012-01-07			-90.44	EUR	health	doctor visits	\N	t
135	db	2012-01-07	2012-01-07			-19.66	EUR	health	wellness	\N	t
134	db	2012-01-07	2012-01-07			-2.46	EUR	free time	going out	\N	t
168	db	2012-01-08	2012-01-08			1000.00	EUR	work and training	salary	\N	t
176	db	2012-01-09	2012-01-09			-5.13	EUR	living	food	\N	t
219	db	2012-01-10	2012-01-10			-58.01	EUR	living	pets	\N	t
202	db	2012-01-10	2012-01-10			-7.93	EUR	free time	hobbies	\N	t
228	db	2012-01-11	2012-01-11			-5.23	EUR	free time	sport	\N	t
255	db	2012-01-12	2012-01-12			-6.82	EUR	living	food	\N	t
254	db	2012-01-12	2012-01-12			-0.91	EUR	free time	entertainment	\N	t
283	db	2012-01-13	2012-01-13			-14.04	EUR	living	food	\N	t
282	db	2012-01-13	2012-01-13			-3.48	EUR	free time	going out	\N	t
281	db	2012-01-13	2012-01-13			-6.99	EUR	mobility	gas	\N	t
275	db	2012-01-13	2012-01-13			-20.00	EUR	other	cash	\N	t
310	db	2012-01-14	2012-01-14			-16.03	EUR	health	wellness	\N	t
309	db	2012-01-14	2012-01-14			-3.08	EUR	free time	going out	\N	t
345	db	2012-01-15	2012-01-15			-55.61	EUR	living	household	\N	t
351	db	2012-01-16	2012-01-16			-7.14	EUR	living	food	\N	t
377	db	2012-01-17	2012-01-17			-6.34	EUR	free time	hobbies	\N	t
403	db	2012-01-18	2012-01-18			-3.72	EUR	free time	sport	\N	t
430	db	2012-01-19	2012-01-19			-5.73	EUR	living	food	\N	t
429	db	2012-01-19	2012-01-19			-1.85	EUR	free time	entertainment	\N	t
472	db	2012-01-20	2012-01-20			-70.32	EUR	free time	gadgets	\N	t
471	db	2012-01-20	2012-01-20			-35.51	EUR	living	clothes	\N	t
458	db	2012-01-20	2012-01-20			-0.30	EUR	living	food	\N	t
457	db	2012-01-20	2012-01-20			-10.58	EUR	free time	going out	\N	t
456	db	2012-01-20	2012-01-20			-8.80	EUR	mobility	gas	\N	t
450	db	2012-01-20	2012-01-20			-20.00	EUR	other	cash	\N	t
485	db	2012-01-21	2012-01-21			-0.76	EUR	health	wellness	\N	t
484	db	2012-01-21	2012-01-21			-14.27	EUR	free time	going out	\N	t
526	db	2012-01-23	2012-01-23			-3.83	EUR	living	food	\N	t
552	db	2012-01-24	2012-01-24			-7.70	EUR	free time	hobbies	\N	t
578	db	2012-01-25	2012-01-25			-4.60	EUR	free time	sport	\N	t
605	db	2012-01-26	2012-01-26			-0.82	EUR	living	food	\N	t
604	db	2012-01-26	2012-01-26			-8.57	EUR	free time	entertainment	\N	t
633	db	2012-01-27	2012-01-27			-15.53	EUR	living	food	\N	t
632	db	2012-01-27	2012-01-27			-2.18	EUR	free time	going out	\N	t
631	db	2012-01-27	2012-01-27			-14.04	EUR	mobility	gas	\N	t
625	db	2012-01-27	2012-01-27			-20.00	EUR	other	cash	\N	t
660	db	2012-01-28	2012-01-28			-19.91	EUR	health	wellness	\N	t
659	db	2012-01-28	2012-01-28			-7.74	EUR	free time	going out	\N	t
701	db	2012-01-30	2012-01-30			-0.63	EUR	living	food	\N	t
727	db	2012-01-31	2012-01-31			-8.62	EUR	free time	hobbies	\N	t
761	db	2012-02-01	2012-02-01			-10.00	EUR	house	phone	\N	t
753	db	2012-02-01	2012-02-01			-2.31	EUR	free time	sport	\N	t
787	db	2012-02-02	2012-02-02			-10.00	EUR	house	electricity	\N	t
780	db	2012-02-02	2012-02-02			-0.11	EUR	living	food	\N	t
779	db	2012-02-02	2012-02-02			-4.66	EUR	free time	entertainment	\N	t
813	db	2012-02-03	2012-02-03			-10.00	EUR	house	internet	\N	t
808	db	2012-02-03	2012-02-03			-17.27	EUR	living	food	\N	t
807	db	2012-02-03	2012-02-03			-7.66	EUR	free time	going out	\N	t
806	db	2012-02-03	2012-02-03			-6.26	EUR	mobility	gas	\N	t
800	db	2012-02-03	2012-02-03			-20.00	EUR	other	cash	\N	t
839	db	2012-02-04	2012-02-04			-250.00	EUR	house	rent	\N	t
835	db	2012-02-04	2012-02-04			-5.45	EUR	health	wellness	\N	t
834	db	2012-02-04	2012-02-04			-15.99	EUR	free time	going out	\N	t
865	db	2012-02-05	2012-02-05			-10.00	EUR	finance	costs and fees	\N	t
891	db	2012-02-06	2012-02-06			-50.00	EUR	finance	insurance	\N	t
876	db	2012-02-06	2012-02-06			-4.17	EUR	living	food	\N	t
917	db	2012-02-07	2012-02-07			-65.32	EUR	health	doctor visits	\N	t
902	db	2012-02-07	2012-02-07			-0.63	EUR	free time	hobbies	\N	t
943	db	2012-02-08	2012-02-08			1000.00	EUR	work and training	salary	\N	t
928	db	2012-02-08	2012-02-08			-0.10	EUR	free time	sport	\N	t
955	db	2012-02-09	2012-02-09			-8.62	EUR	living	food	\N	t
954	db	2012-02-09	2012-02-09			-6.00	EUR	free time	entertainment	\N	t
994	db	2012-02-10	2012-02-10			-44.82	EUR	living	pets	\N	t
983	db	2012-02-10	2012-02-10			-19.71	EUR	living	food	\N	t
982	db	2012-02-10	2012-02-10			-7.68	EUR	free time	going out	\N	t
981	db	2012-02-10	2012-02-10			-5.34	EUR	mobility	gas	\N	t
975	db	2012-02-10	2012-02-10			-20.00	EUR	other	cash	\N	t
1010	db	2012-02-11	2012-02-11			-8.26	EUR	health	wellness	\N	t
1009	db	2012-02-11	2012-02-11			-17.71	EUR	free time	going out	\N	t
1051	db	2012-02-13	2012-02-13			-8.60	EUR	living	food	\N	t
1077	db	2012-02-14	2012-02-14			-3.29	EUR	free time	hobbies	\N	t
1120	db	2012-02-15	2012-02-15			-60.01	EUR	living	household	\N	t
1103	db	2012-02-15	2012-02-15			-8.68	EUR	free time	sport	\N	t
1130	db	2012-02-16	2012-02-16			-7.26	EUR	living	food	\N	t
1129	db	2012-02-16	2012-02-16			-8.15	EUR	free time	entertainment	\N	t
1158	db	2012-02-17	2012-02-17			-3.40	EUR	living	food	\N	t
1157	db	2012-02-17	2012-02-17			-18.01	EUR	free time	going out	\N	t
1156	db	2012-02-17	2012-02-17			-7.34	EUR	mobility	gas	\N	t
1150	db	2012-02-17	2012-02-17			-20.00	EUR	other	cash	\N	t
1185	db	2012-02-18	2012-02-18			-14.84	EUR	health	wellness	\N	t
1184	db	2012-02-18	2012-02-18			-12.85	EUR	free time	going out	\N	t
1247	db	2012-02-20	2012-02-20			-30.72	EUR	free time	gadgets	\N	t
1246	db	2012-02-20	2012-02-20			-11.05	EUR	living	clothes	\N	t
1226	db	2012-02-20	2012-02-20			-0.20	EUR	living	food	\N	t
1252	db	2012-02-21	2012-02-21			-9.76	EUR	free time	hobbies	\N	t
1278	db	2012-02-22	2012-02-22			-2.38	EUR	free time	sport	\N	t
1305	db	2012-02-23	2012-02-23			-5.38	EUR	living	food	\N	t
1304	db	2012-02-23	2012-02-23			-1.51	EUR	free time	entertainment	\N	t
1333	db	2012-02-24	2012-02-24			-19.81	EUR	living	food	\N	t
1332	db	2012-02-24	2012-02-24			-10.61	EUR	free time	going out	\N	t
1331	db	2012-02-24	2012-02-24			-18.60	EUR	mobility	gas	\N	t
1325	db	2012-02-24	2012-02-24			-20.00	EUR	other	cash	\N	t
1360	db	2012-02-25	2012-02-25			-10.49	EUR	health	wellness	\N	t
1359	db	2012-02-25	2012-02-25			-15.85	EUR	free time	going out	\N	t
1401	db	2012-02-27	2012-02-27			-3.07	EUR	living	food	\N	t
1427	db	2012-02-28	2012-02-28			-9.56	EUR	free time	hobbies	\N	t
1453	db	2012-02-29	2012-02-29			-8.95	EUR	free time	sport	\N	t
1486	db	2012-03-01	2012-03-01			-10.00	EUR	house	phone	\N	t
1480	db	2012-03-01	2012-03-01			-0.46	EUR	living	food	\N	t
1479	db	2012-03-01	2012-03-01			-9.80	EUR	free time	entertainment	\N	t
1512	db	2012-03-02	2012-03-02			-10.00	EUR	house	electricity	\N	t
1508	db	2012-03-02	2012-03-02			-2.79	EUR	living	food	\N	t
1507	db	2012-03-02	2012-03-02			-9.42	EUR	free time	going out	\N	t
1506	db	2012-03-02	2012-03-02			-1.76	EUR	mobility	gas	\N	t
1500	db	2012-03-02	2012-03-02			-20.00	EUR	other	cash	\N	t
1538	db	2012-03-03	2012-03-03			-10.00	EUR	house	internet	\N	t
1535	db	2012-03-03	2012-03-03			-12.29	EUR	health	wellness	\N	t
1534	db	2012-03-03	2012-03-03			-10.05	EUR	free time	going out	\N	t
1564	db	2012-03-04	2012-03-04			-250.00	EUR	house	rent	\N	t
1590	db	2012-03-05	2012-03-05			-10.00	EUR	finance	costs and fees	\N	t
1576	db	2012-03-05	2012-03-05			-5.44	EUR	living	food	\N	t
1616	db	2012-03-06	2012-03-06			-50.00	EUR	finance	insurance	\N	t
1602	db	2012-03-06	2012-03-06			-4.87	EUR	free time	hobbies	\N	t
1642	db	2012-03-07	2012-03-07			-15.94	EUR	health	doctor visits	\N	t
1628	db	2012-03-07	2012-03-07			-2.51	EUR	free time	sport	\N	t
1668	db	2012-03-08	2012-03-08			1000.00	EUR	work and training	salary	\N	t
1655	db	2012-03-08	2012-03-08			-8.87	EUR	living	food	\N	t
1654	db	2012-03-08	2012-03-08			-1.89	EUR	free time	entertainment	\N	t
1683	db	2012-03-09	2012-03-09			-18.25	EUR	living	food	\N	t
1682	db	2012-03-09	2012-03-09			-18.51	EUR	free time	going out	\N	t
1681	db	2012-03-09	2012-03-09			-11.12	EUR	mobility	gas	\N	t
1675	db	2012-03-09	2012-03-09			-20.00	EUR	other	cash	\N	t
1719	db	2012-03-10	2012-03-10			-1.72	EUR	living	pets	\N	t
1710	db	2012-03-10	2012-03-10			-18.07	EUR	health	wellness	\N	t
1709	db	2012-03-10	2012-03-10			-5.59	EUR	free time	going out	\N	t
1751	db	2012-03-12	2012-03-12			-0.39	EUR	living	food	\N	t
1777	db	2012-03-13	2012-03-13			-5.08	EUR	free time	hobbies	\N	t
1803	db	2012-03-14	2012-03-14			-7.88	EUR	free time	sport	\N	t
1845	db	2012-03-15	2012-03-15			-17.81	EUR	living	household	\N	t
1830	db	2012-03-15	2012-03-15			-5.77	EUR	living	food	\N	t
1829	db	2012-03-15	2012-03-15			-3.45	EUR	free time	entertainment	\N	t
1858	db	2012-03-16	2012-03-16			-16.00	EUR	living	food	\N	t
1857	db	2012-03-16	2012-03-16			-18.60	EUR	free time	going out	\N	t
1856	db	2012-03-16	2012-03-16			-15.09	EUR	mobility	gas	\N	t
1850	db	2012-03-16	2012-03-16			-20.00	EUR	other	cash	\N	t
1885	db	2012-03-17	2012-03-17			-0.87	EUR	health	wellness	\N	t
1884	db	2012-03-17	2012-03-17			-6.94	EUR	free time	going out	\N	t
1926	db	2012-03-19	2012-03-19			-4.99	EUR	living	food	\N	t
1972	db	2012-03-20	2012-03-20			-49.74	EUR	free time	gadgets	\N	t
1971	db	2012-03-20	2012-03-20			-69.19	EUR	living	clothes	\N	t
1952	db	2012-03-20	2012-03-20			-0.44	EUR	free time	hobbies	\N	t
1978	db	2012-03-21	2012-03-21			-9.94	EUR	free time	sport	\N	t
2005	db	2012-03-22	2012-03-22			-8.40	EUR	living	food	\N	t
2004	db	2012-03-22	2012-03-22			-0.21	EUR	free time	entertainment	\N	t
2033	db	2012-03-23	2012-03-23			-6.22	EUR	living	food	\N	t
2032	db	2012-03-23	2012-03-23			-5.22	EUR	free time	going out	\N	t
2031	db	2012-03-23	2012-03-23			-16.31	EUR	mobility	gas	\N	t
2025	db	2012-03-23	2012-03-23			-20.00	EUR	other	cash	\N	t
2060	db	2012-03-24	2012-03-24			-5.02	EUR	health	wellness	\N	t
2059	db	2012-03-24	2012-03-24			-8.07	EUR	free time	going out	\N	t
2101	db	2012-03-26	2012-03-26			-6.90	EUR	living	food	\N	t
2127	db	2012-03-27	2012-03-27			-5.22	EUR	free time	hobbies	\N	t
2153	db	2012-03-28	2012-03-28			-1.34	EUR	free time	sport	\N	t
2180	db	2012-03-29	2012-03-29			-5.20	EUR	living	food	\N	t
2179	db	2012-03-29	2012-03-29			-3.08	EUR	free time	entertainment	\N	t
2208	db	2012-03-30	2012-03-30			-16.67	EUR	living	food	\N	t
2207	db	2012-03-30	2012-03-30			-13.66	EUR	free time	going out	\N	t
2206	db	2012-03-30	2012-03-30			-0.94	EUR	mobility	gas	\N	t
2200	db	2012-03-30	2012-03-30			-20.00	EUR	other	cash	\N	t
2235	db	2012-03-31	2012-03-31			-5.13	EUR	health	wellness	\N	t
2234	db	2012-03-31	2012-03-31			-15.11	EUR	free time	going out	\N	t
2261	db	2012-04-01	2012-04-01			-10.00	EUR	house	phone	\N	t
2287	db	2012-04-02	2012-04-02			-10.00	EUR	house	electricity	\N	t
2276	db	2012-04-02	2012-04-02			-7.10	EUR	living	food	\N	t
2313	db	2012-04-03	2012-04-03			-10.00	EUR	house	internet	\N	t
2302	db	2012-04-03	2012-04-03			-4.43	EUR	free time	hobbies	\N	t
2339	db	2012-04-04	2012-04-04			-250.00	EUR	house	rent	\N	t
2328	db	2012-04-04	2012-04-04			-0.85	EUR	free time	sport	\N	t
2365	db	2012-04-05	2012-04-05			-10.00	EUR	finance	costs and fees	\N	t
2355	db	2012-04-05	2012-04-05			-2.11	EUR	living	food	\N	t
2354	db	2012-04-05	2012-04-05			-4.29	EUR	free time	entertainment	\N	t
2391	db	2012-04-06	2012-04-06			-50.00	EUR	finance	insurance	\N	t
2383	db	2012-04-06	2012-04-06			-14.38	EUR	living	food	\N	t
2382	db	2012-04-06	2012-04-06			-0.08	EUR	free time	going out	\N	t
2381	db	2012-04-06	2012-04-06			-6.37	EUR	mobility	gas	\N	t
2375	db	2012-04-06	2012-04-06			-20.00	EUR	other	cash	\N	t
2417	db	2012-04-07	2012-04-07			-35.42	EUR	health	doctor visits	\N	t
2410	db	2012-04-07	2012-04-07			-1.45	EUR	health	wellness	\N	t
2409	db	2012-04-07	2012-04-07			-1.81	EUR	free time	going out	\N	t
2443	db	2012-04-08	2012-04-08			1000.00	EUR	work and training	salary	\N	t
2451	db	2012-04-09	2012-04-09			-9.83	EUR	living	food	\N	t
2494	db	2012-04-10	2012-04-10			-71.40	EUR	living	pets	\N	t
2477	db	2012-04-10	2012-04-10			-3.99	EUR	free time	hobbies	\N	t
2503	db	2012-04-11	2012-04-11			-8.40	EUR	free time	sport	\N	t
2530	db	2012-04-12	2012-04-12			-9.94	EUR	living	food	\N	t
2529	db	2012-04-12	2012-04-12			-3.45	EUR	free time	entertainment	\N	t
2558	db	2012-04-13	2012-04-13			-19.30	EUR	living	food	\N	t
2557	db	2012-04-13	2012-04-13			-13.76	EUR	free time	going out	\N	t
2556	db	2012-04-13	2012-04-13			-17.68	EUR	mobility	gas	\N	t
2550	db	2012-04-13	2012-04-13			-20.00	EUR	other	cash	\N	t
2585	db	2012-04-14	2012-04-14			-5.17	EUR	health	wellness	\N	t
2584	db	2012-04-14	2012-04-14			-10.40	EUR	free time	going out	\N	t
2620	db	2012-04-15	2012-04-15			-41.11	EUR	living	household	\N	t
2626	db	2012-04-16	2012-04-16			-5.93	EUR	living	food	\N	t
2652	db	2012-04-17	2012-04-17			-5.12	EUR	free time	hobbies	\N	t
2678	db	2012-04-18	2012-04-18			-7.69	EUR	free time	sport	\N	t
2705	db	2012-04-19	2012-04-19			-1.33	EUR	living	food	\N	t
2704	db	2012-04-19	2012-04-19			-6.18	EUR	free time	entertainment	\N	t
2747	db	2012-04-20	2012-04-20			-14.98	EUR	free time	gadgets	\N	t
2746	db	2012-04-20	2012-04-20			-52.17	EUR	living	clothes	\N	t
2733	db	2012-04-20	2012-04-20			-8.03	EUR	living	food	\N	t
2732	db	2012-04-20	2012-04-20			-11.80	EUR	free time	going out	\N	t
2731	db	2012-04-20	2012-04-20			-1.69	EUR	mobility	gas	\N	t
2725	db	2012-04-20	2012-04-20			-20.00	EUR	other	cash	\N	t
2760	db	2012-04-21	2012-04-21			-6.50	EUR	health	wellness	\N	t
2759	db	2012-04-21	2012-04-21			-13.01	EUR	free time	going out	\N	t
2801	db	2012-04-23	2012-04-23			-9.35	EUR	living	food	\N	t
2827	db	2012-04-24	2012-04-24			-6.23	EUR	free time	hobbies	\N	t
2853	db	2012-04-25	2012-04-25			-2.96	EUR	free time	sport	\N	t
2880	db	2012-04-26	2012-04-26			-9.63	EUR	living	food	\N	t
2879	db	2012-04-26	2012-04-26			-8.40	EUR	free time	entertainment	\N	t
2908	db	2012-04-27	2012-04-27			-0.69	EUR	living	food	\N	t
2907	db	2012-04-27	2012-04-27			-0.47	EUR	free time	going out	\N	t
2906	db	2012-04-27	2012-04-27			-1.13	EUR	mobility	gas	\N	t
2900	db	2012-04-27	2012-04-27			-20.00	EUR	other	cash	\N	t
2935	db	2012-04-28	2012-04-28			-1.84	EUR	health	wellness	\N	t
2934	db	2012-04-28	2012-04-28			-9.35	EUR	free time	going out	\N	t
2976	db	2012-04-30	2012-04-30			-9.65	EUR	living	food	\N	t
3011	db	2012-05-01	2012-05-01			-10.00	EUR	house	phone	\N	t
3002	db	2012-05-01	2012-05-01			-3.08	EUR	free time	hobbies	\N	t
3037	db	2012-05-02	2012-05-02			-10.00	EUR	house	electricity	\N	t
3028	db	2012-05-02	2012-05-02			-9.91	EUR	free time	sport	\N	t
3063	db	2012-05-03	2012-05-03			-10.00	EUR	house	internet	\N	t
3055	db	2012-05-03	2012-05-03			-7.16	EUR	living	food	\N	t
3054	db	2012-05-03	2012-05-03			-0.34	EUR	free time	entertainment	\N	t
3089	db	2012-05-04	2012-05-04			-250.00	EUR	house	rent	\N	t
3083	db	2012-05-04	2012-05-04			-7.60	EUR	living	food	\N	t
3082	db	2012-05-04	2012-05-04			-14.99	EUR	free time	going out	\N	t
3081	db	2012-05-04	2012-05-04			-4.82	EUR	mobility	gas	\N	t
3075	db	2012-05-04	2012-05-04			-20.00	EUR	other	cash	\N	t
3115	db	2012-05-05	2012-05-05			-10.00	EUR	finance	costs and fees	\N	t
3110	db	2012-05-05	2012-05-05			-19.75	EUR	health	wellness	\N	t
3109	db	2012-05-05	2012-05-05			-2.54	EUR	free time	going out	\N	t
3141	db	2012-05-06	2012-05-06			-50.00	EUR	finance	insurance	\N	t
3167	db	2012-05-07	2012-05-07			-21.59	EUR	health	doctor visits	\N	t
3151	db	2012-05-07	2012-05-07			-9.55	EUR	living	food	\N	t
3193	db	2012-05-08	2012-05-08			1000.00	EUR	work and training	salary	\N	t
3177	db	2012-05-08	2012-05-08			-6.22	EUR	free time	hobbies	\N	t
3203	db	2012-05-09	2012-05-09			-9.23	EUR	free time	sport	\N	t
3244	db	2012-05-10	2012-05-10			-56.93	EUR	living	pets	\N	t
3230	db	2012-05-10	2012-05-10			-6.26	EUR	living	food	\N	t
3229	db	2012-05-10	2012-05-10			-1.34	EUR	free time	entertainment	\N	t
3258	db	2012-05-11	2012-05-11			-19.30	EUR	living	food	\N	t
3257	db	2012-05-11	2012-05-11			-8.86	EUR	free time	going out	\N	t
3256	db	2012-05-11	2012-05-11			-19.73	EUR	mobility	gas	\N	t
3250	db	2012-05-11	2012-05-11			-20.00	EUR	other	cash	\N	t
3285	db	2012-05-12	2012-05-12			-3.19	EUR	health	wellness	\N	t
3284	db	2012-05-12	2012-05-12			-8.11	EUR	free time	going out	\N	t
3326	db	2012-05-14	2012-05-14			-9.20	EUR	living	food	\N	t
3370	db	2012-05-15	2012-05-15			-25.43	EUR	living	household	\N	t
3352	db	2012-05-15	2012-05-15			-3.33	EUR	free time	hobbies	\N	t
3378	db	2012-05-16	2012-05-16			-7.61	EUR	free time	sport	\N	t
3405	db	2012-05-17	2012-05-17			-8.59	EUR	living	food	\N	t
3404	db	2012-05-17	2012-05-17			-1.02	EUR	free time	entertainment	\N	t
3433	db	2012-05-18	2012-05-18			-9.81	EUR	living	food	\N	t
3432	db	2012-05-18	2012-05-18			-16.17	EUR	free time	going out	\N	t
3431	db	2012-05-18	2012-05-18			-8.90	EUR	mobility	gas	\N	t
3425	db	2012-05-18	2012-05-18			-20.00	EUR	other	cash	\N	t
3460	db	2012-05-19	2012-05-19			-13.89	EUR	health	wellness	\N	t
3459	db	2012-05-19	2012-05-19			-10.00	EUR	free time	going out	\N	t
3497	db	2012-05-20	2012-05-20			-68.77	EUR	free time	gadgets	\N	t
3496	db	2012-05-20	2012-05-20			-41.90	EUR	living	clothes	\N	t
3501	db	2012-05-21	2012-05-21			-8.66	EUR	living	food	\N	t
3527	db	2012-05-22	2012-05-22			-5.01	EUR	free time	hobbies	\N	t
3553	db	2012-05-23	2012-05-23			-1.51	EUR	free time	sport	\N	t
3580	db	2012-05-24	2012-05-24			-2.37	EUR	living	food	\N	t
3579	db	2012-05-24	2012-05-24			-5.36	EUR	free time	entertainment	\N	t
3608	db	2012-05-25	2012-05-25			-7.04	EUR	living	food	\N	t
3607	db	2012-05-25	2012-05-25			-13.47	EUR	free time	going out	\N	t
3606	db	2012-05-25	2012-05-25			-0.90	EUR	mobility	gas	\N	t
3600	db	2012-05-25	2012-05-25			-20.00	EUR	other	cash	\N	t
3635	db	2012-05-26	2012-05-26			-17.58	EUR	health	wellness	\N	t
3634	db	2012-05-26	2012-05-26			-6.69	EUR	free time	going out	\N	t
3676	db	2012-05-28	2012-05-28			-6.72	EUR	living	food	\N	t
3702	db	2012-05-29	2012-05-29			-1.72	EUR	free time	hobbies	\N	t
3728	db	2012-05-30	2012-05-30			-5.91	EUR	free time	sport	\N	t
3755	db	2012-05-31	2012-05-31			-5.23	EUR	living	food	\N	t
3754	db	2012-05-31	2012-05-31			-0.44	EUR	free time	entertainment	\N	t
3786	db	2012-06-01	2012-06-01			-10.00	EUR	house	phone	\N	t
3783	db	2012-06-01	2012-06-01			-1.59	EUR	living	food	\N	t
3782	db	2012-06-01	2012-06-01			-12.99	EUR	free time	going out	\N	t
3781	db	2012-06-01	2012-06-01			-10.20	EUR	mobility	gas	\N	t
3775	db	2012-06-01	2012-06-01			-20.00	EUR	other	cash	\N	t
3812	db	2012-06-02	2012-06-02			-10.00	EUR	house	electricity	\N	t
3810	db	2012-06-02	2012-06-02			-0.83	EUR	health	wellness	\N	t
3809	db	2012-06-02	2012-06-02			-7.55	EUR	free time	going out	\N	t
3838	db	2012-06-03	2012-06-03			-10.00	EUR	house	internet	\N	t
3864	db	2012-06-04	2012-06-04			-250.00	EUR	house	rent	\N	t
3851	db	2012-06-04	2012-06-04			-5.55	EUR	living	food	\N	t
3890	db	2012-06-05	2012-06-05			-10.00	EUR	finance	costs and fees	\N	t
3877	db	2012-06-05	2012-06-05			-6.88	EUR	free time	hobbies	\N	t
3916	db	2012-06-06	2012-06-06			-50.00	EUR	finance	insurance	\N	t
3903	db	2012-06-06	2012-06-06			-8.72	EUR	free time	sport	\N	t
3942	db	2012-06-07	2012-06-07			-19.56	EUR	health	doctor visits	\N	t
3930	db	2012-06-07	2012-06-07			-6.49	EUR	living	food	\N	t
3929	db	2012-06-07	2012-06-07			-4.90	EUR	free time	entertainment	\N	t
3968	db	2012-06-08	2012-06-08			1000.00	EUR	work and training	salary	\N	t
3958	db	2012-06-08	2012-06-08			-9.62	EUR	living	food	\N	t
3957	db	2012-06-08	2012-06-08			-13.76	EUR	free time	going out	\N	t
3956	db	2012-06-08	2012-06-08			-6.36	EUR	mobility	gas	\N	t
3950	db	2012-06-08	2012-06-08			-20.00	EUR	other	cash	\N	t
3985	db	2012-06-09	2012-06-09			-4.14	EUR	health	wellness	\N	t
3984	db	2012-06-09	2012-06-09			-7.30	EUR	free time	going out	\N	t
4019	db	2012-06-10	2012-06-10			-31.46	EUR	living	pets	\N	t
4026	db	2012-06-11	2012-06-11			-1.53	EUR	living	food	\N	t
4052	db	2012-06-12	2012-06-12			-5.63	EUR	free time	hobbies	\N	t
4078	db	2012-06-13	2012-06-13			-2.18	EUR	free time	sport	\N	t
4105	db	2012-06-14	2012-06-14			-3.76	EUR	living	food	\N	t
4104	db	2012-06-14	2012-06-14			-7.90	EUR	free time	entertainment	\N	t
4145	db	2012-06-15	2012-06-15			-16.11	EUR	living	household	\N	t
4133	db	2012-06-15	2012-06-15			-9.32	EUR	living	food	\N	t
4132	db	2012-06-15	2012-06-15			-11.09	EUR	free time	going out	\N	t
4131	db	2012-06-15	2012-06-15			-15.37	EUR	mobility	gas	\N	t
4125	db	2012-06-15	2012-06-15			-20.00	EUR	other	cash	\N	t
4160	db	2012-06-16	2012-06-16			-7.58	EUR	health	wellness	\N	t
4159	db	2012-06-16	2012-06-16			-8.12	EUR	free time	going out	\N	t
4201	db	2012-06-18	2012-06-18			-0.61	EUR	living	food	\N	t
4227	db	2012-06-19	2012-06-19			-7.91	EUR	free time	hobbies	\N	t
4272	db	2012-06-20	2012-06-20			-57.10	EUR	free time	gadgets	\N	t
4271	db	2012-06-20	2012-06-20			-22.82	EUR	living	clothes	\N	t
4253	db	2012-06-20	2012-06-20			-5.36	EUR	free time	sport	\N	t
4280	db	2012-06-21	2012-06-21			-5.00	EUR	living	food	\N	t
4279	db	2012-06-21	2012-06-21			-8.46	EUR	free time	entertainment	\N	t
4308	db	2012-06-22	2012-06-22			-5.78	EUR	living	food	\N	t
4307	db	2012-06-22	2012-06-22			-17.68	EUR	free time	going out	\N	t
4306	db	2012-06-22	2012-06-22			-5.39	EUR	mobility	gas	\N	t
4300	db	2012-06-22	2012-06-22			-20.00	EUR	other	cash	\N	t
4335	db	2012-06-23	2012-06-23			-7.98	EUR	health	wellness	\N	t
4334	db	2012-06-23	2012-06-23			-14.75	EUR	free time	going out	\N	t
4376	db	2012-06-25	2012-06-25			-1.38	EUR	living	food	\N	t
4402	db	2012-06-26	2012-06-26			-5.94	EUR	free time	hobbies	\N	t
4428	db	2012-06-27	2012-06-27			-0.88	EUR	free time	sport	\N	t
4455	db	2012-06-28	2012-06-28			-9.97	EUR	living	food	\N	t
4454	db	2012-06-28	2012-06-28			-4.46	EUR	free time	entertainment	\N	t
4498	db	2012-06-29	2012-06-29			-5.87	EUR	free time	travel	\N	t
4483	db	2012-06-29	2012-06-29			-1.37	EUR	living	food	\N	t
4482	db	2012-06-29	2012-06-29			-12.08	EUR	free time	going out	\N	t
4481	db	2012-06-29	2012-06-29			-14.14	EUR	mobility	gas	\N	t
4475	db	2012-06-29	2012-06-29			-20.00	EUR	other	cash	\N	t
4510	db	2012-06-30	2012-06-30			-11.29	EUR	health	wellness	\N	t
4509	db	2012-06-30	2012-06-30			-17.17	EUR	free time	going out	\N	t
4536	db	2012-07-01	2012-07-01			-10.00	EUR	house	phone	\N	t
4562	db	2012-07-02	2012-07-02			-10.00	EUR	house	electricity	\N	t
4551	db	2012-07-02	2012-07-02			-7.36	EUR	living	food	\N	t
4588	db	2012-07-03	2012-07-03			-10.00	EUR	house	internet	\N	t
4577	db	2012-07-03	2012-07-03			-8.00	EUR	free time	hobbies	\N	t
4614	db	2012-07-04	2012-07-04			-250.00	EUR	house	rent	\N	t
4603	db	2012-07-04	2012-07-04			-6.87	EUR	free time	sport	\N	t
4640	db	2012-07-05	2012-07-05			-10.00	EUR	finance	costs and fees	\N	t
4630	db	2012-07-05	2012-07-05			-4.94	EUR	living	food	\N	t
4629	db	2012-07-05	2012-07-05			-1.08	EUR	free time	entertainment	\N	t
4666	db	2012-07-06	2012-07-06			-50.00	EUR	finance	insurance	\N	t
4658	db	2012-07-06	2012-07-06			-13.67	EUR	living	food	\N	t
4657	db	2012-07-06	2012-07-06			-0.01	EUR	free time	going out	\N	t
4656	db	2012-07-06	2012-07-06			-18.37	EUR	mobility	gas	\N	t
4650	db	2012-07-06	2012-07-06			-20.00	EUR	other	cash	\N	t
4692	db	2012-07-07	2012-07-07			-19.68	EUR	health	doctor visits	\N	t
4685	db	2012-07-07	2012-07-07			-1.79	EUR	health	wellness	\N	t
4684	db	2012-07-07	2012-07-07			-16.55	EUR	free time	going out	\N	t
4718	db	2012-07-08	2012-07-08			1000.00	EUR	work and training	salary	\N	t
4726	db	2012-07-09	2012-07-09			-2.87	EUR	living	food	\N	t
4769	db	2012-07-10	2012-07-10			-36.58	EUR	living	pets	\N	t
4752	db	2012-07-10	2012-07-10			-3.37	EUR	free time	hobbies	\N	t
4778	db	2012-07-11	2012-07-11			-8.24	EUR	free time	sport	\N	t
4805	db	2012-07-12	2012-07-12			-6.83	EUR	living	food	\N	t
4804	db	2012-07-12	2012-07-12			-2.80	EUR	free time	entertainment	\N	t
4833	db	2012-07-13	2012-07-13			-8.78	EUR	living	food	\N	t
4832	db	2012-07-13	2012-07-13			-0.38	EUR	free time	going out	\N	t
4831	db	2012-07-13	2012-07-13			-6.03	EUR	mobility	gas	\N	t
4825	db	2012-07-13	2012-07-13			-20.00	EUR	other	cash	\N	t
4860	db	2012-07-14	2012-07-14			-16.82	EUR	health	wellness	\N	t
4859	db	2012-07-14	2012-07-14			-5.46	EUR	free time	going out	\N	t
4895	db	2012-07-15	2012-07-15			-48.54	EUR	living	household	\N	t
4901	db	2012-07-16	2012-07-16			-7.75	EUR	living	food	\N	t
4927	db	2012-07-17	2012-07-17			-4.37	EUR	free time	hobbies	\N	t
4953	db	2012-07-18	2012-07-18			-5.64	EUR	free time	sport	\N	t
4980	db	2012-07-19	2012-07-19			-5.60	EUR	living	food	\N	t
4979	db	2012-07-19	2012-07-19			-4.20	EUR	free time	entertainment	\N	t
5022	db	2012-07-20	2012-07-20			-54.58	EUR	free time	gadgets	\N	t
5021	db	2012-07-20	2012-07-20			-77.00	EUR	living	clothes	\N	t
5008	db	2012-07-20	2012-07-20			-0.72	EUR	living	food	\N	t
5007	db	2012-07-20	2012-07-20			-16.07	EUR	free time	going out	\N	t
5006	db	2012-07-20	2012-07-20			-9.27	EUR	mobility	gas	\N	t
5000	db	2012-07-20	2012-07-20			-20.00	EUR	other	cash	\N	t
5035	db	2012-07-21	2012-07-21			-9.66	EUR	health	wellness	\N	t
5034	db	2012-07-21	2012-07-21			-2.72	EUR	free time	going out	\N	t
5076	db	2012-07-23	2012-07-23			-6.63	EUR	living	food	\N	t
5102	db	2012-07-24	2012-07-24			-9.52	EUR	free time	hobbies	\N	t
5128	db	2012-07-25	2012-07-25			-5.24	EUR	free time	sport	\N	t
5155	db	2012-07-26	2012-07-26			-8.26	EUR	living	food	\N	t
5154	db	2012-07-26	2012-07-26			-6.16	EUR	free time	entertainment	\N	t
5183	db	2012-07-27	2012-07-27			-16.48	EUR	living	food	\N	t
5182	db	2012-07-27	2012-07-27			-1.00	EUR	free time	going out	\N	t
5181	db	2012-07-27	2012-07-27			-6.26	EUR	mobility	gas	\N	t
5175	db	2012-07-27	2012-07-27			-20.00	EUR	other	cash	\N	t
5210	db	2012-07-28	2012-07-28			-5.94	EUR	health	wellness	\N	t
5209	db	2012-07-28	2012-07-28			-17.00	EUR	free time	going out	\N	t
5251	db	2012-07-30	2012-07-30			-4.99	EUR	living	food	\N	t
5277	db	2012-07-31	2012-07-31			-4.29	EUR	free time	hobbies	\N	t
5311	db	2012-08-01	2012-08-01			-10.00	EUR	house	phone	\N	t
5303	db	2012-08-01	2012-08-01			-3.95	EUR	free time	sport	\N	t
5337	db	2012-08-02	2012-08-02			-10.00	EUR	house	electricity	\N	t
5330	db	2012-08-02	2012-08-02			-0.14	EUR	living	food	\N	t
5329	db	2012-08-02	2012-08-02			-3.29	EUR	free time	entertainment	\N	t
5363	db	2012-08-03	2012-08-03			-10.00	EUR	house	internet	\N	t
5358	db	2012-08-03	2012-08-03			-19.40	EUR	living	food	\N	t
5357	db	2012-08-03	2012-08-03			-5.32	EUR	free time	going out	\N	t
5356	db	2012-08-03	2012-08-03			-13.13	EUR	mobility	gas	\N	t
5350	db	2012-08-03	2012-08-03			-20.00	EUR	other	cash	\N	t
5389	db	2012-08-04	2012-08-04			-250.00	EUR	house	rent	\N	t
5385	db	2012-08-04	2012-08-04			-6.39	EUR	health	wellness	\N	t
5384	db	2012-08-04	2012-08-04			-11.13	EUR	free time	going out	\N	t
5415	db	2012-08-05	2012-08-05			-10.00	EUR	finance	costs and fees	\N	t
5441	db	2012-08-06	2012-08-06			-50.00	EUR	finance	insurance	\N	t
5426	db	2012-08-06	2012-08-06			-8.99	EUR	living	food	\N	t
5467	db	2012-08-07	2012-08-07			-89.87	EUR	health	doctor visits	\N	t
5452	db	2012-08-07	2012-08-07			-2.63	EUR	free time	hobbies	\N	t
5493	db	2012-08-08	2012-08-08			1000.00	EUR	work and training	salary	\N	t
5478	db	2012-08-08	2012-08-08			-4.41	EUR	free time	sport	\N	t
5505	db	2012-08-09	2012-08-09			-2.88	EUR	living	food	\N	t
5504	db	2012-08-09	2012-08-09			-3.23	EUR	free time	entertainment	\N	t
5544	db	2012-08-10	2012-08-10			-11.26	EUR	living	pets	\N	t
5533	db	2012-08-10	2012-08-10			-14.21	EUR	living	food	\N	t
5532	db	2012-08-10	2012-08-10			-17.34	EUR	free time	going out	\N	t
5531	db	2012-08-10	2012-08-10			-9.23	EUR	mobility	gas	\N	t
5525	db	2012-08-10	2012-08-10			-20.00	EUR	other	cash	\N	t
5560	db	2012-08-11	2012-08-11			-11.48	EUR	health	wellness	\N	t
5559	db	2012-08-11	2012-08-11			-7.55	EUR	free time	going out	\N	t
5601	db	2012-08-13	2012-08-13			-8.09	EUR	living	food	\N	t
5627	db	2012-08-14	2012-08-14			-9.40	EUR	free time	hobbies	\N	t
5670	db	2012-08-15	2012-08-15			-58.86	EUR	living	household	\N	t
5653	db	2012-08-15	2012-08-15			-7.88	EUR	free time	sport	\N	t
5680	db	2012-08-16	2012-08-16			-1.38	EUR	living	food	\N	t
5679	db	2012-08-16	2012-08-16			-8.46	EUR	free time	entertainment	\N	t
5708	db	2012-08-17	2012-08-17			-15.43	EUR	living	food	\N	t
5707	db	2012-08-17	2012-08-17			-17.29	EUR	free time	going out	\N	t
5706	db	2012-08-17	2012-08-17			-10.49	EUR	mobility	gas	\N	t
5700	db	2012-08-17	2012-08-17			-20.00	EUR	other	cash	\N	t
5735	db	2012-08-18	2012-08-18			-0.28	EUR	health	wellness	\N	t
5734	db	2012-08-18	2012-08-18			-7.51	EUR	free time	going out	\N	t
5797	db	2012-08-20	2012-08-20			-26.82	EUR	free time	gadgets	\N	t
5796	db	2012-08-20	2012-08-20			-1.09	EUR	living	clothes	\N	t
5776	db	2012-08-20	2012-08-20			-2.54	EUR	living	food	\N	t
5802	db	2012-08-21	2012-08-21			-4.51	EUR	free time	hobbies	\N	t
5828	db	2012-08-22	2012-08-22			-7.40	EUR	free time	sport	\N	t
5855	db	2012-08-23	2012-08-23			-5.95	EUR	living	food	\N	t
5854	db	2012-08-23	2012-08-23			-3.03	EUR	free time	entertainment	\N	t
5883	db	2012-08-24	2012-08-24			-9.49	EUR	living	food	\N	t
5882	db	2012-08-24	2012-08-24			-6.28	EUR	free time	going out	\N	t
5881	db	2012-08-24	2012-08-24			-0.55	EUR	mobility	gas	\N	t
5875	db	2012-08-24	2012-08-24			-20.00	EUR	other	cash	\N	t
5910	db	2012-08-25	2012-08-25			-5.76	EUR	health	wellness	\N	t
5909	db	2012-08-25	2012-08-25			-4.82	EUR	free time	going out	\N	t
5951	db	2012-08-27	2012-08-27			-4.30	EUR	living	food	\N	t
5977	db	2012-08-28	2012-08-28			-5.99	EUR	free time	hobbies	\N	t
6003	db	2012-08-29	2012-08-29			-1.29	EUR	free time	sport	\N	t
6030	db	2012-08-30	2012-08-30			-9.55	EUR	living	food	\N	t
6029	db	2012-08-30	2012-08-30			-4.75	EUR	free time	entertainment	\N	t
6058	db	2012-08-31	2012-08-31			-1.59	EUR	living	food	\N	t
6057	db	2012-08-31	2012-08-31			-19.71	EUR	free time	going out	\N	t
6056	db	2012-08-31	2012-08-31			-4.25	EUR	mobility	gas	\N	t
6050	db	2012-08-31	2012-08-31			-20.00	EUR	other	cash	\N	t
6086	db	2012-09-01	2012-09-01			-10.00	EUR	house	phone	\N	t
6085	db	2012-09-01	2012-09-01			-18.58	EUR	health	wellness	\N	t
6084	db	2012-09-01	2012-09-01			-11.75	EUR	free time	going out	\N	t
6112	db	2012-09-02	2012-09-02			-10.00	EUR	house	electricity	\N	t
6138	db	2012-09-03	2012-09-03			-10.00	EUR	house	internet	\N	t
6126	db	2012-09-03	2012-09-03			-2.41	EUR	living	food	\N	t
6164	db	2012-09-04	2012-09-04			-250.00	EUR	house	rent	\N	t
6152	db	2012-09-04	2012-09-04			-6.59	EUR	free time	hobbies	\N	t
6190	db	2012-09-05	2012-09-05			-10.00	EUR	finance	costs and fees	\N	t
6178	db	2012-09-05	2012-09-05			-2.05	EUR	free time	sport	\N	t
6216	db	2012-09-06	2012-09-06			-50.00	EUR	finance	insurance	\N	t
6205	db	2012-09-06	2012-09-06			-3.54	EUR	living	food	\N	t
6204	db	2012-09-06	2012-09-06			-1.76	EUR	free time	entertainment	\N	t
6242	db	2012-09-07	2012-09-07			-63.75	EUR	health	doctor visits	\N	t
6233	db	2012-09-07	2012-09-07			-7.93	EUR	living	food	\N	t
6232	db	2012-09-07	2012-09-07			-1.47	EUR	free time	going out	\N	t
6231	db	2012-09-07	2012-09-07			-8.28	EUR	mobility	gas	\N	t
6225	db	2012-09-07	2012-09-07			-20.00	EUR	other	cash	\N	t
6268	db	2012-09-08	2012-09-08			1000.00	EUR	work and training	salary	\N	t
6260	db	2012-09-08	2012-09-08			-0.91	EUR	health	wellness	\N	t
6259	db	2012-09-08	2012-09-08			-18.28	EUR	free time	going out	\N	t
6319	db	2012-09-10	2012-09-10			-4.38	EUR	living	pets	\N	t
6301	db	2012-09-10	2012-09-10			-5.79	EUR	living	food	\N	t
6327	db	2012-09-11	2012-09-11			-8.49	EUR	free time	hobbies	\N	t
6353	db	2012-09-12	2012-09-12			-8.78	EUR	free time	sport	\N	t
6380	db	2012-09-13	2012-09-13			-2.20	EUR	living	food	\N	t
6379	db	2012-09-13	2012-09-13			-6.06	EUR	free time	entertainment	\N	t
6408	db	2012-09-14	2012-09-14			-10.77	EUR	living	food	\N	t
6407	db	2012-09-14	2012-09-14			-11.95	EUR	free time	going out	\N	t
6406	db	2012-09-14	2012-09-14			-13.19	EUR	mobility	gas	\N	t
6400	db	2012-09-14	2012-09-14			-20.00	EUR	other	cash	\N	t
6445	db	2012-09-15	2012-09-15			-31.57	EUR	living	household	\N	t
6435	db	2012-09-15	2012-09-15			-8.89	EUR	health	wellness	\N	t
6434	db	2012-09-15	2012-09-15			-18.08	EUR	free time	going out	\N	t
6476	db	2012-09-17	2012-09-17			-6.30	EUR	living	food	\N	t
6502	db	2012-09-18	2012-09-18			-6.63	EUR	free time	hobbies	\N	t
6528	db	2012-09-19	2012-09-19			-5.66	EUR	free time	sport	\N	t
6572	db	2012-09-20	2012-09-20			-79.41	EUR	free time	gadgets	\N	t
6571	db	2012-09-20	2012-09-20			-64.89	EUR	living	clothes	\N	t
6555	db	2012-09-20	2012-09-20			-5.30	EUR	living	food	\N	t
6554	db	2012-09-20	2012-09-20			-8.62	EUR	free time	entertainment	\N	t
6583	db	2012-09-21	2012-09-21			-17.30	EUR	living	food	\N	t
6582	db	2012-09-21	2012-09-21			-18.07	EUR	free time	going out	\N	t
6581	db	2012-09-21	2012-09-21			-10.77	EUR	mobility	gas	\N	t
6575	db	2012-09-21	2012-09-21			-20.00	EUR	other	cash	\N	t
6610	db	2012-09-22	2012-09-22			-12.50	EUR	health	wellness	\N	t
6609	db	2012-09-22	2012-09-22			-10.63	EUR	free time	going out	\N	t
6651	db	2012-09-24	2012-09-24			-4.28	EUR	living	food	\N	t
6677	db	2012-09-25	2012-09-25			-7.53	EUR	free time	hobbies	\N	t
6703	db	2012-09-26	2012-09-26			-7.24	EUR	free time	sport	\N	t
6730	db	2012-09-27	2012-09-27			-9.11	EUR	living	food	\N	t
6729	db	2012-09-27	2012-09-27			-4.01	EUR	free time	entertainment	\N	t
6758	db	2012-09-28	2012-09-28			-7.55	EUR	living	food	\N	t
6757	db	2012-09-28	2012-09-28			-8.08	EUR	free time	going out	\N	t
6756	db	2012-09-28	2012-09-28			-10.70	EUR	mobility	gas	\N	t
6750	db	2012-09-28	2012-09-28			-20.00	EUR	other	cash	\N	t
6785	db	2012-09-29	2012-09-29			-2.39	EUR	health	wellness	\N	t
6784	db	2012-09-29	2012-09-29			-2.65	EUR	free time	going out	\N	t
6836	db	2012-10-01	2012-10-01			-10.00	EUR	house	phone	\N	t
6826	db	2012-10-01	2012-10-01			-5.90	EUR	living	food	\N	t
6862	db	2012-10-02	2012-10-02			-10.00	EUR	house	electricity	\N	t
6852	db	2012-10-02	2012-10-02			-4.47	EUR	free time	hobbies	\N	t
6888	db	2012-10-03	2012-10-03			-10.00	EUR	house	internet	\N	t
6878	db	2012-10-03	2012-10-03			-8.12	EUR	free time	sport	\N	t
6914	db	2012-10-04	2012-10-04			-250.00	EUR	house	rent	\N	t
6905	db	2012-10-04	2012-10-04			-6.46	EUR	living	food	\N	t
6904	db	2012-10-04	2012-10-04			-4.72	EUR	free time	entertainment	\N	t
6940	db	2012-10-05	2012-10-05			-10.00	EUR	finance	costs and fees	\N	t
6933	db	2012-10-05	2012-10-05			-2.33	EUR	living	food	\N	t
6932	db	2012-10-05	2012-10-05			-0.73	EUR	free time	going out	\N	t
6931	db	2012-10-05	2012-10-05			-6.64	EUR	mobility	gas	\N	t
6925	db	2012-10-05	2012-10-05			-20.00	EUR	other	cash	\N	t
6966	db	2012-10-06	2012-10-06			-50.00	EUR	finance	insurance	\N	t
6960	db	2012-10-06	2012-10-06			-8.99	EUR	health	wellness	\N	t
6959	db	2012-10-06	2012-10-06			-8.43	EUR	free time	going out	\N	t
6992	db	2012-10-07	2012-10-07			-37.27	EUR	health	doctor visits	\N	t
7018	db	2012-10-08	2012-10-08			1000.00	EUR	work and training	salary	\N	t
7001	db	2012-10-08	2012-10-08			-3.10	EUR	living	food	\N	t
7027	db	2012-10-09	2012-10-09			-3.77	EUR	free time	hobbies	\N	t
7069	db	2012-10-10	2012-10-10			-66.49	EUR	living	pets	\N	t
7053	db	2012-10-10	2012-10-10			-8.98	EUR	free time	sport	\N	t
7080	db	2012-10-11	2012-10-11			-5.35	EUR	living	food	\N	t
7079	db	2012-10-11	2012-10-11			-1.14	EUR	free time	entertainment	\N	t
7108	db	2012-10-12	2012-10-12			-15.29	EUR	living	food	\N	t
7107	db	2012-10-12	2012-10-12			-16.88	EUR	free time	going out	\N	t
7106	db	2012-10-12	2012-10-12			-13.05	EUR	mobility	gas	\N	t
7100	db	2012-10-12	2012-10-12			-20.00	EUR	other	cash	\N	t
7135	db	2012-10-13	2012-10-13			-4.23	EUR	health	wellness	\N	t
7134	db	2012-10-13	2012-10-13			-9.85	EUR	free time	going out	\N	t
7195	db	2012-10-15	2012-10-15			-9.12	EUR	living	household	\N	t
7176	db	2012-10-15	2012-10-15			-4.15	EUR	living	food	\N	t
7202	db	2012-10-16	2012-10-16			-5.92	EUR	free time	hobbies	\N	t
7228	db	2012-10-17	2012-10-17			-8.77	EUR	free time	sport	\N	t
7255	db	2012-10-18	2012-10-18			-6.77	EUR	living	food	\N	t
7254	db	2012-10-18	2012-10-18			-6.44	EUR	free time	entertainment	\N	t
7283	db	2012-10-19	2012-10-19			-17.95	EUR	living	food	\N	t
7282	db	2012-10-19	2012-10-19			-11.22	EUR	free time	going out	\N	t
7281	db	2012-10-19	2012-10-19			-15.98	EUR	mobility	gas	\N	t
7275	db	2012-10-19	2012-10-19			-20.00	EUR	other	cash	\N	t
7322	db	2012-10-20	2012-10-20			-0.07	EUR	free time	gadgets	\N	t
7321	db	2012-10-20	2012-10-20			-43.17	EUR	living	clothes	\N	t
7310	db	2012-10-20	2012-10-20			-16.08	EUR	health	wellness	\N	t
7309	db	2012-10-20	2012-10-20			-14.94	EUR	free time	going out	\N	t
7351	db	2012-10-22	2012-10-22			-3.70	EUR	living	food	\N	t
7377	db	2012-10-23	2012-10-23			-3.45	EUR	free time	hobbies	\N	t
7403	db	2012-10-24	2012-10-24			-8.10	EUR	free time	sport	\N	t
7430	db	2012-10-25	2012-10-25			-4.45	EUR	living	food	\N	t
7429	db	2012-10-25	2012-10-25			-9.65	EUR	free time	entertainment	\N	t
7458	db	2012-10-26	2012-10-26			-18.31	EUR	living	food	\N	t
7457	db	2012-10-26	2012-10-26			-16.43	EUR	free time	going out	\N	t
7456	db	2012-10-26	2012-10-26			-15.30	EUR	mobility	gas	\N	t
7450	db	2012-10-26	2012-10-26			-20.00	EUR	other	cash	\N	t
7485	db	2012-10-27	2012-10-27			-8.20	EUR	health	wellness	\N	t
7484	db	2012-10-27	2012-10-27			-2.48	EUR	free time	going out	\N	t
7526	db	2012-10-29	2012-10-29			-1.66	EUR	living	food	\N	t
7552	db	2012-10-30	2012-10-30			-1.01	EUR	free time	hobbies	\N	t
7578	db	2012-10-31	2012-10-31			-7.21	EUR	free time	sport	\N	t
7611	db	2012-11-01	2012-11-01			-10.00	EUR	house	phone	\N	t
7605	db	2012-11-01	2012-11-01			-4.36	EUR	living	food	\N	t
7604	db	2012-11-01	2012-11-01			-5.07	EUR	free time	entertainment	\N	t
7637	db	2012-11-02	2012-11-02			-10.00	EUR	house	electricity	\N	t
7633	db	2012-11-02	2012-11-02			-16.56	EUR	living	food	\N	t
7632	db	2012-11-02	2012-11-02			-15.88	EUR	free time	going out	\N	t
7631	db	2012-11-02	2012-11-02			-1.52	EUR	mobility	gas	\N	t
7625	db	2012-11-02	2012-11-02			-20.00	EUR	other	cash	\N	t
7663	db	2012-11-03	2012-11-03			-10.00	EUR	house	internet	\N	t
7660	db	2012-11-03	2012-11-03			-8.33	EUR	health	wellness	\N	t
7659	db	2012-11-03	2012-11-03			-17.86	EUR	free time	going out	\N	t
7689	db	2012-11-04	2012-11-04			-250.00	EUR	house	rent	\N	t
7715	db	2012-11-05	2012-11-05			-10.00	EUR	finance	costs and fees	\N	t
7701	db	2012-11-05	2012-11-05			-6.96	EUR	living	food	\N	t
7741	db	2012-11-06	2012-11-06			-50.00	EUR	finance	insurance	\N	t
7727	db	2012-11-06	2012-11-06			-5.75	EUR	free time	hobbies	\N	t
7767	db	2012-11-07	2012-11-07			-61.14	EUR	health	doctor visits	\N	t
7753	db	2012-11-07	2012-11-07			-7.42	EUR	free time	sport	\N	t
7793	db	2012-11-08	2012-11-08			1000.00	EUR	work and training	salary	\N	t
7780	db	2012-11-08	2012-11-08			-5.87	EUR	living	food	\N	t
7779	db	2012-11-08	2012-11-08			-8.54	EUR	free time	entertainment	\N	t
7808	db	2012-11-09	2012-11-09			-5.90	EUR	living	food	\N	t
7807	db	2012-11-09	2012-11-09			-2.12	EUR	free time	going out	\N	t
7806	db	2012-11-09	2012-11-09			-16.21	EUR	mobility	gas	\N	t
7800	db	2012-11-09	2012-11-09			-20.00	EUR	other	cash	\N	t
7844	db	2012-11-10	2012-11-10			-64.49	EUR	living	pets	\N	t
7835	db	2012-11-10	2012-11-10			-3.16	EUR	health	wellness	\N	t
7834	db	2012-11-10	2012-11-10			-4.20	EUR	free time	going out	\N	t
7876	db	2012-11-12	2012-11-12			-4.08	EUR	living	food	\N	t
7902	db	2012-11-13	2012-11-13			-9.05	EUR	free time	hobbies	\N	t
7928	db	2012-11-14	2012-11-14			-6.84	EUR	free time	sport	\N	t
7970	db	2012-11-15	2012-11-15			-73.88	EUR	living	household	\N	t
7955	db	2012-11-15	2012-11-15			-7.74	EUR	living	food	\N	t
7954	db	2012-11-15	2012-11-15			-7.65	EUR	free time	entertainment	\N	t
7983	db	2012-11-16	2012-11-16			-19.05	EUR	living	food	\N	t
7982	db	2012-11-16	2012-11-16			-3.05	EUR	free time	going out	\N	t
7981	db	2012-11-16	2012-11-16			-2.28	EUR	mobility	gas	\N	t
7975	db	2012-11-16	2012-11-16			-20.00	EUR	other	cash	\N	t
8010	db	2012-11-17	2012-11-17			-16.95	EUR	health	wellness	\N	t
8009	db	2012-11-17	2012-11-17			-4.36	EUR	free time	going out	\N	t
8051	db	2012-11-19	2012-11-19			-0.89	EUR	living	food	\N	t
8097	db	2012-11-20	2012-11-20			-79.88	EUR	free time	gadgets	\N	t
8096	db	2012-11-20	2012-11-20			-5.26	EUR	living	clothes	\N	t
8077	db	2012-11-20	2012-11-20			-4.73	EUR	free time	hobbies	\N	t
8103	db	2012-11-21	2012-11-21			-3.78	EUR	free time	sport	\N	t
8130	db	2012-11-22	2012-11-22			-7.69	EUR	living	food	\N	t
8129	db	2012-11-22	2012-11-22			-9.25	EUR	free time	entertainment	\N	t
8158	db	2012-11-23	2012-11-23			-19.51	EUR	living	food	\N	t
8157	db	2012-11-23	2012-11-23			-13.89	EUR	free time	going out	\N	t
8156	db	2012-11-23	2012-11-23			-13.27	EUR	mobility	gas	\N	t
8150	db	2012-11-23	2012-11-23			-20.00	EUR	other	cash	\N	t
8185	db	2012-11-24	2012-11-24			-16.72	EUR	health	wellness	\N	t
8184	db	2012-11-24	2012-11-24			-3.56	EUR	free time	going out	\N	t
8226	db	2012-11-26	2012-11-26			-3.19	EUR	living	food	\N	t
8252	db	2012-11-27	2012-11-27			-3.17	EUR	free time	hobbies	\N	t
8278	db	2012-11-28	2012-11-28			-7.42	EUR	free time	sport	\N	t
8305	db	2012-11-29	2012-11-29			-0.79	EUR	living	food	\N	t
8304	db	2012-11-29	2012-11-29			-6.59	EUR	free time	entertainment	\N	t
8333	db	2012-11-30	2012-11-30			-13.20	EUR	living	food	\N	t
8332	db	2012-11-30	2012-11-30			-4.17	EUR	free time	going out	\N	t
8331	db	2012-11-30	2012-11-30			-1.38	EUR	mobility	gas	\N	t
8325	db	2012-11-30	2012-11-30			-20.00	EUR	other	cash	\N	t
8361	db	2012-12-01	2012-12-01			-10.00	EUR	house	phone	\N	t
8360	db	2012-12-01	2012-12-01			-17.95	EUR	health	wellness	\N	t
8359	db	2012-12-01	2012-12-01			-15.46	EUR	free time	going out	\N	t
8387	db	2012-12-02	2012-12-02			-10.00	EUR	house	electricity	\N	t
8413	db	2012-12-03	2012-12-03			-10.00	EUR	house	internet	\N	t
8401	db	2012-12-03	2012-12-03			-1.42	EUR	living	food	\N	t
8439	db	2012-12-04	2012-12-04			-250.00	EUR	house	rent	\N	t
8427	db	2012-12-04	2012-12-04			-4.41	EUR	free time	hobbies	\N	t
8465	db	2012-12-05	2012-12-05			-10.00	EUR	finance	costs and fees	\N	t
8453	db	2012-12-05	2012-12-05			-9.62	EUR	free time	sport	\N	t
8491	db	2012-12-06	2012-12-06			-50.00	EUR	finance	insurance	\N	t
8480	db	2012-12-06	2012-12-06			-9.05	EUR	living	food	\N	t
8479	db	2012-12-06	2012-12-06			-1.75	EUR	free time	entertainment	\N	t
8517	db	2012-12-07	2012-12-07			-83.89	EUR	health	doctor visits	\N	t
8508	db	2012-12-07	2012-12-07			-16.59	EUR	living	food	\N	t
8507	db	2012-12-07	2012-12-07			-14.19	EUR	free time	going out	\N	t
8506	db	2012-12-07	2012-12-07			-16.22	EUR	mobility	gas	\N	t
8500	db	2012-12-07	2012-12-07			-20.00	EUR	other	cash	\N	t
8543	db	2012-12-08	2012-12-08			1000.00	EUR	work and training	salary	\N	t
8535	db	2012-12-08	2012-12-08			-10.39	EUR	health	wellness	\N	t
8534	db	2012-12-08	2012-12-08			-14.86	EUR	free time	going out	\N	t
8594	db	2012-12-10	2012-12-10			-75.64	EUR	living	pets	\N	t
8576	db	2012-12-10	2012-12-10			-1.53	EUR	living	food	\N	t
8602	db	2012-12-11	2012-12-11			-6.23	EUR	free time	hobbies	\N	t
8628	db	2012-12-12	2012-12-12			-4.66	EUR	free time	sport	\N	t
8655	db	2012-12-13	2012-12-13			-4.94	EUR	living	food	\N	t
8654	db	2012-12-13	2012-12-13			-7.05	EUR	free time	entertainment	\N	t
8683	db	2012-12-14	2012-12-14			-12.96	EUR	living	food	\N	t
8682	db	2012-12-14	2012-12-14			-5.22	EUR	free time	going out	\N	t
8681	db	2012-12-14	2012-12-14			-3.74	EUR	mobility	gas	\N	t
8675	db	2012-12-14	2012-12-14			-20.00	EUR	other	cash	\N	t
8720	db	2012-12-15	2012-12-15			-64.28	EUR	living	household	\N	t
8710	db	2012-12-15	2012-12-15			-4.58	EUR	health	wellness	\N	t
8709	db	2012-12-15	2012-12-15			-12.75	EUR	free time	going out	\N	t
8751	db	2012-12-17	2012-12-17			-2.96	EUR	living	food	\N	t
8777	db	2012-12-18	2012-12-18			-2.89	EUR	free time	hobbies	\N	t
8803	db	2012-12-19	2012-12-19			-6.23	EUR	free time	sport	\N	t
8847	db	2012-12-20	2012-12-20			-36.65	EUR	free time	gadgets	\N	t
8846	db	2012-12-20	2012-12-20			-18.44	EUR	living	clothes	\N	t
8830	db	2012-12-20	2012-12-20			-3.76	EUR	living	food	\N	t
8829	db	2012-12-20	2012-12-20			-5.56	EUR	free time	entertainment	\N	t
8874	db	2012-12-21	2012-12-21			-26.84	EUR	free time	presents	\N	t
8858	db	2012-12-21	2012-12-21			-13.25	EUR	living	food	\N	t
8857	db	2012-12-21	2012-12-21			-11.03	EUR	free time	going out	\N	t
8856	db	2012-12-21	2012-12-21			-19.38	EUR	mobility	gas	\N	t
8850	db	2012-12-21	2012-12-21			-20.00	EUR	other	cash	\N	t
8885	db	2012-12-22	2012-12-22			-0.49	EUR	health	wellness	\N	t
8884	db	2012-12-22	2012-12-22			-1.14	EUR	free time	going out	\N	t
8926	db	2012-12-24	2012-12-24			-1.82	EUR	living	food	\N	t
8952	db	2012-12-25	2012-12-25			-0.38	EUR	free time	hobbies	\N	t
8978	db	2012-12-26	2012-12-26			-1.13	EUR	free time	sport	\N	t
9005	db	2012-12-27	2012-12-27			-4.87	EUR	living	food	\N	t
9004	db	2012-12-27	2012-12-27			-6.26	EUR	free time	entertainment	\N	t
9033	db	2012-12-28	2012-12-28			-13.38	EUR	living	food	\N	t
9032	db	2012-12-28	2012-12-28			-10.81	EUR	free time	going out	\N	t
9031	db	2012-12-28	2012-12-28			-1.28	EUR	mobility	gas	\N	t
9025	db	2012-12-28	2012-12-28			-20.00	EUR	other	cash	\N	t
9060	db	2012-12-29	2012-12-29			-11.71	EUR	health	wellness	\N	t
9059	db	2012-12-29	2012-12-29			-18.45	EUR	free time	going out	\N	t
9101	db	2012-12-31	2012-12-31			-7.25	EUR	living	food	\N	t
9136	db	2013-01-01	2013-01-01			-10.00	EUR	house	phone	\N	t
9127	db	2013-01-01	2013-01-01			-9.70	EUR	free time	hobbies	\N	t
9162	db	2013-01-02	2013-01-02			-10.00	EUR	house	electricity	\N	t
9153	db	2013-01-02	2013-01-02			-3.84	EUR	free time	sport	\N	t
9188	db	2013-01-03	2013-01-03			-10.00	EUR	house	internet	\N	t
9180	db	2013-01-03	2013-01-03			-8.93	EUR	living	food	\N	t
9179	db	2013-01-03	2013-01-03			-6.49	EUR	free time	entertainment	\N	t
9214	db	2013-01-04	2013-01-04			-250.00	EUR	house	rent	\N	t
9208	db	2013-01-04	2013-01-04			-2.10	EUR	living	food	\N	t
9207	db	2013-01-04	2013-01-04			-19.07	EUR	free time	going out	\N	t
9206	db	2013-01-04	2013-01-04			-17.30	EUR	mobility	gas	\N	t
9200	db	2013-01-04	2013-01-04			-20.00	EUR	other	cash	\N	t
9240	db	2013-01-05	2013-01-05			-10.00	EUR	finance	costs and fees	\N	t
9235	db	2013-01-05	2013-01-05			-15.55	EUR	health	wellness	\N	t
9234	db	2013-01-05	2013-01-05			-18.76	EUR	free time	going out	\N	t
9266	db	2013-01-06	2013-01-06			-50.00	EUR	finance	insurance	\N	t
9292	db	2013-01-07	2013-01-07			-11.77	EUR	health	doctor visits	\N	t
9276	db	2013-01-07	2013-01-07			-1.16	EUR	living	food	\N	t
9318	db	2013-01-08	2013-01-08			1000.00	EUR	work and training	salary	\N	t
9302	db	2013-01-08	2013-01-08			-2.70	EUR	free time	hobbies	\N	t
9328	db	2013-01-09	2013-01-09			-8.31	EUR	free time	sport	\N	t
9369	db	2013-01-10	2013-01-10			-67.71	EUR	living	pets	\N	t
9355	db	2013-01-10	2013-01-10			-9.64	EUR	living	food	\N	t
9354	db	2013-01-10	2013-01-10			-3.30	EUR	free time	entertainment	\N	t
9383	db	2013-01-11	2013-01-11			-7.15	EUR	living	food	\N	t
9382	db	2013-01-11	2013-01-11			-4.84	EUR	free time	going out	\N	t
9381	db	2013-01-11	2013-01-11			-6.41	EUR	mobility	gas	\N	t
9375	db	2013-01-11	2013-01-11			-20.00	EUR	other	cash	\N	t
9410	db	2013-01-12	2013-01-12			-7.47	EUR	health	wellness	\N	t
9409	db	2013-01-12	2013-01-12			-13.41	EUR	free time	going out	\N	t
9451	db	2013-01-14	2013-01-14			-8.53	EUR	living	food	\N	t
9495	db	2013-01-15	2013-01-15			-17.25	EUR	living	household	\N	t
9477	db	2013-01-15	2013-01-15			-5.71	EUR	free time	hobbies	\N	t
9503	db	2013-01-16	2013-01-16			-9.50	EUR	free time	sport	\N	t
9530	db	2013-01-17	2013-01-17			-4.72	EUR	living	food	\N	t
9529	db	2013-01-17	2013-01-17			-4.88	EUR	free time	entertainment	\N	t
9558	db	2013-01-18	2013-01-18			-10.76	EUR	living	food	\N	t
9557	db	2013-01-18	2013-01-18			-9.64	EUR	free time	going out	\N	t
9556	db	2013-01-18	2013-01-18			-8.63	EUR	mobility	gas	\N	t
9550	db	2013-01-18	2013-01-18			-20.00	EUR	other	cash	\N	t
9585	db	2013-01-19	2013-01-19			-4.04	EUR	health	wellness	\N	t
9584	db	2013-01-19	2013-01-19			-4.63	EUR	free time	going out	\N	t
9622	db	2013-01-20	2013-01-20			-41.32	EUR	free time	gadgets	\N	t
9621	db	2013-01-20	2013-01-20			-64.54	EUR	living	clothes	\N	t
9626	db	2013-01-21	2013-01-21			-8.57	EUR	living	food	\N	t
9652	db	2013-01-22	2013-01-22			-4.01	EUR	free time	hobbies	\N	t
9678	db	2013-01-23	2013-01-23			-7.31	EUR	free time	sport	\N	t
9705	db	2013-01-24	2013-01-24			-8.96	EUR	living	food	\N	t
9704	db	2013-01-24	2013-01-24			-1.73	EUR	free time	entertainment	\N	t
9733	db	2013-01-25	2013-01-25			-0.74	EUR	living	food	\N	t
9732	db	2013-01-25	2013-01-25			-10.60	EUR	free time	going out	\N	t
9731	db	2013-01-25	2013-01-25			-19.46	EUR	mobility	gas	\N	t
9725	db	2013-01-25	2013-01-25			-20.00	EUR	other	cash	\N	t
9760	db	2013-01-26	2013-01-26			-15.69	EUR	health	wellness	\N	t
9759	db	2013-01-26	2013-01-26			-12.48	EUR	free time	going out	\N	t
9801	db	2013-01-28	2013-01-28			-9.12	EUR	living	food	\N	t
9827	db	2013-01-29	2013-01-29			-0.27	EUR	free time	hobbies	\N	t
9853	db	2013-01-30	2013-01-30			-7.84	EUR	free time	sport	\N	t
9880	db	2013-01-31	2013-01-31			-4.82	EUR	living	food	\N	t
9879	db	2013-01-31	2013-01-31			-3.52	EUR	free time	entertainment	\N	t
9911	db	2013-02-01	2013-02-01			-10.00	EUR	house	phone	\N	t
9908	db	2013-02-01	2013-02-01			-18.63	EUR	living	food	\N	t
9907	db	2013-02-01	2013-02-01			-9.47	EUR	free time	going out	\N	t
9906	db	2013-02-01	2013-02-01			-9.02	EUR	mobility	gas	\N	t
9900	db	2013-02-01	2013-02-01			-20.00	EUR	other	cash	\N	t
9937	db	2013-02-02	2013-02-02			-10.00	EUR	house	electricity	\N	t
9935	db	2013-02-02	2013-02-02			-0.89	EUR	health	wellness	\N	t
9934	db	2013-02-02	2013-02-02			-11.28	EUR	free time	going out	\N	t
9963	db	2013-02-03	2013-02-03			-10.00	EUR	house	internet	\N	t
9989	db	2013-02-04	2013-02-04			-250.00	EUR	house	rent	\N	t
9976	db	2013-02-04	2013-02-04			-0.95	EUR	living	food	\N	t
10015	db	2013-02-05	2013-02-05			-10.00	EUR	finance	costs and fees	\N	t
10002	db	2013-02-05	2013-02-05			-8.68	EUR	free time	hobbies	\N	t
10041	db	2013-02-06	2013-02-06			-50.00	EUR	finance	insurance	\N	t
10028	db	2013-02-06	2013-02-06			-2.97	EUR	free time	sport	\N	t
10067	db	2013-02-07	2013-02-07			-55.55	EUR	health	doctor visits	\N	t
10055	db	2013-02-07	2013-02-07			-3.68	EUR	living	food	\N	t
10054	db	2013-02-07	2013-02-07			-4.74	EUR	free time	entertainment	\N	t
10093	db	2013-02-08	2013-02-08			1000.00	EUR	work and training	salary	\N	t
10083	db	2013-02-08	2013-02-08			-5.84	EUR	living	food	\N	t
10082	db	2013-02-08	2013-02-08			-1.35	EUR	free time	going out	\N	t
10081	db	2013-02-08	2013-02-08			-5.80	EUR	mobility	gas	\N	t
10075	db	2013-02-08	2013-02-08			-20.00	EUR	other	cash	\N	t
10110	db	2013-02-09	2013-02-09			-15.35	EUR	health	wellness	\N	t
10109	db	2013-02-09	2013-02-09			-16.66	EUR	free time	going out	\N	t
10144	db	2013-02-10	2013-02-10			-33.77	EUR	living	pets	\N	t
10151	db	2013-02-11	2013-02-11			-5.99	EUR	living	food	\N	t
10177	db	2013-02-12	2013-02-12			-1.44	EUR	free time	hobbies	\N	t
10203	db	2013-02-13	2013-02-13			-0.42	EUR	free time	sport	\N	t
10230	db	2013-02-14	2013-02-14			-6.67	EUR	living	food	\N	t
10229	db	2013-02-14	2013-02-14			-9.18	EUR	free time	entertainment	\N	t
10270	db	2013-02-15	2013-02-15			-7.88	EUR	living	household	\N	t
10258	db	2013-02-15	2013-02-15			-2.14	EUR	living	food	\N	t
10257	db	2013-02-15	2013-02-15			-7.49	EUR	free time	going out	\N	t
10256	db	2013-02-15	2013-02-15			-6.77	EUR	mobility	gas	\N	t
10250	db	2013-02-15	2013-02-15			-20.00	EUR	other	cash	\N	t
10285	db	2013-02-16	2013-02-16			-15.36	EUR	health	wellness	\N	t
10284	db	2013-02-16	2013-02-16			-11.29	EUR	free time	going out	\N	t
10326	db	2013-02-18	2013-02-18			-4.07	EUR	living	food	\N	t
10352	db	2013-02-19	2013-02-19			-1.67	EUR	free time	hobbies	\N	t
10397	db	2013-02-20	2013-02-20			-42.30	EUR	free time	gadgets	\N	t
10396	db	2013-02-20	2013-02-20			-77.95	EUR	living	clothes	\N	t
10378	db	2013-02-20	2013-02-20			-2.86	EUR	free time	sport	\N	t
10405	db	2013-02-21	2013-02-21			-1.22	EUR	living	food	\N	t
10404	db	2013-02-21	2013-02-21			-0.91	EUR	free time	entertainment	\N	t
10433	db	2013-02-22	2013-02-22			-14.23	EUR	living	food	\N	t
10432	db	2013-02-22	2013-02-22			-11.48	EUR	free time	going out	\N	t
10431	db	2013-02-22	2013-02-22			-1.94	EUR	mobility	gas	\N	t
10425	db	2013-02-22	2013-02-22			-20.00	EUR	other	cash	\N	t
10460	db	2013-02-23	2013-02-23			-8.93	EUR	health	wellness	\N	t
10459	db	2013-02-23	2013-02-23			-16.82	EUR	free time	going out	\N	t
10501	db	2013-02-25	2013-02-25			-8.15	EUR	living	food	\N	t
10527	db	2013-02-26	2013-02-26			-4.33	EUR	free time	hobbies	\N	t
10553	db	2013-02-27	2013-02-27			-5.64	EUR	free time	sport	\N	t
10580	db	2013-02-28	2013-02-28			-7.40	EUR	living	food	\N	t
10579	db	2013-02-28	2013-02-28			-9.55	EUR	free time	entertainment	\N	t
10611	db	2013-03-01	2013-03-01			-10.00	EUR	house	phone	\N	t
10608	db	2013-03-01	2013-03-01			-6.53	EUR	living	food	\N	t
10607	db	2013-03-01	2013-03-01			-18.69	EUR	free time	going out	\N	t
10606	db	2013-03-01	2013-03-01			-9.15	EUR	mobility	gas	\N	t
10600	db	2013-03-01	2013-03-01			-20.00	EUR	other	cash	\N	t
10637	db	2013-03-02	2013-03-02			-10.00	EUR	house	electricity	\N	t
10635	db	2013-03-02	2013-03-02			-4.77	EUR	health	wellness	\N	t
10634	db	2013-03-02	2013-03-02			-1.65	EUR	free time	going out	\N	t
10663	db	2013-03-03	2013-03-03			-10.00	EUR	house	internet	\N	t
10689	db	2013-03-04	2013-03-04			-250.00	EUR	house	rent	\N	t
10676	db	2013-03-04	2013-03-04			-7.97	EUR	living	food	\N	t
10715	db	2013-03-05	2013-03-05			-10.00	EUR	finance	costs and fees	\N	t
10702	db	2013-03-05	2013-03-05			-2.84	EUR	free time	hobbies	\N	t
10741	db	2013-03-06	2013-03-06			-50.00	EUR	finance	insurance	\N	t
10728	db	2013-03-06	2013-03-06			-1.76	EUR	free time	sport	\N	t
10767	db	2013-03-07	2013-03-07			-71.35	EUR	health	doctor visits	\N	t
10755	db	2013-03-07	2013-03-07			-6.91	EUR	living	food	\N	t
10754	db	2013-03-07	2013-03-07			-7.46	EUR	free time	entertainment	\N	t
10793	db	2013-03-08	2013-03-08			1000.00	EUR	work and training	salary	\N	t
10783	db	2013-03-08	2013-03-08			-6.20	EUR	living	food	\N	t
10782	db	2013-03-08	2013-03-08			-12.88	EUR	free time	going out	\N	t
10781	db	2013-03-08	2013-03-08			-3.69	EUR	mobility	gas	\N	t
10775	db	2013-03-08	2013-03-08			-20.00	EUR	other	cash	\N	t
10810	db	2013-03-09	2013-03-09			-9.23	EUR	health	wellness	\N	t
10809	db	2013-03-09	2013-03-09			-5.43	EUR	free time	going out	\N	t
10844	db	2013-03-10	2013-03-10			-56.00	EUR	living	pets	\N	t
10851	db	2013-03-11	2013-03-11			-9.13	EUR	living	food	\N	t
10877	db	2013-03-12	2013-03-12			-9.88	EUR	free time	hobbies	\N	t
10903	db	2013-03-13	2013-03-13			-5.13	EUR	free time	sport	\N	t
10930	db	2013-03-14	2013-03-14			-5.64	EUR	living	food	\N	t
10929	db	2013-03-14	2013-03-14			-7.94	EUR	free time	entertainment	\N	t
10970	db	2013-03-15	2013-03-15			-79.98	EUR	living	household	\N	t
10958	db	2013-03-15	2013-03-15			-14.00	EUR	living	food	\N	t
10957	db	2013-03-15	2013-03-15			-17.04	EUR	free time	going out	\N	t
10956	db	2013-03-15	2013-03-15			-15.06	EUR	mobility	gas	\N	t
10950	db	2013-03-15	2013-03-15			-20.00	EUR	other	cash	\N	t
10985	db	2013-03-16	2013-03-16			-6.20	EUR	health	wellness	\N	t
10984	db	2013-03-16	2013-03-16			-2.32	EUR	free time	going out	\N	t
11026	db	2013-03-18	2013-03-18			-4.18	EUR	living	food	\N	t
11052	db	2013-03-19	2013-03-19			-8.50	EUR	free time	hobbies	\N	t
11097	db	2013-03-20	2013-03-20			-15.90	EUR	free time	gadgets	\N	t
11096	db	2013-03-20	2013-03-20			-16.68	EUR	living	clothes	\N	t
11078	db	2013-03-20	2013-03-20			-6.86	EUR	free time	sport	\N	t
11105	db	2013-03-21	2013-03-21			-5.95	EUR	living	food	\N	t
11104	db	2013-03-21	2013-03-21			-9.36	EUR	free time	entertainment	\N	t
11133	db	2013-03-22	2013-03-22			-7.36	EUR	living	food	\N	t
11132	db	2013-03-22	2013-03-22			-11.45	EUR	free time	going out	\N	t
11131	db	2013-03-22	2013-03-22			-3.65	EUR	mobility	gas	\N	t
11125	db	2013-03-22	2013-03-22			-20.00	EUR	other	cash	\N	t
11160	db	2013-03-23	2013-03-23			-6.43	EUR	health	wellness	\N	t
11159	db	2013-03-23	2013-03-23			-17.44	EUR	free time	going out	\N	t
11201	db	2013-03-25	2013-03-25			-6.14	EUR	living	food	\N	t
11227	db	2013-03-26	2013-03-26			-2.10	EUR	free time	hobbies	\N	t
11253	db	2013-03-27	2013-03-27			-3.02	EUR	free time	sport	\N	t
11280	db	2013-03-28	2013-03-28			-4.20	EUR	living	food	\N	t
11279	db	2013-03-28	2013-03-28			-7.47	EUR	free time	entertainment	\N	t
11308	db	2013-03-29	2013-03-29			-13.69	EUR	living	food	\N	t
11307	db	2013-03-29	2013-03-29			-6.52	EUR	free time	going out	\N	t
11306	db	2013-03-29	2013-03-29			-10.69	EUR	mobility	gas	\N	t
11300	db	2013-03-29	2013-03-29			-20.00	EUR	other	cash	\N	t
11335	db	2013-03-30	2013-03-30			-16.44	EUR	health	wellness	\N	t
11334	db	2013-03-30	2013-03-30			-5.12	EUR	free time	going out	\N	t
11386	db	2013-04-01	2013-04-01			-10.00	EUR	house	phone	\N	t
11376	db	2013-04-01	2013-04-01			-7.96	EUR	living	food	\N	t
11412	db	2013-04-02	2013-04-02			-10.00	EUR	house	electricity	\N	t
11402	db	2013-04-02	2013-04-02			-6.11	EUR	free time	hobbies	\N	t
11438	db	2013-04-03	2013-04-03			-10.00	EUR	house	internet	\N	t
11428	db	2013-04-03	2013-04-03			-1.18	EUR	free time	sport	\N	t
11464	db	2013-04-04	2013-04-04			-250.00	EUR	house	rent	\N	t
11455	db	2013-04-04	2013-04-04			-9.57	EUR	living	food	\N	t
11454	db	2013-04-04	2013-04-04			-7.67	EUR	free time	entertainment	\N	t
11490	db	2013-04-05	2013-04-05			-10.00	EUR	finance	costs and fees	\N	t
11483	db	2013-04-05	2013-04-05			-14.53	EUR	living	food	\N	t
11482	db	2013-04-05	2013-04-05			-10.47	EUR	free time	going out	\N	t
11481	db	2013-04-05	2013-04-05			-0.85	EUR	mobility	gas	\N	t
11475	db	2013-04-05	2013-04-05			-20.00	EUR	other	cash	\N	t
11516	db	2013-04-06	2013-04-06			-50.00	EUR	finance	insurance	\N	t
11510	db	2013-04-06	2013-04-06			-2.57	EUR	health	wellness	\N	t
11509	db	2013-04-06	2013-04-06			-17.11	EUR	free time	going out	\N	t
11542	db	2013-04-07	2013-04-07			-18.40	EUR	health	doctor visits	\N	t
11568	db	2013-04-08	2013-04-08			1000.00	EUR	work and training	salary	\N	t
11551	db	2013-04-08	2013-04-08			-2.54	EUR	living	food	\N	t
11577	db	2013-04-09	2013-04-09			-4.71	EUR	free time	hobbies	\N	t
11619	db	2013-04-10	2013-04-10			-67.01	EUR	living	pets	\N	t
11603	db	2013-04-10	2013-04-10			-2.70	EUR	free time	sport	\N	t
11630	db	2013-04-11	2013-04-11			-2.85	EUR	living	food	\N	t
11629	db	2013-04-11	2013-04-11			-3.64	EUR	free time	entertainment	\N	t
11658	db	2013-04-12	2013-04-12			-9.28	EUR	living	food	\N	t
11657	db	2013-04-12	2013-04-12			-18.64	EUR	free time	going out	\N	t
11656	db	2013-04-12	2013-04-12			-12.21	EUR	mobility	gas	\N	t
11650	db	2013-04-12	2013-04-12			-20.00	EUR	other	cash	\N	t
11685	db	2013-04-13	2013-04-13			-8.15	EUR	health	wellness	\N	t
11684	db	2013-04-13	2013-04-13			-12.95	EUR	free time	going out	\N	t
11745	db	2013-04-15	2013-04-15			-11.81	EUR	living	household	\N	t
11726	db	2013-04-15	2013-04-15			-0.34	EUR	living	food	\N	t
11752	db	2013-04-16	2013-04-16			-2.73	EUR	free time	hobbies	\N	t
11778	db	2013-04-17	2013-04-17			-9.49	EUR	free time	sport	\N	t
11805	db	2013-04-18	2013-04-18			-3.94	EUR	living	food	\N	t
11804	db	2013-04-18	2013-04-18			-8.12	EUR	free time	entertainment	\N	t
11833	db	2013-04-19	2013-04-19			-3.73	EUR	living	food	\N	t
11832	db	2013-04-19	2013-04-19			-18.34	EUR	free time	going out	\N	t
11831	db	2013-04-19	2013-04-19			-8.42	EUR	mobility	gas	\N	t
11825	db	2013-04-19	2013-04-19			-20.00	EUR	other	cash	\N	t
11872	db	2013-04-20	2013-04-20			-62.07	EUR	free time	gadgets	\N	t
11871	db	2013-04-20	2013-04-20			-66.41	EUR	living	clothes	\N	t
11860	db	2013-04-20	2013-04-20			-16.96	EUR	health	wellness	\N	t
11859	db	2013-04-20	2013-04-20			-0.80	EUR	free time	going out	\N	t
11901	db	2013-04-22	2013-04-22			-8.15	EUR	living	food	\N	t
11927	db	2013-04-23	2013-04-23			-4.00	EUR	free time	hobbies	\N	t
11953	db	2013-04-24	2013-04-24			-4.68	EUR	free time	sport	\N	t
11980	db	2013-04-25	2013-04-25			-5.93	EUR	living	food	\N	t
11979	db	2013-04-25	2013-04-25			-0.90	EUR	free time	entertainment	\N	t
12008	db	2013-04-26	2013-04-26			-19.88	EUR	living	food	\N	t
12007	db	2013-04-26	2013-04-26			-19.87	EUR	free time	going out	\N	t
12006	db	2013-04-26	2013-04-26			-3.98	EUR	mobility	gas	\N	t
12000	db	2013-04-26	2013-04-26			-20.00	EUR	other	cash	\N	t
12035	db	2013-04-27	2013-04-27			-15.04	EUR	health	wellness	\N	t
12034	db	2013-04-27	2013-04-27			-0.33	EUR	free time	going out	\N	t
12076	db	2013-04-29	2013-04-29			-8.32	EUR	living	food	\N	t
12102	db	2013-04-30	2013-04-30			-8.69	EUR	free time	hobbies	\N	t
12136	db	2013-05-01	2013-05-01			-10.00	EUR	house	phone	\N	t
12128	db	2013-05-01	2013-05-01			-0.83	EUR	free time	sport	\N	t
12162	db	2013-05-02	2013-05-02			-10.00	EUR	house	electricity	\N	t
12155	db	2013-05-02	2013-05-02			-2.11	EUR	living	food	\N	t
12154	db	2013-05-02	2013-05-02			-9.15	EUR	free time	entertainment	\N	t
12188	db	2013-05-03	2013-05-03			-10.00	EUR	house	internet	\N	t
12183	db	2013-05-03	2013-05-03			-12.33	EUR	living	food	\N	t
12182	db	2013-05-03	2013-05-03			-16.13	EUR	free time	going out	\N	t
12181	db	2013-05-03	2013-05-03			-10.67	EUR	mobility	gas	\N	t
12175	db	2013-05-03	2013-05-03			-20.00	EUR	other	cash	\N	t
12214	db	2013-05-04	2013-05-04			-250.00	EUR	house	rent	\N	t
12210	db	2013-05-04	2013-05-04			-8.70	EUR	health	wellness	\N	t
12209	db	2013-05-04	2013-05-04			-13.86	EUR	free time	going out	\N	t
12240	db	2013-05-05	2013-05-05			-10.00	EUR	finance	costs and fees	\N	t
12266	db	2013-05-06	2013-05-06			-50.00	EUR	finance	insurance	\N	t
12251	db	2013-05-06	2013-05-06			-6.26	EUR	living	food	\N	t
12292	db	2013-05-07	2013-05-07			-94.24	EUR	health	doctor visits	\N	t
12277	db	2013-05-07	2013-05-07			-4.13	EUR	free time	hobbies	\N	t
12318	db	2013-05-08	2013-05-08			1000.00	EUR	work and training	salary	\N	t
12303	db	2013-05-08	2013-05-08			-8.43	EUR	free time	sport	\N	t
12330	db	2013-05-09	2013-05-09			-4.38	EUR	living	food	\N	t
12329	db	2013-05-09	2013-05-09			-7.64	EUR	free time	entertainment	\N	t
12369	db	2013-05-10	2013-05-10			-8.21	EUR	living	pets	\N	t
12358	db	2013-05-10	2013-05-10			-7.74	EUR	living	food	\N	t
12357	db	2013-05-10	2013-05-10			-15.43	EUR	free time	going out	\N	t
12356	db	2013-05-10	2013-05-10			-8.81	EUR	mobility	gas	\N	t
12350	db	2013-05-10	2013-05-10			-20.00	EUR	other	cash	\N	t
12385	db	2013-05-11	2013-05-11			-2.81	EUR	health	wellness	\N	t
12384	db	2013-05-11	2013-05-11			-17.03	EUR	free time	going out	\N	t
12426	db	2013-05-13	2013-05-13			-0.09	EUR	living	food	\N	t
12452	db	2013-05-14	2013-05-14			-9.02	EUR	free time	hobbies	\N	t
12495	db	2013-05-15	2013-05-15			-20.81	EUR	living	household	\N	t
12478	db	2013-05-15	2013-05-15			-2.69	EUR	free time	sport	\N	t
12505	db	2013-05-16	2013-05-16			-0.66	EUR	living	food	\N	t
12504	db	2013-05-16	2013-05-16			-2.81	EUR	free time	entertainment	\N	t
12533	db	2013-05-17	2013-05-17			-19.66	EUR	living	food	\N	t
12532	db	2013-05-17	2013-05-17			-0.97	EUR	free time	going out	\N	t
12531	db	2013-05-17	2013-05-17			-12.49	EUR	mobility	gas	\N	t
12525	db	2013-05-17	2013-05-17			-20.00	EUR	other	cash	\N	t
12560	db	2013-05-18	2013-05-18			-2.76	EUR	health	wellness	\N	t
12559	db	2013-05-18	2013-05-18			-7.27	EUR	free time	going out	\N	t
12622	db	2013-05-20	2013-05-20			-22.31	EUR	free time	gadgets	\N	t
12621	db	2013-05-20	2013-05-20			-61.85	EUR	living	clothes	\N	t
12601	db	2013-05-20	2013-05-20			-5.32	EUR	living	food	\N	t
12627	db	2013-05-21	2013-05-21			-7.84	EUR	free time	hobbies	\N	t
12653	db	2013-05-22	2013-05-22			-0.84	EUR	free time	sport	\N	t
12680	db	2013-05-23	2013-05-23			-9.46	EUR	living	food	\N	t
12679	db	2013-05-23	2013-05-23			-0.01	EUR	free time	entertainment	\N	t
12708	db	2013-05-24	2013-05-24			-13.64	EUR	living	food	\N	t
12707	db	2013-05-24	2013-05-24			-10.97	EUR	free time	going out	\N	t
12706	db	2013-05-24	2013-05-24			-8.52	EUR	mobility	gas	\N	t
12700	db	2013-05-24	2013-05-24			-20.00	EUR	other	cash	\N	t
12735	db	2013-05-25	2013-05-25			-8.74	EUR	health	wellness	\N	t
12734	db	2013-05-25	2013-05-25			-13.66	EUR	free time	going out	\N	t
12776	db	2013-05-27	2013-05-27			-8.41	EUR	living	food	\N	t
12802	db	2013-05-28	2013-05-28			-5.73	EUR	free time	hobbies	\N	t
12828	db	2013-05-29	2013-05-29			-7.07	EUR	free time	sport	\N	t
12855	db	2013-05-30	2013-05-30			-9.14	EUR	living	food	\N	t
12854	db	2013-05-30	2013-05-30			-3.25	EUR	free time	entertainment	\N	t
12883	db	2013-05-31	2013-05-31			-3.13	EUR	living	food	\N	t
12882	db	2013-05-31	2013-05-31			-12.32	EUR	free time	going out	\N	t
12881	db	2013-05-31	2013-05-31			-1.81	EUR	mobility	gas	\N	t
12875	db	2013-05-31	2013-05-31			-20.00	EUR	other	cash	\N	t
12911	db	2013-06-01	2013-06-01			-10.00	EUR	house	phone	\N	t
12910	db	2013-06-01	2013-06-01			-15.23	EUR	health	wellness	\N	t
12909	db	2013-06-01	2013-06-01			-19.32	EUR	free time	going out	\N	t
12937	db	2013-06-02	2013-06-02			-10.00	EUR	house	electricity	\N	t
12963	db	2013-06-03	2013-06-03			-10.00	EUR	house	internet	\N	t
12951	db	2013-06-03	2013-06-03			-5.38	EUR	living	food	\N	t
12989	db	2013-06-04	2013-06-04			-250.00	EUR	house	rent	\N	t
12977	db	2013-06-04	2013-06-04			-3.09	EUR	free time	hobbies	\N	t
13015	db	2013-06-05	2013-06-05			-10.00	EUR	finance	costs and fees	\N	t
13003	db	2013-06-05	2013-06-05			-6.07	EUR	free time	sport	\N	t
13041	db	2013-06-06	2013-06-06			-50.00	EUR	finance	insurance	\N	t
13030	db	2013-06-06	2013-06-06			-4.06	EUR	living	food	\N	t
13029	db	2013-06-06	2013-06-06			-7.61	EUR	free time	entertainment	\N	t
13067	db	2013-06-07	2013-06-07			-70.70	EUR	health	doctor visits	\N	t
13058	db	2013-06-07	2013-06-07			-1.15	EUR	living	food	\N	t
13057	db	2013-06-07	2013-06-07			-5.59	EUR	free time	going out	\N	t
13056	db	2013-06-07	2013-06-07			-8.46	EUR	mobility	gas	\N	t
13050	db	2013-06-07	2013-06-07			-20.00	EUR	other	cash	\N	t
13093	db	2013-06-08	2013-06-08			1000.00	EUR	work and training	salary	\N	t
13085	db	2013-06-08	2013-06-08			-12.58	EUR	health	wellness	\N	t
13084	db	2013-06-08	2013-06-08			-4.63	EUR	free time	going out	\N	t
13144	db	2013-06-10	2013-06-10			-12.43	EUR	living	pets	\N	t
13126	db	2013-06-10	2013-06-10			-6.74	EUR	living	food	\N	t
13152	db	2013-06-11	2013-06-11			-3.34	EUR	free time	hobbies	\N	t
13178	db	2013-06-12	2013-06-12			-6.33	EUR	free time	sport	\N	t
13205	db	2013-06-13	2013-06-13			-2.07	EUR	living	food	\N	t
13204	db	2013-06-13	2013-06-13			-5.49	EUR	free time	entertainment	\N	t
13233	db	2013-06-14	2013-06-14			-11.44	EUR	living	food	\N	t
13232	db	2013-06-14	2013-06-14			-5.80	EUR	free time	going out	\N	t
13231	db	2013-06-14	2013-06-14			-17.51	EUR	mobility	gas	\N	t
13225	db	2013-06-14	2013-06-14			-20.00	EUR	other	cash	\N	t
13270	db	2013-06-15	2013-06-15			-28.11	EUR	living	household	\N	t
13260	db	2013-06-15	2013-06-15			-10.22	EUR	health	wellness	\N	t
13259	db	2013-06-15	2013-06-15			-19.98	EUR	free time	going out	\N	t
13301	db	2013-06-17	2013-06-17			-3.78	EUR	living	food	\N	t
13327	db	2013-06-18	2013-06-18			-3.09	EUR	free time	hobbies	\N	t
13353	db	2013-06-19	2013-06-19			-0.20	EUR	free time	sport	\N	t
13397	db	2013-06-20	2013-06-20			-32.09	EUR	free time	gadgets	\N	t
13396	db	2013-06-20	2013-06-20			-30.16	EUR	living	clothes	\N	t
13380	db	2013-06-20	2013-06-20			-6.44	EUR	living	food	\N	t
13379	db	2013-06-20	2013-06-20			-0.87	EUR	free time	entertainment	\N	t
13408	db	2013-06-21	2013-06-21			-19.96	EUR	living	food	\N	t
13407	db	2013-06-21	2013-06-21			-14.69	EUR	free time	going out	\N	t
13406	db	2013-06-21	2013-06-21			-7.41	EUR	mobility	gas	\N	t
13400	db	2013-06-21	2013-06-21			-20.00	EUR	other	cash	\N	t
13435	db	2013-06-22	2013-06-22			-8.41	EUR	health	wellness	\N	t
13434	db	2013-06-22	2013-06-22			-6.68	EUR	free time	going out	\N	t
13476	db	2013-06-24	2013-06-24			-7.09	EUR	living	food	\N	t
13502	db	2013-06-25	2013-06-25			-1.04	EUR	free time	hobbies	\N	t
13528	db	2013-06-26	2013-06-26			-4.13	EUR	free time	sport	\N	t
13555	db	2013-06-27	2013-06-27			-9.07	EUR	living	food	\N	t
13554	db	2013-06-27	2013-06-27			-3.90	EUR	free time	entertainment	\N	t
13583	db	2013-06-28	2013-06-28			-12.05	EUR	living	food	\N	t
13582	db	2013-06-28	2013-06-28			-13.58	EUR	free time	going out	\N	t
13581	db	2013-06-28	2013-06-28			-3.69	EUR	mobility	gas	\N	t
13575	db	2013-06-28	2013-06-28			-20.00	EUR	other	cash	\N	t
13623	db	2013-06-29	2013-06-29			-288.73	EUR	free time	travel	\N	t
13610	db	2013-06-29	2013-06-29			-5.36	EUR	health	wellness	\N	t
13609	db	2013-06-29	2013-06-29			-11.20	EUR	free time	going out	\N	t
13661	db	2013-07-01	2013-07-01			-10.00	EUR	house	phone	\N	t
13651	db	2013-07-01	2013-07-01			-6.71	EUR	living	food	\N	t
13687	db	2013-07-02	2013-07-02			-10.00	EUR	house	electricity	\N	t
13677	db	2013-07-02	2013-07-02			-1.22	EUR	free time	hobbies	\N	t
13713	db	2013-07-03	2013-07-03			-10.00	EUR	house	internet	\N	t
13703	db	2013-07-03	2013-07-03			-8.67	EUR	free time	sport	\N	t
13739	db	2013-07-04	2013-07-04			-250.00	EUR	house	rent	\N	t
13730	db	2013-07-04	2013-07-04			-8.93	EUR	living	food	\N	t
13729	db	2013-07-04	2013-07-04			-6.16	EUR	free time	entertainment	\N	t
13765	db	2013-07-05	2013-07-05			-10.00	EUR	finance	costs and fees	\N	t
13758	db	2013-07-05	2013-07-05			-13.61	EUR	living	food	\N	t
13757	db	2013-07-05	2013-07-05			-5.01	EUR	free time	going out	\N	t
13756	db	2013-07-05	2013-07-05			-6.26	EUR	mobility	gas	\N	t
13750	db	2013-07-05	2013-07-05			-20.00	EUR	other	cash	\N	t
13791	db	2013-07-06	2013-07-06			-50.00	EUR	finance	insurance	\N	t
13785	db	2013-07-06	2013-07-06			-3.86	EUR	health	wellness	\N	t
13784	db	2013-07-06	2013-07-06			-6.11	EUR	free time	going out	\N	t
13817	db	2013-07-07	2013-07-07			-63.62	EUR	health	doctor visits	\N	t
13843	db	2013-07-08	2013-07-08			1000.00	EUR	work and training	salary	\N	t
13826	db	2013-07-08	2013-07-08			-2.01	EUR	living	food	\N	t
13852	db	2013-07-09	2013-07-09			-5.30	EUR	free time	hobbies	\N	t
13894	db	2013-07-10	2013-07-10			-31.77	EUR	living	pets	\N	t
13878	db	2013-07-10	2013-07-10			-9.16	EUR	free time	sport	\N	t
13905	db	2013-07-11	2013-07-11			-0.60	EUR	living	food	\N	t
13904	db	2013-07-11	2013-07-11			-0.46	EUR	free time	entertainment	\N	t
13933	db	2013-07-12	2013-07-12			-7.57	EUR	living	food	\N	t
13932	db	2013-07-12	2013-07-12			-4.22	EUR	free time	going out	\N	t
13931	db	2013-07-12	2013-07-12			-4.64	EUR	mobility	gas	\N	t
13925	db	2013-07-12	2013-07-12			-20.00	EUR	other	cash	\N	t
13960	db	2013-07-13	2013-07-13			-3.67	EUR	health	wellness	\N	t
13959	db	2013-07-13	2013-07-13			-19.49	EUR	free time	going out	\N	t
14020	db	2013-07-15	2013-07-15			-34.20	EUR	living	household	\N	t
14001	db	2013-07-15	2013-07-15			-1.24	EUR	living	food	\N	t
14027	db	2013-07-16	2013-07-16			-1.41	EUR	free time	hobbies	\N	t
14053	db	2013-07-17	2013-07-17			-9.16	EUR	free time	sport	\N	t
14080	db	2013-07-18	2013-07-18			-5.40	EUR	living	food	\N	t
14079	db	2013-07-18	2013-07-18			-8.78	EUR	free time	entertainment	\N	t
14108	db	2013-07-19	2013-07-19			-9.95	EUR	living	food	\N	t
14107	db	2013-07-19	2013-07-19			-19.72	EUR	free time	going out	\N	t
14106	db	2013-07-19	2013-07-19			-17.01	EUR	mobility	gas	\N	t
14100	db	2013-07-19	2013-07-19			-20.00	EUR	other	cash	\N	t
14147	db	2013-07-20	2013-07-20			-2.44	EUR	free time	gadgets	\N	t
14146	db	2013-07-20	2013-07-20			-5.45	EUR	living	clothes	\N	t
14135	db	2013-07-20	2013-07-20			-9.80	EUR	health	wellness	\N	t
14134	db	2013-07-20	2013-07-20			-13.75	EUR	free time	going out	\N	t
14176	db	2013-07-22	2013-07-22			-0.55	EUR	living	food	\N	t
14202	db	2013-07-23	2013-07-23			-2.95	EUR	free time	hobbies	\N	t
14228	db	2013-07-24	2013-07-24			-4.84	EUR	free time	sport	\N	t
14255	db	2013-07-25	2013-07-25			-2.08	EUR	living	food	\N	t
14254	db	2013-07-25	2013-07-25			-5.78	EUR	free time	entertainment	\N	t
14283	db	2013-07-26	2013-07-26			-3.89	EUR	living	food	\N	t
14282	db	2013-07-26	2013-07-26			-11.45	EUR	free time	going out	\N	t
14281	db	2013-07-26	2013-07-26			-8.66	EUR	mobility	gas	\N	t
14275	db	2013-07-26	2013-07-26			-20.00	EUR	other	cash	\N	t
14310	db	2013-07-27	2013-07-27			-13.86	EUR	health	wellness	\N	t
14309	db	2013-07-27	2013-07-27			-17.26	EUR	free time	going out	\N	t
14351	db	2013-07-29	2013-07-29			-5.16	EUR	living	food	\N	t
14377	db	2013-07-30	2013-07-30			-0.45	EUR	free time	hobbies	\N	t
14403	db	2013-07-31	2013-07-31			-2.28	EUR	free time	sport	\N	t
14436	db	2013-08-01	2013-08-01			-10.00	EUR	house	phone	\N	t
14430	db	2013-08-01	2013-08-01			-8.44	EUR	living	food	\N	t
14429	db	2013-08-01	2013-08-01			-8.08	EUR	free time	entertainment	\N	t
14462	db	2013-08-02	2013-08-02			-10.00	EUR	house	electricity	\N	t
14458	db	2013-08-02	2013-08-02			-0.55	EUR	living	food	\N	t
14457	db	2013-08-02	2013-08-02			-8.43	EUR	free time	going out	\N	t
14456	db	2013-08-02	2013-08-02			-4.22	EUR	mobility	gas	\N	t
14450	db	2013-08-02	2013-08-02			-20.00	EUR	other	cash	\N	t
14488	db	2013-08-03	2013-08-03			-10.00	EUR	house	internet	\N	t
14485	db	2013-08-03	2013-08-03			-18.24	EUR	health	wellness	\N	t
14484	db	2013-08-03	2013-08-03			-10.90	EUR	free time	going out	\N	t
14514	db	2013-08-04	2013-08-04			-250.00	EUR	house	rent	\N	t
14540	db	2013-08-05	2013-08-05			-10.00	EUR	finance	costs and fees	\N	t
14526	db	2013-08-05	2013-08-05			-5.51	EUR	living	food	\N	t
14566	db	2013-08-06	2013-08-06			-50.00	EUR	finance	insurance	\N	t
14552	db	2013-08-06	2013-08-06			-8.97	EUR	free time	hobbies	\N	t
14592	db	2013-08-07	2013-08-07			-48.08	EUR	health	doctor visits	\N	t
14578	db	2013-08-07	2013-08-07			-3.87	EUR	free time	sport	\N	t
14618	db	2013-08-08	2013-08-08			1000.00	EUR	work and training	salary	\N	t
14605	db	2013-08-08	2013-08-08			-3.01	EUR	living	food	\N	t
14604	db	2013-08-08	2013-08-08			-5.83	EUR	free time	entertainment	\N	t
14633	db	2013-08-09	2013-08-09			-5.92	EUR	living	food	\N	t
14632	db	2013-08-09	2013-08-09			-6.94	EUR	free time	going out	\N	t
14631	db	2013-08-09	2013-08-09			-15.31	EUR	mobility	gas	\N	t
14625	db	2013-08-09	2013-08-09			-20.00	EUR	other	cash	\N	t
14669	db	2013-08-10	2013-08-10			-35.17	EUR	living	pets	\N	t
14660	db	2013-08-10	2013-08-10			-3.78	EUR	health	wellness	\N	t
14659	db	2013-08-10	2013-08-10			-15.55	EUR	free time	going out	\N	t
14701	db	2013-08-12	2013-08-12			-2.20	EUR	living	food	\N	t
14727	db	2013-08-13	2013-08-13			-7.66	EUR	free time	hobbies	\N	t
14753	db	2013-08-14	2013-08-14			-2.71	EUR	free time	sport	\N	t
14795	db	2013-08-15	2013-08-15			-74.11	EUR	living	household	\N	t
14780	db	2013-08-15	2013-08-15			-6.66	EUR	living	food	\N	t
14779	db	2013-08-15	2013-08-15			-8.95	EUR	free time	entertainment	\N	t
14808	db	2013-08-16	2013-08-16			-13.39	EUR	living	food	\N	t
14807	db	2013-08-16	2013-08-16			-13.20	EUR	free time	going out	\N	t
14806	db	2013-08-16	2013-08-16			-18.73	EUR	mobility	gas	\N	t
14800	db	2013-08-16	2013-08-16			-20.00	EUR	other	cash	\N	t
14835	db	2013-08-17	2013-08-17			-7.94	EUR	health	wellness	\N	t
14834	db	2013-08-17	2013-08-17			-18.72	EUR	free time	going out	\N	t
14876	db	2013-08-19	2013-08-19			-6.33	EUR	living	food	\N	t
14922	db	2013-08-20	2013-08-20			-26.59	EUR	free time	gadgets	\N	t
14921	db	2013-08-20	2013-08-20			-14.51	EUR	living	clothes	\N	t
14902	db	2013-08-20	2013-08-20			-8.89	EUR	free time	hobbies	\N	t
14928	db	2013-08-21	2013-08-21			-2.54	EUR	free time	sport	\N	t
14955	db	2013-08-22	2013-08-22			-5.86	EUR	living	food	\N	t
14954	db	2013-08-22	2013-08-22			-2.97	EUR	free time	entertainment	\N	t
14983	db	2013-08-23	2013-08-23			-16.00	EUR	living	food	\N	t
14982	db	2013-08-23	2013-08-23			-0.91	EUR	free time	going out	\N	t
14981	db	2013-08-23	2013-08-23			-12.65	EUR	mobility	gas	\N	t
14975	db	2013-08-23	2013-08-23			-20.00	EUR	other	cash	\N	t
15010	db	2013-08-24	2013-08-24			-0.06	EUR	health	wellness	\N	t
15009	db	2013-08-24	2013-08-24			-8.20	EUR	free time	going out	\N	t
15051	db	2013-08-26	2013-08-26			-4.79	EUR	living	food	\N	t
15077	db	2013-08-27	2013-08-27			-7.60	EUR	free time	hobbies	\N	t
15103	db	2013-08-28	2013-08-28			-2.31	EUR	free time	sport	\N	t
15130	db	2013-08-29	2013-08-29			-6.50	EUR	living	food	\N	t
15129	db	2013-08-29	2013-08-29			-7.10	EUR	free time	entertainment	\N	t
15158	db	2013-08-30	2013-08-30			-14.97	EUR	living	food	\N	t
15157	db	2013-08-30	2013-08-30			-9.52	EUR	free time	going out	\N	t
15156	db	2013-08-30	2013-08-30			-14.95	EUR	mobility	gas	\N	t
15150	db	2013-08-30	2013-08-30			-20.00	EUR	other	cash	\N	t
15185	db	2013-08-31	2013-08-31			-15.79	EUR	health	wellness	\N	t
15184	db	2013-08-31	2013-08-31			-14.19	EUR	free time	going out	\N	t
15211	db	2013-09-01	2013-09-01			-10.00	EUR	house	phone	\N	t
15237	db	2013-09-02	2013-09-02			-10.00	EUR	house	electricity	\N	t
15226	db	2013-09-02	2013-09-02			-8.01	EUR	living	food	\N	t
15263	db	2013-09-03	2013-09-03			-10.00	EUR	house	internet	\N	t
15252	db	2013-09-03	2013-09-03			-7.70	EUR	free time	hobbies	\N	t
15289	db	2013-09-04	2013-09-04			-250.00	EUR	house	rent	\N	t
15278	db	2013-09-04	2013-09-04			-6.66	EUR	free time	sport	\N	t
15315	db	2013-09-05	2013-09-05			-10.00	EUR	finance	costs and fees	\N	t
15305	db	2013-09-05	2013-09-05			-3.60	EUR	living	food	\N	t
15304	db	2013-09-05	2013-09-05			-7.56	EUR	free time	entertainment	\N	t
15341	db	2013-09-06	2013-09-06			-50.00	EUR	finance	insurance	\N	t
15333	db	2013-09-06	2013-09-06			-10.82	EUR	living	food	\N	t
15332	db	2013-09-06	2013-09-06			-3.69	EUR	free time	going out	\N	t
15331	db	2013-09-06	2013-09-06			-3.01	EUR	mobility	gas	\N	t
15325	db	2013-09-06	2013-09-06			-20.00	EUR	other	cash	\N	t
15367	db	2013-09-07	2013-09-07			-25.73	EUR	health	doctor visits	\N	t
15360	db	2013-09-07	2013-09-07			-14.45	EUR	health	wellness	\N	t
15359	db	2013-09-07	2013-09-07			-9.49	EUR	free time	going out	\N	t
15393	db	2013-09-08	2013-09-08			1000.00	EUR	work and training	salary	\N	t
15401	db	2013-09-09	2013-09-09			-1.49	EUR	living	food	\N	t
15444	db	2013-09-10	2013-09-10			-62.50	EUR	living	pets	\N	t
15427	db	2013-09-10	2013-09-10			-5.22	EUR	free time	hobbies	\N	t
15453	db	2013-09-11	2013-09-11			-1.88	EUR	free time	sport	\N	t
15480	db	2013-09-12	2013-09-12			-9.12	EUR	living	food	\N	t
15479	db	2013-09-12	2013-09-12			-8.46	EUR	free time	entertainment	\N	t
15508	db	2013-09-13	2013-09-13			-1.44	EUR	living	food	\N	t
15507	db	2013-09-13	2013-09-13			-2.62	EUR	free time	going out	\N	t
15506	db	2013-09-13	2013-09-13			-3.66	EUR	mobility	gas	\N	t
15500	db	2013-09-13	2013-09-13			-20.00	EUR	other	cash	\N	t
15535	db	2013-09-14	2013-09-14			-10.43	EUR	health	wellness	\N	t
15534	db	2013-09-14	2013-09-14			-17.28	EUR	free time	going out	\N	t
15570	db	2013-09-15	2013-09-15			-46.27	EUR	living	household	\N	t
15576	db	2013-09-16	2013-09-16			-9.24	EUR	living	food	\N	t
15602	db	2013-09-17	2013-09-17			-3.43	EUR	free time	hobbies	\N	t
15628	db	2013-09-18	2013-09-18			-6.10	EUR	free time	sport	\N	t
15655	db	2013-09-19	2013-09-19			-5.98	EUR	living	food	\N	t
15654	db	2013-09-19	2013-09-19			-5.34	EUR	free time	entertainment	\N	t
15697	db	2013-09-20	2013-09-20			-19.50	EUR	free time	gadgets	\N	t
15696	db	2013-09-20	2013-09-20			-29.85	EUR	living	clothes	\N	t
15683	db	2013-09-20	2013-09-20			-16.49	EUR	living	food	\N	t
15682	db	2013-09-20	2013-09-20			-14.86	EUR	free time	going out	\N	t
15681	db	2013-09-20	2013-09-20			-17.60	EUR	mobility	gas	\N	t
15675	db	2013-09-20	2013-09-20			-20.00	EUR	other	cash	\N	t
15710	db	2013-09-21	2013-09-21			-18.57	EUR	health	wellness	\N	t
15709	db	2013-09-21	2013-09-21			-10.57	EUR	free time	going out	\N	t
15751	db	2013-09-23	2013-09-23			-3.65	EUR	living	food	\N	t
15777	db	2013-09-24	2013-09-24			-8.50	EUR	free time	hobbies	\N	t
15803	db	2013-09-25	2013-09-25			-3.57	EUR	free time	sport	\N	t
15830	db	2013-09-26	2013-09-26			-5.04	EUR	living	food	\N	t
15829	db	2013-09-26	2013-09-26			-9.51	EUR	free time	entertainment	\N	t
15858	db	2013-09-27	2013-09-27			-17.62	EUR	living	food	\N	t
15857	db	2013-09-27	2013-09-27			-19.46	EUR	free time	going out	\N	t
15856	db	2013-09-27	2013-09-27			-11.46	EUR	mobility	gas	\N	t
15850	db	2013-09-27	2013-09-27			-20.00	EUR	other	cash	\N	t
15885	db	2013-09-28	2013-09-28			-3.36	EUR	health	wellness	\N	t
15884	db	2013-09-28	2013-09-28			-18.75	EUR	free time	going out	\N	t
15926	db	2013-09-30	2013-09-30			-9.81	EUR	living	food	\N	t
15961	db	2013-10-01	2013-10-01			-10.00	EUR	house	phone	\N	t
15952	db	2013-10-01	2013-10-01			-0.71	EUR	free time	hobbies	\N	t
15987	db	2013-10-02	2013-10-02			-10.00	EUR	house	electricity	\N	t
15978	db	2013-10-02	2013-10-02			-3.30	EUR	free time	sport	\N	t
16013	db	2013-10-03	2013-10-03			-10.00	EUR	house	internet	\N	t
16005	db	2013-10-03	2013-10-03			-5.07	EUR	living	food	\N	t
16004	db	2013-10-03	2013-10-03			-7.80	EUR	free time	entertainment	\N	t
16039	db	2013-10-04	2013-10-04			-250.00	EUR	house	rent	\N	t
16033	db	2013-10-04	2013-10-04			-3.27	EUR	living	food	\N	t
16032	db	2013-10-04	2013-10-04			-6.52	EUR	free time	going out	\N	t
16031	db	2013-10-04	2013-10-04			-19.10	EUR	mobility	gas	\N	t
16025	db	2013-10-04	2013-10-04			-20.00	EUR	other	cash	\N	t
16065	db	2013-10-05	2013-10-05			-10.00	EUR	finance	costs and fees	\N	t
16060	db	2013-10-05	2013-10-05			-7.84	EUR	health	wellness	\N	t
16059	db	2013-10-05	2013-10-05			-14.72	EUR	free time	going out	\N	t
16091	db	2013-10-06	2013-10-06			-50.00	EUR	finance	insurance	\N	t
16117	db	2013-10-07	2013-10-07			-7.69	EUR	health	doctor visits	\N	t
16101	db	2013-10-07	2013-10-07			-7.99	EUR	living	food	\N	t
16143	db	2013-10-08	2013-10-08			1000.00	EUR	work and training	salary	\N	t
16127	db	2013-10-08	2013-10-08			-4.75	EUR	free time	hobbies	\N	t
16153	db	2013-10-09	2013-10-09			-6.34	EUR	free time	sport	\N	t
16194	db	2013-10-10	2013-10-10			-33.42	EUR	living	pets	\N	t
16180	db	2013-10-10	2013-10-10			-9.92	EUR	living	food	\N	t
16179	db	2013-10-10	2013-10-10			-3.65	EUR	free time	entertainment	\N	t
16208	db	2013-10-11	2013-10-11			-13.58	EUR	living	food	\N	t
16207	db	2013-10-11	2013-10-11			-0.93	EUR	free time	going out	\N	t
16206	db	2013-10-11	2013-10-11			-17.64	EUR	mobility	gas	\N	t
16200	db	2013-10-11	2013-10-11			-20.00	EUR	other	cash	\N	t
16235	db	2013-10-12	2013-10-12			-11.34	EUR	health	wellness	\N	t
16234	db	2013-10-12	2013-10-12			-6.99	EUR	free time	going out	\N	t
16276	db	2013-10-14	2013-10-14			-8.84	EUR	living	food	\N	t
16320	db	2013-10-15	2013-10-15			-3.89	EUR	living	household	\N	t
16302	db	2013-10-15	2013-10-15			-4.72	EUR	free time	hobbies	\N	t
16328	db	2013-10-16	2013-10-16			-9.82	EUR	free time	sport	\N	t
16355	db	2013-10-17	2013-10-17			-9.95	EUR	living	food	\N	t
16354	db	2013-10-17	2013-10-17			-7.83	EUR	free time	entertainment	\N	t
16383	db	2013-10-18	2013-10-18			-17.25	EUR	living	food	\N	t
16382	db	2013-10-18	2013-10-18			-13.47	EUR	free time	going out	\N	t
16381	db	2013-10-18	2013-10-18			-6.14	EUR	mobility	gas	\N	t
16375	db	2013-10-18	2013-10-18			-20.00	EUR	other	cash	\N	t
16410	db	2013-10-19	2013-10-19			-1.42	EUR	health	wellness	\N	t
16409	db	2013-10-19	2013-10-19			-18.73	EUR	free time	going out	\N	t
16447	db	2013-10-20	2013-10-20			-6.78	EUR	free time	gadgets	\N	t
16446	db	2013-10-20	2013-10-20			-2.97	EUR	living	clothes	\N	t
16451	db	2013-10-21	2013-10-21			-9.91	EUR	living	food	\N	t
16477	db	2013-10-22	2013-10-22			-4.08	EUR	free time	hobbies	\N	t
16503	db	2013-10-23	2013-10-23			-8.82	EUR	free time	sport	\N	t
16530	db	2013-10-24	2013-10-24			-4.73	EUR	living	food	\N	t
16529	db	2013-10-24	2013-10-24			-0.23	EUR	free time	entertainment	\N	t
16558	db	2013-10-25	2013-10-25			-3.94	EUR	living	food	\N	t
16557	db	2013-10-25	2013-10-25			-7.26	EUR	free time	going out	\N	t
16556	db	2013-10-25	2013-10-25			-13.53	EUR	mobility	gas	\N	t
16550	db	2013-10-25	2013-10-25			-20.00	EUR	other	cash	\N	t
16585	db	2013-10-26	2013-10-26			-0.33	EUR	health	wellness	\N	t
16584	db	2013-10-26	2013-10-26			-3.85	EUR	free time	going out	\N	t
16626	db	2013-10-28	2013-10-28			-5.49	EUR	living	food	\N	t
16652	db	2013-10-29	2013-10-29			-5.32	EUR	free time	hobbies	\N	t
16678	db	2013-10-30	2013-10-30			-1.25	EUR	free time	sport	\N	t
16705	db	2013-10-31	2013-10-31			-0.85	EUR	living	food	\N	t
16704	db	2013-10-31	2013-10-31			-0.33	EUR	free time	entertainment	\N	t
16736	db	2013-11-01	2013-11-01			-10.00	EUR	house	phone	\N	t
16733	db	2013-11-01	2013-11-01			-6.68	EUR	living	food	\N	t
16732	db	2013-11-01	2013-11-01			-1.21	EUR	free time	going out	\N	t
16731	db	2013-11-01	2013-11-01			-2.63	EUR	mobility	gas	\N	t
16725	db	2013-11-01	2013-11-01			-20.00	EUR	other	cash	\N	t
16762	db	2013-11-02	2013-11-02			-10.00	EUR	house	electricity	\N	t
16760	db	2013-11-02	2013-11-02			-15.34	EUR	health	wellness	\N	t
16759	db	2013-11-02	2013-11-02			-16.77	EUR	free time	going out	\N	t
16788	db	2013-11-03	2013-11-03			-10.00	EUR	house	internet	\N	t
16814	db	2013-11-04	2013-11-04			-250.00	EUR	house	rent	\N	t
16801	db	2013-11-04	2013-11-04			-9.27	EUR	living	food	\N	t
16840	db	2013-11-05	2013-11-05			-10.00	EUR	finance	costs and fees	\N	t
16827	db	2013-11-05	2013-11-05			-4.07	EUR	free time	hobbies	\N	t
16866	db	2013-11-06	2013-11-06			-50.00	EUR	finance	insurance	\N	t
16853	db	2013-11-06	2013-11-06			-1.89	EUR	free time	sport	\N	t
16892	db	2013-11-07	2013-11-07			-17.28	EUR	health	doctor visits	\N	t
16880	db	2013-11-07	2013-11-07			-6.98	EUR	living	food	\N	t
16879	db	2013-11-07	2013-11-07			-1.49	EUR	free time	entertainment	\N	t
16918	db	2013-11-08	2013-11-08			1000.00	EUR	work and training	salary	\N	t
16908	db	2013-11-08	2013-11-08			-16.95	EUR	living	food	\N	t
16907	db	2013-11-08	2013-11-08			-6.84	EUR	free time	going out	\N	t
16906	db	2013-11-08	2013-11-08			-11.92	EUR	mobility	gas	\N	t
16900	db	2013-11-08	2013-11-08			-20.00	EUR	other	cash	\N	t
16935	db	2013-11-09	2013-11-09			-8.38	EUR	health	wellness	\N	t
16934	db	2013-11-09	2013-11-09			-8.72	EUR	free time	going out	\N	t
16969	db	2013-11-10	2013-11-10			-34.14	EUR	living	pets	\N	t
16976	db	2013-11-11	2013-11-11			-1.25	EUR	living	food	\N	t
17002	db	2013-11-12	2013-11-12			-3.61	EUR	free time	hobbies	\N	t
17028	db	2013-11-13	2013-11-13			-5.06	EUR	free time	sport	\N	t
17055	db	2013-11-14	2013-11-14			-0.07	EUR	living	food	\N	t
17054	db	2013-11-14	2013-11-14			-8.16	EUR	free time	entertainment	\N	t
17095	db	2013-11-15	2013-11-15			-46.54	EUR	living	household	\N	t
17083	db	2013-11-15	2013-11-15			-9.88	EUR	living	food	\N	t
17082	db	2013-11-15	2013-11-15			-19.02	EUR	free time	going out	\N	t
17081	db	2013-11-15	2013-11-15			-1.29	EUR	mobility	gas	\N	t
17075	db	2013-11-15	2013-11-15			-20.00	EUR	other	cash	\N	t
17110	db	2013-11-16	2013-11-16			-11.25	EUR	health	wellness	\N	t
17109	db	2013-11-16	2013-11-16			-7.71	EUR	free time	going out	\N	t
17151	db	2013-11-18	2013-11-18			-7.93	EUR	living	food	\N	t
17177	db	2013-11-19	2013-11-19			-7.53	EUR	free time	hobbies	\N	t
17222	db	2013-11-20	2013-11-20			-18.32	EUR	free time	gadgets	\N	t
17221	db	2013-11-20	2013-11-20			-78.78	EUR	living	clothes	\N	t
17203	db	2013-11-20	2013-11-20			-8.81	EUR	free time	sport	\N	t
17230	db	2013-11-21	2013-11-21			-1.82	EUR	living	food	\N	t
17229	db	2013-11-21	2013-11-21			-5.98	EUR	free time	entertainment	\N	t
17258	db	2013-11-22	2013-11-22			-9.11	EUR	living	food	\N	t
17257	db	2013-11-22	2013-11-22			-7.00	EUR	free time	going out	\N	t
17256	db	2013-11-22	2013-11-22			-2.96	EUR	mobility	gas	\N	t
17250	db	2013-11-22	2013-11-22			-20.00	EUR	other	cash	\N	t
17285	db	2013-11-23	2013-11-23			-13.71	EUR	health	wellness	\N	t
17284	db	2013-11-23	2013-11-23			-17.41	EUR	free time	going out	\N	t
17326	db	2013-11-25	2013-11-25			-5.10	EUR	living	food	\N	t
17352	db	2013-11-26	2013-11-26			-7.78	EUR	free time	hobbies	\N	t
17378	db	2013-11-27	2013-11-27			-1.68	EUR	free time	sport	\N	t
17405	db	2013-11-28	2013-11-28			-9.78	EUR	living	food	\N	t
17404	db	2013-11-28	2013-11-28			-2.40	EUR	free time	entertainment	\N	t
17433	db	2013-11-29	2013-11-29			-2.23	EUR	living	food	\N	t
17432	db	2013-11-29	2013-11-29			-16.85	EUR	free time	going out	\N	t
17431	db	2013-11-29	2013-11-29			-2.10	EUR	mobility	gas	\N	t
17425	db	2013-11-29	2013-11-29			-20.00	EUR	other	cash	\N	t
17460	db	2013-11-30	2013-11-30			-11.05	EUR	health	wellness	\N	t
17459	db	2013-11-30	2013-11-30			-16.25	EUR	free time	going out	\N	t
17486	db	2013-12-01	2013-12-01			-10.00	EUR	house	phone	\N	t
17512	db	2013-12-02	2013-12-02			-10.00	EUR	house	electricity	\N	t
17501	db	2013-12-02	2013-12-02			-9.28	EUR	living	food	\N	t
17538	db	2013-12-03	2013-12-03			-10.00	EUR	house	internet	\N	t
17527	db	2013-12-03	2013-12-03			-5.46	EUR	free time	hobbies	\N	t
17564	db	2013-12-04	2013-12-04			-250.00	EUR	house	rent	\N	t
17553	db	2013-12-04	2013-12-04			-4.88	EUR	free time	sport	\N	t
17590	db	2013-12-05	2013-12-05			-10.00	EUR	finance	costs and fees	\N	t
17580	db	2013-12-05	2013-12-05			-0.18	EUR	living	food	\N	t
17579	db	2013-12-05	2013-12-05			-0.71	EUR	free time	entertainment	\N	t
17616	db	2013-12-06	2013-12-06			-50.00	EUR	finance	insurance	\N	t
17608	db	2013-12-06	2013-12-06			-6.90	EUR	living	food	\N	t
17607	db	2013-12-06	2013-12-06			-6.87	EUR	free time	going out	\N	t
17606	db	2013-12-06	2013-12-06			-1.20	EUR	mobility	gas	\N	t
17600	db	2013-12-06	2013-12-06			-20.00	EUR	other	cash	\N	t
17642	db	2013-12-07	2013-12-07			-56.31	EUR	health	doctor visits	\N	t
17635	db	2013-12-07	2013-12-07			-11.91	EUR	health	wellness	\N	t
17634	db	2013-12-07	2013-12-07			-3.06	EUR	free time	going out	\N	t
17668	db	2013-12-08	2013-12-08			1000.00	EUR	work and training	salary	\N	t
17676	db	2013-12-09	2013-12-09			-6.14	EUR	living	food	\N	t
17719	db	2013-12-10	2013-12-10			-78.00	EUR	living	pets	\N	t
17702	db	2013-12-10	2013-12-10			-5.50	EUR	free time	hobbies	\N	t
17728	db	2013-12-11	2013-12-11			-5.03	EUR	free time	sport	\N	t
17755	db	2013-12-12	2013-12-12			-7.39	EUR	living	food	\N	t
17754	db	2013-12-12	2013-12-12			-8.90	EUR	free time	entertainment	\N	t
17783	db	2013-12-13	2013-12-13			-0.02	EUR	living	food	\N	t
17782	db	2013-12-13	2013-12-13			-18.19	EUR	free time	going out	\N	t
17781	db	2013-12-13	2013-12-13			-1.39	EUR	mobility	gas	\N	t
17775	db	2013-12-13	2013-12-13			-20.00	EUR	other	cash	\N	t
17810	db	2013-12-14	2013-12-14			-6.75	EUR	health	wellness	\N	t
17809	db	2013-12-14	2013-12-14			-19.47	EUR	free time	going out	\N	t
17845	db	2013-12-15	2013-12-15			-60.62	EUR	living	household	\N	t
17851	db	2013-12-16	2013-12-16			-6.69	EUR	living	food	\N	t
17877	db	2013-12-17	2013-12-17			-1.49	EUR	free time	hobbies	\N	t
17903	db	2013-12-18	2013-12-18			-9.12	EUR	free time	sport	\N	t
17930	db	2013-12-19	2013-12-19			-3.22	EUR	living	food	\N	t
17929	db	2013-12-19	2013-12-19			-1.81	EUR	free time	entertainment	\N	t
17972	db	2013-12-20	2013-12-20			-34.95	EUR	free time	gadgets	\N	t
17971	db	2013-12-20	2013-12-20			-55.71	EUR	living	clothes	\N	t
17958	db	2013-12-20	2013-12-20			-4.89	EUR	living	food	\N	t
17957	db	2013-12-20	2013-12-20			-3.83	EUR	free time	going out	\N	t
17956	db	2013-12-20	2013-12-20			-16.66	EUR	mobility	gas	\N	t
17950	db	2013-12-20	2013-12-20			-20.00	EUR	other	cash	\N	t
17999	db	2013-12-21	2013-12-21			-70.56	EUR	free time	presents	\N	t
17985	db	2013-12-21	2013-12-21			-2.75	EUR	health	wellness	\N	t
17984	db	2013-12-21	2013-12-21			-0.03	EUR	free time	going out	\N	t
18026	db	2013-12-23	2013-12-23			-0.03	EUR	living	food	\N	t
18052	db	2013-12-24	2013-12-24			-7.21	EUR	free time	hobbies	\N	t
18078	db	2013-12-25	2013-12-25			-6.50	EUR	free time	sport	\N	t
18105	db	2013-12-26	2013-12-26			-5.51	EUR	living	food	\N	t
18104	db	2013-12-26	2013-12-26			-1.10	EUR	free time	entertainment	\N	t
18133	db	2013-12-27	2013-12-27			-1.31	EUR	living	food	\N	t
18132	db	2013-12-27	2013-12-27			-14.41	EUR	free time	going out	\N	t
18131	db	2013-12-27	2013-12-27			-8.49	EUR	mobility	gas	\N	t
18125	db	2013-12-27	2013-12-27			-20.00	EUR	other	cash	\N	t
18160	db	2013-12-28	2013-12-28			-0.68	EUR	health	wellness	\N	t
18159	db	2013-12-28	2013-12-28			-8.93	EUR	free time	going out	\N	t
18201	db	2013-12-30	2013-12-30			-2.08	EUR	living	food	\N	t
18227	db	2013-12-31	2013-12-31			-3.06	EUR	free time	hobbies	\N	t
18261	db	2014-01-01	2014-01-01			-10.00	EUR	house	phone	\N	t
18253	db	2014-01-01	2014-01-01			-7.95	EUR	free time	sport	\N	t
18287	db	2014-01-02	2014-01-02			-10.00	EUR	house	electricity	\N	t
18280	db	2014-01-02	2014-01-02			-9.79	EUR	living	food	\N	t
18279	db	2014-01-02	2014-01-02			-6.24	EUR	free time	entertainment	\N	t
18313	db	2014-01-03	2014-01-03			-10.00	EUR	house	internet	\N	t
18308	db	2014-01-03	2014-01-03			-11.44	EUR	living	food	\N	t
18307	db	2014-01-03	2014-01-03			-8.35	EUR	free time	going out	\N	t
18306	db	2014-01-03	2014-01-03			-12.54	EUR	mobility	gas	\N	t
18300	db	2014-01-03	2014-01-03			-20.00	EUR	other	cash	\N	t
18339	db	2014-01-04	2014-01-04			-250.00	EUR	house	rent	\N	t
18335	db	2014-01-04	2014-01-04			-11.73	EUR	health	wellness	\N	t
18334	db	2014-01-04	2014-01-04			-17.29	EUR	free time	going out	\N	t
18365	db	2014-01-05	2014-01-05			-10.00	EUR	finance	costs and fees	\N	t
18391	db	2014-01-06	2014-01-06			-50.00	EUR	finance	insurance	\N	t
18376	db	2014-01-06	2014-01-06			-5.92	EUR	living	food	\N	t
18417	db	2014-01-07	2014-01-07			-4.70	EUR	health	doctor visits	\N	t
18402	db	2014-01-07	2014-01-07			-9.72	EUR	free time	hobbies	\N	t
18443	db	2014-01-08	2014-01-08			1000.00	EUR	work and training	salary	\N	t
18428	db	2014-01-08	2014-01-08			-9.98	EUR	free time	sport	\N	t
18455	db	2014-01-09	2014-01-09			-7.87	EUR	living	food	\N	t
18454	db	2014-01-09	2014-01-09			-3.66	EUR	free time	entertainment	\N	t
18494	db	2014-01-10	2014-01-10			-43.71	EUR	living	pets	\N	t
18483	db	2014-01-10	2014-01-10			-18.06	EUR	living	food	\N	t
18482	db	2014-01-10	2014-01-10			-10.71	EUR	free time	going out	\N	t
18481	db	2014-01-10	2014-01-10			-18.57	EUR	mobility	gas	\N	t
18475	db	2014-01-10	2014-01-10			-20.00	EUR	other	cash	\N	t
18510	db	2014-01-11	2014-01-11			-9.18	EUR	health	wellness	\N	t
18509	db	2014-01-11	2014-01-11			-12.46	EUR	free time	going out	\N	t
18551	db	2014-01-13	2014-01-13			-0.42	EUR	living	food	\N	t
18577	db	2014-01-14	2014-01-14			-0.19	EUR	free time	hobbies	\N	t
18620	db	2014-01-15	2014-01-15			-48.32	EUR	living	household	\N	t
18603	db	2014-01-15	2014-01-15			-7.86	EUR	free time	sport	\N	t
18630	db	2014-01-16	2014-01-16			-1.41	EUR	living	food	\N	t
18629	db	2014-01-16	2014-01-16			-9.53	EUR	free time	entertainment	\N	t
18658	db	2014-01-17	2014-01-17			-11.12	EUR	living	food	\N	t
18657	db	2014-01-17	2014-01-17			-13.64	EUR	free time	going out	\N	t
18656	db	2014-01-17	2014-01-17			-12.24	EUR	mobility	gas	\N	t
18650	db	2014-01-17	2014-01-17			-20.00	EUR	other	cash	\N	t
18685	db	2014-01-18	2014-01-18			-9.57	EUR	health	wellness	\N	t
18684	db	2014-01-18	2014-01-18			-14.37	EUR	free time	going out	\N	t
18747	db	2014-01-20	2014-01-20			-64.10	EUR	free time	gadgets	\N	t
18746	db	2014-01-20	2014-01-20			-10.57	EUR	living	clothes	\N	t
18726	db	2014-01-20	2014-01-20			-6.25	EUR	living	food	\N	t
18752	db	2014-01-21	2014-01-21			-9.10	EUR	free time	hobbies	\N	t
18778	db	2014-01-22	2014-01-22			-1.82	EUR	free time	sport	\N	t
18805	db	2014-01-23	2014-01-23			-4.30	EUR	living	food	\N	t
18804	db	2014-01-23	2014-01-23			-4.06	EUR	free time	entertainment	\N	t
18833	db	2014-01-24	2014-01-24			-4.10	EUR	living	food	\N	t
18832	db	2014-01-24	2014-01-24			-4.50	EUR	free time	going out	\N	t
18831	db	2014-01-24	2014-01-24			-4.44	EUR	mobility	gas	\N	t
18825	db	2014-01-24	2014-01-24			-20.00	EUR	other	cash	\N	t
18860	db	2014-01-25	2014-01-25			-9.74	EUR	health	wellness	\N	t
18859	db	2014-01-25	2014-01-25			-8.43	EUR	free time	going out	\N	t
18901	db	2014-01-27	2014-01-27			-2.48	EUR	living	food	\N	t
18927	db	2014-01-28	2014-01-28			-7.10	EUR	free time	hobbies	\N	t
18953	db	2014-01-29	2014-01-29			-1.94	EUR	free time	sport	\N	t
18980	db	2014-01-30	2014-01-30			-3.65	EUR	living	food	\N	t
18979	db	2014-01-30	2014-01-30			-1.82	EUR	free time	entertainment	\N	t
19008	db	2014-01-31	2014-01-31			-4.90	EUR	living	food	\N	t
19007	db	2014-01-31	2014-01-31			-3.62	EUR	free time	going out	\N	t
19006	db	2014-01-31	2014-01-31			-3.97	EUR	mobility	gas	\N	t
19000	db	2014-01-31	2014-01-31			-20.00	EUR	other	cash	\N	t
19036	db	2014-02-01	2014-02-01			-10.00	EUR	house	phone	\N	t
19035	db	2014-02-01	2014-02-01			-3.24	EUR	health	wellness	\N	t
19034	db	2014-02-01	2014-02-01			-14.13	EUR	free time	going out	\N	t
19062	db	2014-02-02	2014-02-02			-10.00	EUR	house	electricity	\N	t
19088	db	2014-02-03	2014-02-03			-10.00	EUR	house	internet	\N	t
19076	db	2014-02-03	2014-02-03			-2.78	EUR	living	food	\N	t
19114	db	2014-02-04	2014-02-04			-250.00	EUR	house	rent	\N	t
19102	db	2014-02-04	2014-02-04			-0.65	EUR	free time	hobbies	\N	t
19140	db	2014-02-05	2014-02-05			-10.00	EUR	finance	costs and fees	\N	t
19128	db	2014-02-05	2014-02-05			-4.77	EUR	free time	sport	\N	t
19166	db	2014-02-06	2014-02-06			-50.00	EUR	finance	insurance	\N	t
19155	db	2014-02-06	2014-02-06			-8.64	EUR	living	food	\N	t
19154	db	2014-02-06	2014-02-06			-6.14	EUR	free time	entertainment	\N	t
19192	db	2014-02-07	2014-02-07			-40.55	EUR	health	doctor visits	\N	t
19183	db	2014-02-07	2014-02-07			-9.26	EUR	living	food	\N	t
19182	db	2014-02-07	2014-02-07			-2.26	EUR	free time	going out	\N	t
19181	db	2014-02-07	2014-02-07			-6.06	EUR	mobility	gas	\N	t
19175	db	2014-02-07	2014-02-07			-20.00	EUR	other	cash	\N	t
19218	db	2014-02-08	2014-02-08			1000.00	EUR	work and training	salary	\N	t
19210	db	2014-02-08	2014-02-08			-18.28	EUR	health	wellness	\N	t
19209	db	2014-02-08	2014-02-08			-7.09	EUR	free time	going out	\N	t
19269	db	2014-02-10	2014-02-10			-26.96	EUR	living	pets	\N	t
19251	db	2014-02-10	2014-02-10			-8.22	EUR	living	food	\N	t
19277	db	2014-02-11	2014-02-11			-6.88	EUR	free time	hobbies	\N	t
19303	db	2014-02-12	2014-02-12			-2.13	EUR	free time	sport	\N	t
19330	db	2014-02-13	2014-02-13			-8.75	EUR	living	food	\N	t
19329	db	2014-02-13	2014-02-13			-2.20	EUR	free time	entertainment	\N	t
19358	db	2014-02-14	2014-02-14			-15.69	EUR	living	food	\N	t
19357	db	2014-02-14	2014-02-14			-14.09	EUR	free time	going out	\N	t
19356	db	2014-02-14	2014-02-14			-4.87	EUR	mobility	gas	\N	t
19350	db	2014-02-14	2014-02-14			-20.00	EUR	other	cash	\N	t
19395	db	2014-02-15	2014-02-15			-62.26	EUR	living	household	\N	t
19385	db	2014-02-15	2014-02-15			-11.95	EUR	health	wellness	\N	t
19384	db	2014-02-15	2014-02-15			-14.75	EUR	free time	going out	\N	t
19426	db	2014-02-17	2014-02-17			-5.81	EUR	living	food	\N	t
19452	db	2014-02-18	2014-02-18			-2.45	EUR	free time	hobbies	\N	t
19478	db	2014-02-19	2014-02-19			-5.89	EUR	free time	sport	\N	t
19522	db	2014-02-20	2014-02-20			-55.09	EUR	free time	gadgets	\N	t
19521	db	2014-02-20	2014-02-20			-10.41	EUR	living	clothes	\N	t
19505	db	2014-02-20	2014-02-20			-4.80	EUR	living	food	\N	t
19504	db	2014-02-20	2014-02-20			-8.08	EUR	free time	entertainment	\N	t
19533	db	2014-02-21	2014-02-21			-9.81	EUR	living	food	\N	t
19532	db	2014-02-21	2014-02-21			-2.12	EUR	free time	going out	\N	t
19531	db	2014-02-21	2014-02-21			-3.28	EUR	mobility	gas	\N	t
19525	db	2014-02-21	2014-02-21			-20.00	EUR	other	cash	\N	t
19560	db	2014-02-22	2014-02-22			-7.33	EUR	health	wellness	\N	t
19559	db	2014-02-22	2014-02-22			-9.16	EUR	free time	going out	\N	t
19601	db	2014-02-24	2014-02-24			-6.53	EUR	living	food	\N	t
19627	db	2014-02-25	2014-02-25			-7.00	EUR	free time	hobbies	\N	t
19653	db	2014-02-26	2014-02-26			-0.78	EUR	free time	sport	\N	t
19680	db	2014-02-27	2014-02-27			-6.17	EUR	living	food	\N	t
19679	db	2014-02-27	2014-02-27			-1.81	EUR	free time	entertainment	\N	t
19708	db	2014-02-28	2014-02-28			-13.28	EUR	living	food	\N	t
19707	db	2014-02-28	2014-02-28			-1.34	EUR	free time	going out	\N	t
19706	db	2014-02-28	2014-02-28			-15.78	EUR	mobility	gas	\N	t
19700	db	2014-02-28	2014-02-28			-20.00	EUR	other	cash	\N	t
19736	db	2014-03-01	2014-03-01			-10.00	EUR	house	phone	\N	t
19735	db	2014-03-01	2014-03-01			-14.69	EUR	health	wellness	\N	t
19734	db	2014-03-01	2014-03-01			-15.42	EUR	free time	going out	\N	t
19762	db	2014-03-02	2014-03-02			-10.00	EUR	house	electricity	\N	t
19788	db	2014-03-03	2014-03-03			-10.00	EUR	house	internet	\N	t
19776	db	2014-03-03	2014-03-03			-9.95	EUR	living	food	\N	t
19814	db	2014-03-04	2014-03-04			-250.00	EUR	house	rent	\N	t
19802	db	2014-03-04	2014-03-04			-1.32	EUR	free time	hobbies	\N	t
19840	db	2014-03-05	2014-03-05			-10.00	EUR	finance	costs and fees	\N	t
19828	db	2014-03-05	2014-03-05			-0.48	EUR	free time	sport	\N	t
19866	db	2014-03-06	2014-03-06			-50.00	EUR	finance	insurance	\N	t
19855	db	2014-03-06	2014-03-06			-2.02	EUR	living	food	\N	t
19854	db	2014-03-06	2014-03-06			-3.47	EUR	free time	entertainment	\N	t
19892	db	2014-03-07	2014-03-07			-28.82	EUR	health	doctor visits	\N	t
19883	db	2014-03-07	2014-03-07			-19.21	EUR	living	food	\N	t
19882	db	2014-03-07	2014-03-07			-6.58	EUR	free time	going out	\N	t
19881	db	2014-03-07	2014-03-07			-15.33	EUR	mobility	gas	\N	t
19875	db	2014-03-07	2014-03-07			-20.00	EUR	other	cash	\N	t
19918	db	2014-03-08	2014-03-08			1000.00	EUR	work and training	salary	\N	t
19910	db	2014-03-08	2014-03-08			-10.81	EUR	health	wellness	\N	t
19909	db	2014-03-08	2014-03-08			-2.34	EUR	free time	going out	\N	t
19969	db	2014-03-10	2014-03-10			-32.88	EUR	living	pets	\N	t
19951	db	2014-03-10	2014-03-10			-9.29	EUR	living	food	\N	t
19977	db	2014-03-11	2014-03-11			-0.71	EUR	free time	hobbies	\N	t
20003	db	2014-03-12	2014-03-12			-8.59	EUR	free time	sport	\N	t
20030	db	2014-03-13	2014-03-13			-2.12	EUR	living	food	\N	t
20029	db	2014-03-13	2014-03-13			-9.95	EUR	free time	entertainment	\N	t
20058	db	2014-03-14	2014-03-14			-19.90	EUR	living	food	\N	t
20057	db	2014-03-14	2014-03-14			-5.60	EUR	free time	going out	\N	t
20056	db	2014-03-14	2014-03-14			-18.83	EUR	mobility	gas	\N	t
20050	db	2014-03-14	2014-03-14			-20.00	EUR	other	cash	\N	t
20095	db	2014-03-15	2014-03-15			-22.96	EUR	living	household	\N	t
20085	db	2014-03-15	2014-03-15			-4.58	EUR	health	wellness	\N	t
20084	db	2014-03-15	2014-03-15			-11.30	EUR	free time	going out	\N	t
20126	db	2014-03-17	2014-03-17			-9.59	EUR	living	food	\N	t
20152	db	2014-03-18	2014-03-18			-1.92	EUR	free time	hobbies	\N	t
20178	db	2014-03-19	2014-03-19			-2.36	EUR	free time	sport	\N	t
20222	db	2014-03-20	2014-03-20			-13.93	EUR	free time	gadgets	\N	t
20221	db	2014-03-20	2014-03-20			-45.59	EUR	living	clothes	\N	t
20205	db	2014-03-20	2014-03-20			-6.18	EUR	living	food	\N	t
20204	db	2014-03-20	2014-03-20			-8.47	EUR	free time	entertainment	\N	t
20233	db	2014-03-21	2014-03-21			-10.46	EUR	living	food	\N	t
20232	db	2014-03-21	2014-03-21			-10.80	EUR	free time	going out	\N	t
20231	db	2014-03-21	2014-03-21			-10.50	EUR	mobility	gas	\N	t
20225	db	2014-03-21	2014-03-21			-20.00	EUR	other	cash	\N	t
20260	db	2014-03-22	2014-03-22			-1.35	EUR	health	wellness	\N	t
20259	db	2014-03-22	2014-03-22			-12.61	EUR	free time	going out	\N	t
20301	db	2014-03-24	2014-03-24			-5.68	EUR	living	food	\N	t
20327	db	2014-03-25	2014-03-25			-3.28	EUR	free time	hobbies	\N	t
20353	db	2014-03-26	2014-03-26			-2.20	EUR	free time	sport	\N	t
20380	db	2014-03-27	2014-03-27			-0.34	EUR	living	food	\N	t
20379	db	2014-03-27	2014-03-27			-3.99	EUR	free time	entertainment	\N	t
20408	db	2014-03-28	2014-03-28			-12.60	EUR	living	food	\N	t
20407	db	2014-03-28	2014-03-28			-1.76	EUR	free time	going out	\N	t
20406	db	2014-03-28	2014-03-28			-3.21	EUR	mobility	gas	\N	t
20400	db	2014-03-28	2014-03-28			-20.00	EUR	other	cash	\N	t
20435	db	2014-03-29	2014-03-29			-4.81	EUR	health	wellness	\N	t
20434	db	2014-03-29	2014-03-29			-5.10	EUR	free time	going out	\N	t
20476	db	2014-03-31	2014-03-31			-4.54	EUR	living	food	\N	t
20511	db	2014-04-01	2014-04-01			-10.00	EUR	house	phone	\N	t
20502	db	2014-04-01	2014-04-01			-3.22	EUR	free time	hobbies	\N	t
20537	db	2014-04-02	2014-04-02			-10.00	EUR	house	electricity	\N	t
20528	db	2014-04-02	2014-04-02			-1.49	EUR	free time	sport	\N	t
20563	db	2014-04-03	2014-04-03			-10.00	EUR	house	internet	\N	t
20555	db	2014-04-03	2014-04-03			-7.28	EUR	living	food	\N	t
20554	db	2014-04-03	2014-04-03			-0.80	EUR	free time	entertainment	\N	t
20589	db	2014-04-04	2014-04-04			-250.00	EUR	house	rent	\N	t
20583	db	2014-04-04	2014-04-04			-16.69	EUR	living	food	\N	t
20582	db	2014-04-04	2014-04-04			-8.24	EUR	free time	going out	\N	t
20581	db	2014-04-04	2014-04-04			-19.24	EUR	mobility	gas	\N	t
20575	db	2014-04-04	2014-04-04			-20.00	EUR	other	cash	\N	t
20615	db	2014-04-05	2014-04-05			-10.00	EUR	finance	costs and fees	\N	t
20610	db	2014-04-05	2014-04-05			-6.43	EUR	health	wellness	\N	t
20609	db	2014-04-05	2014-04-05			-18.04	EUR	free time	going out	\N	t
20641	db	2014-04-06	2014-04-06			-50.00	EUR	finance	insurance	\N	t
20667	db	2014-04-07	2014-04-07			-87.32	EUR	health	doctor visits	\N	t
20651	db	2014-04-07	2014-04-07			-6.13	EUR	living	food	\N	t
20693	db	2014-04-08	2014-04-08			1000.00	EUR	work and training	salary	\N	t
20677	db	2014-04-08	2014-04-08			-7.57	EUR	free time	hobbies	\N	t
20703	db	2014-04-09	2014-04-09			-1.32	EUR	free time	sport	\N	t
20744	db	2014-04-10	2014-04-10			-14.85	EUR	living	pets	\N	t
20730	db	2014-04-10	2014-04-10			-3.22	EUR	living	food	\N	t
20729	db	2014-04-10	2014-04-10			-6.94	EUR	free time	entertainment	\N	t
20758	db	2014-04-11	2014-04-11			-10.74	EUR	living	food	\N	t
20757	db	2014-04-11	2014-04-11			-17.36	EUR	free time	going out	\N	t
20756	db	2014-04-11	2014-04-11			-6.22	EUR	mobility	gas	\N	t
20750	db	2014-04-11	2014-04-11			-20.00	EUR	other	cash	\N	t
20785	db	2014-04-12	2014-04-12			-15.41	EUR	health	wellness	\N	t
20784	db	2014-04-12	2014-04-12			-6.90	EUR	free time	going out	\N	t
20826	db	2014-04-14	2014-04-14			-5.99	EUR	living	food	\N	t
20870	db	2014-04-15	2014-04-15			-51.00	EUR	living	household	\N	t
20852	db	2014-04-15	2014-04-15			-1.56	EUR	free time	hobbies	\N	t
20878	db	2014-04-16	2014-04-16			-7.26	EUR	free time	sport	\N	t
20905	db	2014-04-17	2014-04-17			-6.30	EUR	living	food	\N	t
20904	db	2014-04-17	2014-04-17			-3.87	EUR	free time	entertainment	\N	t
20933	db	2014-04-18	2014-04-18			-7.54	EUR	living	food	\N	t
20932	db	2014-04-18	2014-04-18			-5.35	EUR	free time	going out	\N	t
20931	db	2014-04-18	2014-04-18			-10.81	EUR	mobility	gas	\N	t
20925	db	2014-04-18	2014-04-18			-20.00	EUR	other	cash	\N	t
20960	db	2014-04-19	2014-04-19			-2.16	EUR	health	wellness	\N	t
20959	db	2014-04-19	2014-04-19			-18.19	EUR	free time	going out	\N	t
20997	db	2014-04-20	2014-04-20			-31.14	EUR	free time	gadgets	\N	t
20996	db	2014-04-20	2014-04-20			-72.82	EUR	living	clothes	\N	t
21001	db	2014-04-21	2014-04-21			-2.60	EUR	living	food	\N	t
21027	db	2014-04-22	2014-04-22			-5.85	EUR	free time	hobbies	\N	t
21053	db	2014-04-23	2014-04-23			-7.54	EUR	free time	sport	\N	t
21080	db	2014-04-24	2014-04-24			-0.34	EUR	living	food	\N	t
21079	db	2014-04-24	2014-04-24			-8.19	EUR	free time	entertainment	\N	t
21108	db	2014-04-25	2014-04-25			-0.16	EUR	living	food	\N	t
21107	db	2014-04-25	2014-04-25			-17.59	EUR	free time	going out	\N	t
21106	db	2014-04-25	2014-04-25			-18.59	EUR	mobility	gas	\N	t
21100	db	2014-04-25	2014-04-25			-20.00	EUR	other	cash	\N	t
21135	db	2014-04-26	2014-04-26			-4.18	EUR	health	wellness	\N	t
21134	db	2014-04-26	2014-04-26			-11.41	EUR	free time	going out	\N	t
21176	db	2014-04-28	2014-04-28			-6.15	EUR	living	food	\N	t
21202	db	2014-04-29	2014-04-29			-1.11	EUR	free time	hobbies	\N	t
21228	db	2014-04-30	2014-04-30			-3.19	EUR	free time	sport	\N	t
21261	db	2014-05-01	2014-05-01			-10.00	EUR	house	phone	\N	t
21255	db	2014-05-01	2014-05-01			-3.36	EUR	living	food	\N	t
21254	db	2014-05-01	2014-05-01			-7.64	EUR	free time	entertainment	\N	t
21287	db	2014-05-02	2014-05-02			-10.00	EUR	house	electricity	\N	t
21283	db	2014-05-02	2014-05-02			-15.41	EUR	living	food	\N	t
21282	db	2014-05-02	2014-05-02			-13.76	EUR	free time	going out	\N	t
21281	db	2014-05-02	2014-05-02			-3.49	EUR	mobility	gas	\N	t
21275	db	2014-05-02	2014-05-02			-20.00	EUR	other	cash	\N	t
21313	db	2014-05-03	2014-05-03			-10.00	EUR	house	internet	\N	t
21310	db	2014-05-03	2014-05-03			-2.90	EUR	health	wellness	\N	t
21309	db	2014-05-03	2014-05-03			-10.88	EUR	free time	going out	\N	t
21339	db	2014-05-04	2014-05-04			-250.00	EUR	house	rent	\N	t
21365	db	2014-05-05	2014-05-05			-10.00	EUR	finance	costs and fees	\N	t
21351	db	2014-05-05	2014-05-05			-1.15	EUR	living	food	\N	t
21391	db	2014-05-06	2014-05-06			-50.00	EUR	finance	insurance	\N	t
21377	db	2014-05-06	2014-05-06			-3.04	EUR	free time	hobbies	\N	t
21417	db	2014-05-07	2014-05-07			-77.37	EUR	health	doctor visits	\N	t
21403	db	2014-05-07	2014-05-07			-0.73	EUR	free time	sport	\N	t
21443	db	2014-05-08	2014-05-08			1000.00	EUR	work and training	salary	\N	t
21430	db	2014-05-08	2014-05-08			-3.26	EUR	living	food	\N	t
21429	db	2014-05-08	2014-05-08			-3.05	EUR	free time	entertainment	\N	t
21458	db	2014-05-09	2014-05-09			-12.95	EUR	living	food	\N	t
21457	db	2014-05-09	2014-05-09			-19.11	EUR	free time	going out	\N	t
21456	db	2014-05-09	2014-05-09			-7.74	EUR	mobility	gas	\N	t
21450	db	2014-05-09	2014-05-09			-20.00	EUR	other	cash	\N	t
21494	db	2014-05-10	2014-05-10			-67.05	EUR	living	pets	\N	t
21485	db	2014-05-10	2014-05-10			-2.75	EUR	health	wellness	\N	t
21484	db	2014-05-10	2014-05-10			-0.96	EUR	free time	going out	\N	t
21526	db	2014-05-12	2014-05-12			-3.56	EUR	living	food	\N	t
21552	db	2014-05-13	2014-05-13			-9.84	EUR	free time	hobbies	\N	t
21578	db	2014-05-14	2014-05-14			-2.86	EUR	free time	sport	\N	t
21620	db	2014-05-15	2014-05-15			-50.69	EUR	living	household	\N	t
21605	db	2014-05-15	2014-05-15			-9.67	EUR	living	food	\N	t
21604	db	2014-05-15	2014-05-15			-1.86	EUR	free time	entertainment	\N	t
21633	db	2014-05-16	2014-05-16			-9.14	EUR	living	food	\N	t
21632	db	2014-05-16	2014-05-16			-16.58	EUR	free time	going out	\N	t
21631	db	2014-05-16	2014-05-16			-7.84	EUR	mobility	gas	\N	t
21625	db	2014-05-16	2014-05-16			-20.00	EUR	other	cash	\N	t
21660	db	2014-05-17	2014-05-17			-17.38	EUR	health	wellness	\N	t
21659	db	2014-05-17	2014-05-17			-2.76	EUR	free time	going out	\N	t
21701	db	2014-05-19	2014-05-19			-7.52	EUR	living	food	\N	t
21747	db	2014-05-20	2014-05-20			-26.96	EUR	free time	gadgets	\N	t
21746	db	2014-05-20	2014-05-20			-34.77	EUR	living	clothes	\N	t
21727	db	2014-05-20	2014-05-20			-3.75	EUR	free time	hobbies	\N	t
21753	db	2014-05-21	2014-05-21			-2.83	EUR	free time	sport	\N	t
21780	db	2014-05-22	2014-05-22			-4.28	EUR	living	food	\N	t
21779	db	2014-05-22	2014-05-22			-0.78	EUR	free time	entertainment	\N	t
21808	db	2014-05-23	2014-05-23			-7.54	EUR	living	food	\N	t
21807	db	2014-05-23	2014-05-23			-2.19	EUR	free time	going out	\N	t
21806	db	2014-05-23	2014-05-23			-10.00	EUR	mobility	gas	\N	t
21800	db	2014-05-23	2014-05-23			-20.00	EUR	other	cash	\N	t
21835	db	2014-05-24	2014-05-24			-6.90	EUR	health	wellness	\N	t
21834	db	2014-05-24	2014-05-24			-8.16	EUR	free time	going out	\N	t
21876	db	2014-05-26	2014-05-26			-3.61	EUR	living	food	\N	t
21902	db	2014-05-27	2014-05-27			-6.12	EUR	free time	hobbies	\N	t
21928	db	2014-05-28	2014-05-28			-5.26	EUR	free time	sport	\N	t
21955	db	2014-05-29	2014-05-29			-7.79	EUR	living	food	\N	t
21954	db	2014-05-29	2014-05-29			-8.32	EUR	free time	entertainment	\N	t
21983	db	2014-05-30	2014-05-30			-13.25	EUR	living	food	\N	t
21982	db	2014-05-30	2014-05-30			-8.12	EUR	free time	going out	\N	t
21981	db	2014-05-30	2014-05-30			-9.77	EUR	mobility	gas	\N	t
21975	db	2014-05-30	2014-05-30			-20.00	EUR	other	cash	\N	t
22010	db	2014-05-31	2014-05-31			-15.91	EUR	health	wellness	\N	t
22009	db	2014-05-31	2014-05-31			-1.76	EUR	free time	going out	\N	t
22036	db	2014-06-01	2014-06-01			-10.00	EUR	house	phone	\N	t
22062	db	2014-06-02	2014-06-02			-10.00	EUR	house	electricity	\N	t
22051	db	2014-06-02	2014-06-02			-0.98	EUR	living	food	\N	t
22088	db	2014-06-03	2014-06-03			-10.00	EUR	house	internet	\N	t
22077	db	2014-06-03	2014-06-03			-1.71	EUR	free time	hobbies	\N	t
22114	db	2014-06-04	2014-06-04			-250.00	EUR	house	rent	\N	t
22103	db	2014-06-04	2014-06-04			-0.52	EUR	free time	sport	\N	t
22140	db	2014-06-05	2014-06-05			-10.00	EUR	finance	costs and fees	\N	t
22130	db	2014-06-05	2014-06-05			-4.35	EUR	living	food	\N	t
22129	db	2014-06-05	2014-06-05			-4.45	EUR	free time	entertainment	\N	t
22166	db	2014-06-06	2014-06-06			-50.00	EUR	finance	insurance	\N	t
22158	db	2014-06-06	2014-06-06			-3.59	EUR	living	food	\N	t
22157	db	2014-06-06	2014-06-06			-6.16	EUR	free time	going out	\N	t
22156	db	2014-06-06	2014-06-06			-16.59	EUR	mobility	gas	\N	t
22150	db	2014-06-06	2014-06-06			-20.00	EUR	other	cash	\N	t
22192	db	2014-06-07	2014-06-07			-2.98	EUR	health	doctor visits	\N	t
22185	db	2014-06-07	2014-06-07			-8.31	EUR	health	wellness	\N	t
22184	db	2014-06-07	2014-06-07			-10.58	EUR	free time	going out	\N	t
22218	db	2014-06-08	2014-06-08			1000.00	EUR	work and training	salary	\N	t
22226	db	2014-06-09	2014-06-09			-6.57	EUR	living	food	\N	t
22269	db	2014-06-10	2014-06-10			-30.27	EUR	living	pets	\N	t
22252	db	2014-06-10	2014-06-10			-5.66	EUR	free time	hobbies	\N	t
22278	db	2014-06-11	2014-06-11			-6.56	EUR	free time	sport	\N	t
22305	db	2014-06-12	2014-06-12			-2.77	EUR	living	food	\N	t
22304	db	2014-06-12	2014-06-12			-5.74	EUR	free time	entertainment	\N	t
22333	db	2014-06-13	2014-06-13			-18.99	EUR	living	food	\N	t
22332	db	2014-06-13	2014-06-13			-8.03	EUR	free time	going out	\N	t
22331	db	2014-06-13	2014-06-13			-11.08	EUR	mobility	gas	\N	t
22325	db	2014-06-13	2014-06-13			-20.00	EUR	other	cash	\N	t
22360	db	2014-06-14	2014-06-14			-19.04	EUR	health	wellness	\N	t
22359	db	2014-06-14	2014-06-14			-9.86	EUR	free time	going out	\N	t
22395	db	2014-06-15	2014-06-15			-5.05	EUR	living	household	\N	t
22401	db	2014-06-16	2014-06-16			-6.68	EUR	living	food	\N	t
22427	db	2014-06-17	2014-06-17			-9.30	EUR	free time	hobbies	\N	t
22453	db	2014-06-18	2014-06-18			-9.92	EUR	free time	sport	\N	t
22480	db	2014-06-19	2014-06-19			-9.27	EUR	living	food	\N	t
22479	db	2014-06-19	2014-06-19			-6.32	EUR	free time	entertainment	\N	t
22522	db	2014-06-20	2014-06-20			-27.19	EUR	free time	gadgets	\N	t
22521	db	2014-06-20	2014-06-20			-21.81	EUR	living	clothes	\N	t
22508	db	2014-06-20	2014-06-20			-12.07	EUR	living	food	\N	t
22507	db	2014-06-20	2014-06-20			-4.31	EUR	free time	going out	\N	t
22506	db	2014-06-20	2014-06-20			-18.88	EUR	mobility	gas	\N	t
22500	db	2014-06-20	2014-06-20			-20.00	EUR	other	cash	\N	t
22535	db	2014-06-21	2014-06-21			-9.22	EUR	health	wellness	\N	t
22534	db	2014-06-21	2014-06-21			-4.17	EUR	free time	going out	\N	t
22576	db	2014-06-23	2014-06-23			-5.09	EUR	living	food	\N	t
22602	db	2014-06-24	2014-06-24			-4.22	EUR	free time	hobbies	\N	t
22628	db	2014-06-25	2014-06-25			-1.92	EUR	free time	sport	\N	t
22655	db	2014-06-26	2014-06-26			-8.62	EUR	living	food	\N	t
22654	db	2014-06-26	2014-06-26			-6.89	EUR	free time	entertainment	\N	t
22683	db	2014-06-27	2014-06-27			-17.60	EUR	living	food	\N	t
22682	db	2014-06-27	2014-06-27			-9.81	EUR	free time	going out	\N	t
22681	db	2014-06-27	2014-06-27			-8.16	EUR	mobility	gas	\N	t
22675	db	2014-06-27	2014-06-27			-20.00	EUR	other	cash	\N	t
22710	db	2014-06-28	2014-06-28			-0.02	EUR	health	wellness	\N	t
22709	db	2014-06-28	2014-06-28			-9.30	EUR	free time	going out	\N	t
22748	db	2014-06-29	2014-06-29			-448.77	EUR	free time	travel	\N	t
22751	db	2014-06-30	2014-06-30			-9.22	EUR	living	food	\N	t
22786	db	2014-07-01	2014-07-01			-10.00	EUR	house	phone	\N	t
22777	db	2014-07-01	2014-07-01			-3.68	EUR	free time	hobbies	\N	t
22812	db	2014-07-02	2014-07-02			-10.00	EUR	house	electricity	\N	t
22803	db	2014-07-02	2014-07-02			-3.82	EUR	free time	sport	\N	t
22838	db	2014-07-03	2014-07-03			-10.00	EUR	house	internet	\N	t
22830	db	2014-07-03	2014-07-03			-9.92	EUR	living	food	\N	t
22829	db	2014-07-03	2014-07-03			-7.53	EUR	free time	entertainment	\N	t
22864	db	2014-07-04	2014-07-04			-250.00	EUR	house	rent	\N	t
22858	db	2014-07-04	2014-07-04			-8.30	EUR	living	food	\N	t
22857	db	2014-07-04	2014-07-04			-3.03	EUR	free time	going out	\N	t
22856	db	2014-07-04	2014-07-04			-0.41	EUR	mobility	gas	\N	t
22850	db	2014-07-04	2014-07-04			-20.00	EUR	other	cash	\N	t
22890	db	2014-07-05	2014-07-05			-10.00	EUR	finance	costs and fees	\N	t
22885	db	2014-07-05	2014-07-05			-8.29	EUR	health	wellness	\N	t
22884	db	2014-07-05	2014-07-05			-2.60	EUR	free time	going out	\N	t
22916	db	2014-07-06	2014-07-06			-50.00	EUR	finance	insurance	\N	t
22942	db	2014-07-07	2014-07-07			-70.23	EUR	health	doctor visits	\N	t
22926	db	2014-07-07	2014-07-07			-7.62	EUR	living	food	\N	t
22968	db	2014-07-08	2014-07-08			1000.00	EUR	work and training	salary	\N	t
22952	db	2014-07-08	2014-07-08			-4.13	EUR	free time	hobbies	\N	t
22978	db	2014-07-09	2014-07-09			-8.27	EUR	free time	sport	\N	t
23019	db	2014-07-10	2014-07-10			-29.68	EUR	living	pets	\N	t
23005	db	2014-07-10	2014-07-10			-7.67	EUR	living	food	\N	t
23004	db	2014-07-10	2014-07-10			-8.11	EUR	free time	entertainment	\N	t
23033	db	2014-07-11	2014-07-11			-16.79	EUR	living	food	\N	t
23032	db	2014-07-11	2014-07-11			-3.11	EUR	free time	going out	\N	t
23031	db	2014-07-11	2014-07-11			-8.68	EUR	mobility	gas	\N	t
23025	db	2014-07-11	2014-07-11			-20.00	EUR	other	cash	\N	t
23060	db	2014-07-12	2014-07-12			-17.85	EUR	health	wellness	\N	t
23059	db	2014-07-12	2014-07-12			-2.72	EUR	free time	going out	\N	t
23101	db	2014-07-14	2014-07-14			-1.77	EUR	living	food	\N	t
23145	db	2014-07-15	2014-07-15			-74.91	EUR	living	household	\N	t
23127	db	2014-07-15	2014-07-15			-2.38	EUR	free time	hobbies	\N	t
23153	db	2014-07-16	2014-07-16			-3.53	EUR	free time	sport	\N	t
23180	db	2014-07-17	2014-07-17			-0.60	EUR	living	food	\N	t
23179	db	2014-07-17	2014-07-17			-6.92	EUR	free time	entertainment	\N	t
23208	db	2014-07-18	2014-07-18			-18.93	EUR	living	food	\N	t
23207	db	2014-07-18	2014-07-18			-5.33	EUR	free time	going out	\N	t
23206	db	2014-07-18	2014-07-18			-0.11	EUR	mobility	gas	\N	t
23200	db	2014-07-18	2014-07-18			-20.00	EUR	other	cash	\N	t
23235	db	2014-07-19	2014-07-19			-12.98	EUR	health	wellness	\N	t
23234	db	2014-07-19	2014-07-19			-0.11	EUR	free time	going out	\N	t
23272	db	2014-07-20	2014-07-20			-66.29	EUR	free time	gadgets	\N	t
23271	db	2014-07-20	2014-07-20			-63.45	EUR	living	clothes	\N	t
23276	db	2014-07-21	2014-07-21			-8.56	EUR	living	food	\N	t
23302	db	2014-07-22	2014-07-22			-2.17	EUR	free time	hobbies	\N	t
23328	db	2014-07-23	2014-07-23			-5.54	EUR	free time	sport	\N	t
23355	db	2014-07-24	2014-07-24			-2.30	EUR	living	food	\N	t
23354	db	2014-07-24	2014-07-24			-9.71	EUR	free time	entertainment	\N	t
23383	db	2014-07-25	2014-07-25			-13.16	EUR	living	food	\N	t
23382	db	2014-07-25	2014-07-25			-19.70	EUR	free time	going out	\N	t
23381	db	2014-07-25	2014-07-25			-19.68	EUR	mobility	gas	\N	t
23375	db	2014-07-25	2014-07-25			-20.00	EUR	other	cash	\N	t
23410	db	2014-07-26	2014-07-26			-10.04	EUR	health	wellness	\N	t
23409	db	2014-07-26	2014-07-26			-7.58	EUR	free time	going out	\N	t
23451	db	2014-07-28	2014-07-28			-5.78	EUR	living	food	\N	t
23477	db	2014-07-29	2014-07-29			-5.51	EUR	free time	hobbies	\N	t
23503	db	2014-07-30	2014-07-30			-9.55	EUR	free time	sport	\N	t
23530	db	2014-07-31	2014-07-31			-8.17	EUR	living	food	\N	t
23529	db	2014-07-31	2014-07-31			-7.97	EUR	free time	entertainment	\N	t
23561	db	2014-08-01	2014-08-01			-10.00	EUR	house	phone	\N	t
23558	db	2014-08-01	2014-08-01			-18.31	EUR	living	food	\N	t
23557	db	2014-08-01	2014-08-01			-16.97	EUR	free time	going out	\N	t
23556	db	2014-08-01	2014-08-01			-1.20	EUR	mobility	gas	\N	t
23550	db	2014-08-01	2014-08-01			-20.00	EUR	other	cash	\N	t
23587	db	2014-08-02	2014-08-02			-10.00	EUR	house	electricity	\N	t
23585	db	2014-08-02	2014-08-02			-16.85	EUR	health	wellness	\N	t
23584	db	2014-08-02	2014-08-02			-15.02	EUR	free time	going out	\N	t
23613	db	2014-08-03	2014-08-03			-10.00	EUR	house	internet	\N	t
23639	db	2014-08-04	2014-08-04			-250.00	EUR	house	rent	\N	t
23626	db	2014-08-04	2014-08-04			-4.75	EUR	living	food	\N	t
23665	db	2014-08-05	2014-08-05			-10.00	EUR	finance	costs and fees	\N	t
23652	db	2014-08-05	2014-08-05			-7.02	EUR	free time	hobbies	\N	t
23691	db	2014-08-06	2014-08-06			-50.00	EUR	finance	insurance	\N	t
23678	db	2014-08-06	2014-08-06			-7.29	EUR	free time	sport	\N	t
23717	db	2014-08-07	2014-08-07			-36.84	EUR	health	doctor visits	\N	t
23705	db	2014-08-07	2014-08-07			-0.87	EUR	living	food	\N	t
23704	db	2014-08-07	2014-08-07			-2.94	EUR	free time	entertainment	\N	t
23743	db	2014-08-08	2014-08-08			1000.00	EUR	work and training	salary	\N	t
23733	db	2014-08-08	2014-08-08			-0.65	EUR	living	food	\N	t
23732	db	2014-08-08	2014-08-08			-2.02	EUR	free time	going out	\N	t
23731	db	2014-08-08	2014-08-08			-19.49	EUR	mobility	gas	\N	t
23725	db	2014-08-08	2014-08-08			-20.00	EUR	other	cash	\N	t
23760	db	2014-08-09	2014-08-09			-7.78	EUR	health	wellness	\N	t
23759	db	2014-08-09	2014-08-09			-7.42	EUR	free time	going out	\N	t
23794	db	2014-08-10	2014-08-10			-70.87	EUR	living	pets	\N	t
23801	db	2014-08-11	2014-08-11			-1.64	EUR	living	food	\N	t
23827	db	2014-08-12	2014-08-12			-3.35	EUR	free time	hobbies	\N	t
23853	db	2014-08-13	2014-08-13			-1.34	EUR	free time	sport	\N	t
23880	db	2014-08-14	2014-08-14			-9.74	EUR	living	food	\N	t
23879	db	2014-08-14	2014-08-14			-7.31	EUR	free time	entertainment	\N	t
23920	db	2014-08-15	2014-08-15			-32.95	EUR	living	household	\N	t
23908	db	2014-08-15	2014-08-15			-17.93	EUR	living	food	\N	t
23907	db	2014-08-15	2014-08-15			-6.73	EUR	free time	going out	\N	t
23906	db	2014-08-15	2014-08-15			-6.12	EUR	mobility	gas	\N	t
23900	db	2014-08-15	2014-08-15			-20.00	EUR	other	cash	\N	t
23935	db	2014-08-16	2014-08-16			-10.04	EUR	health	wellness	\N	t
23934	db	2014-08-16	2014-08-16			-7.60	EUR	free time	going out	\N	t
23976	db	2014-08-18	2014-08-18			-3.65	EUR	living	food	\N	t
24002	db	2014-08-19	2014-08-19			-7.52	EUR	free time	hobbies	\N	t
24047	db	2014-08-20	2014-08-20			-74.39	EUR	free time	gadgets	\N	t
24046	db	2014-08-20	2014-08-20			-2.94	EUR	living	clothes	\N	t
24028	db	2014-08-20	2014-08-20			-8.59	EUR	free time	sport	\N	t
24055	db	2014-08-21	2014-08-21			-4.31	EUR	living	food	\N	t
24054	db	2014-08-21	2014-08-21			-3.20	EUR	free time	entertainment	\N	t
24083	db	2014-08-22	2014-08-22			-7.88	EUR	living	food	\N	t
24082	db	2014-08-22	2014-08-22			-8.93	EUR	free time	going out	\N	t
24081	db	2014-08-22	2014-08-22			-12.45	EUR	mobility	gas	\N	t
24075	db	2014-08-22	2014-08-22			-20.00	EUR	other	cash	\N	t
24110	db	2014-08-23	2014-08-23			-0.90	EUR	health	wellness	\N	t
24109	db	2014-08-23	2014-08-23			-10.64	EUR	free time	going out	\N	t
24151	db	2014-08-25	2014-08-25			-4.75	EUR	living	food	\N	t
24177	db	2014-08-26	2014-08-26			-0.51	EUR	free time	hobbies	\N	t
24203	db	2014-08-27	2014-08-27			-9.35	EUR	free time	sport	\N	t
24230	db	2014-08-28	2014-08-28			-0.43	EUR	living	food	\N	t
24229	db	2014-08-28	2014-08-28			-4.85	EUR	free time	entertainment	\N	t
24258	db	2014-08-29	2014-08-29			-4.21	EUR	living	food	\N	t
24257	db	2014-08-29	2014-08-29			-17.15	EUR	free time	going out	\N	t
24256	db	2014-08-29	2014-08-29			-6.55	EUR	mobility	gas	\N	t
24250	db	2014-08-29	2014-08-29			-20.00	EUR	other	cash	\N	t
24285	db	2014-08-30	2014-08-30			-11.91	EUR	health	wellness	\N	t
24284	db	2014-08-30	2014-08-30			-8.46	EUR	free time	going out	\N	t
24336	db	2014-09-01	2014-09-01			-10.00	EUR	house	phone	\N	t
24326	db	2014-09-01	2014-09-01			-3.33	EUR	living	food	\N	t
24362	db	2014-09-02	2014-09-02			-10.00	EUR	house	electricity	\N	t
24352	db	2014-09-02	2014-09-02			-0.61	EUR	free time	hobbies	\N	t
24388	db	2014-09-03	2014-09-03			-10.00	EUR	house	internet	\N	t
24378	db	2014-09-03	2014-09-03			-8.49	EUR	free time	sport	\N	t
24414	db	2014-09-04	2014-09-04			-250.00	EUR	house	rent	\N	t
24405	db	2014-09-04	2014-09-04			-3.75	EUR	living	food	\N	t
24404	db	2014-09-04	2014-09-04			-6.71	EUR	free time	entertainment	\N	t
24440	db	2014-09-05	2014-09-05			-10.00	EUR	finance	costs and fees	\N	t
24433	db	2014-09-05	2014-09-05			-16.18	EUR	living	food	\N	t
24432	db	2014-09-05	2014-09-05			-17.42	EUR	free time	going out	\N	t
24431	db	2014-09-05	2014-09-05			-2.45	EUR	mobility	gas	\N	t
24425	db	2014-09-05	2014-09-05			-20.00	EUR	other	cash	\N	t
24466	db	2014-09-06	2014-09-06			-50.00	EUR	finance	insurance	\N	t
24460	db	2014-09-06	2014-09-06			-10.25	EUR	health	wellness	\N	t
24459	db	2014-09-06	2014-09-06			-9.92	EUR	free time	going out	\N	t
24492	db	2014-09-07	2014-09-07			-61.45	EUR	health	doctor visits	\N	t
24518	db	2014-09-08	2014-09-08			1000.00	EUR	work and training	salary	\N	t
24501	db	2014-09-08	2014-09-08			-3.94	EUR	living	food	\N	t
24527	db	2014-09-09	2014-09-09			-5.01	EUR	free time	hobbies	\N	t
24569	db	2014-09-10	2014-09-10			-43.49	EUR	living	pets	\N	t
24553	db	2014-09-10	2014-09-10			-2.31	EUR	free time	sport	\N	t
24580	db	2014-09-11	2014-09-11			-0.38	EUR	living	food	\N	t
24579	db	2014-09-11	2014-09-11			-8.42	EUR	free time	entertainment	\N	t
24608	db	2014-09-12	2014-09-12			-19.07	EUR	living	food	\N	t
24607	db	2014-09-12	2014-09-12			-9.40	EUR	free time	going out	\N	t
24606	db	2014-09-12	2014-09-12			-13.06	EUR	mobility	gas	\N	t
24600	db	2014-09-12	2014-09-12			-20.00	EUR	other	cash	\N	t
24635	db	2014-09-13	2014-09-13			-6.72	EUR	health	wellness	\N	t
24634	db	2014-09-13	2014-09-13			-6.62	EUR	free time	going out	\N	t
24695	db	2014-09-15	2014-09-15			-56.82	EUR	living	household	\N	t
24676	db	2014-09-15	2014-09-15			-4.45	EUR	living	food	\N	t
24702	db	2014-09-16	2014-09-16			-6.66	EUR	free time	hobbies	\N	t
24728	db	2014-09-17	2014-09-17			-4.55	EUR	free time	sport	\N	t
24755	db	2014-09-18	2014-09-18			-3.06	EUR	living	food	\N	t
24754	db	2014-09-18	2014-09-18			-8.61	EUR	free time	entertainment	\N	t
24783	db	2014-09-19	2014-09-19			-11.48	EUR	living	food	\N	t
24782	db	2014-09-19	2014-09-19			-7.88	EUR	free time	going out	\N	t
24781	db	2014-09-19	2014-09-19			-12.84	EUR	mobility	gas	\N	t
24775	db	2014-09-19	2014-09-19			-20.00	EUR	other	cash	\N	t
24822	db	2014-09-20	2014-09-20			-6.10	EUR	free time	gadgets	\N	t
24821	db	2014-09-20	2014-09-20			-55.37	EUR	living	clothes	\N	t
24810	db	2014-09-20	2014-09-20			-19.63	EUR	health	wellness	\N	t
24809	db	2014-09-20	2014-09-20			-0.39	EUR	free time	going out	\N	t
24851	db	2014-09-22	2014-09-22			-3.99	EUR	living	food	\N	t
24877	db	2014-09-23	2014-09-23			-6.49	EUR	free time	hobbies	\N	t
24903	db	2014-09-24	2014-09-24			-8.21	EUR	free time	sport	\N	t
24930	db	2014-09-25	2014-09-25			-0.84	EUR	living	food	\N	t
24929	db	2014-09-25	2014-09-25			-8.22	EUR	free time	entertainment	\N	t
24958	db	2014-09-26	2014-09-26			-11.76	EUR	living	food	\N	t
24957	db	2014-09-26	2014-09-26			-0.40	EUR	free time	going out	\N	t
24956	db	2014-09-26	2014-09-26			-7.69	EUR	mobility	gas	\N	t
24950	db	2014-09-26	2014-09-26			-20.00	EUR	other	cash	\N	t
24985	db	2014-09-27	2014-09-27			-5.79	EUR	health	wellness	\N	t
24984	db	2014-09-27	2014-09-27			-10.99	EUR	free time	going out	\N	t
25026	db	2014-09-29	2014-09-29			-7.40	EUR	living	food	\N	t
25052	db	2014-09-30	2014-09-30			-3.71	EUR	free time	hobbies	\N	t
25086	db	2014-10-01	2014-10-01			-10.00	EUR	house	phone	\N	t
25078	db	2014-10-01	2014-10-01			-9.58	EUR	free time	sport	\N	t
25112	db	2014-10-02	2014-10-02			-10.00	EUR	house	electricity	\N	t
25105	db	2014-10-02	2014-10-02			-0.64	EUR	living	food	\N	t
25104	db	2014-10-02	2014-10-02			-9.97	EUR	free time	entertainment	\N	t
25138	db	2014-10-03	2014-10-03			-10.00	EUR	house	internet	\N	t
25133	db	2014-10-03	2014-10-03			-1.51	EUR	living	food	\N	t
25132	db	2014-10-03	2014-10-03			-6.29	EUR	free time	going out	\N	t
25131	db	2014-10-03	2014-10-03			-13.45	EUR	mobility	gas	\N	t
25125	db	2014-10-03	2014-10-03			-20.00	EUR	other	cash	\N	t
25164	db	2014-10-04	2014-10-04			-250.00	EUR	house	rent	\N	t
25160	db	2014-10-04	2014-10-04			-4.33	EUR	health	wellness	\N	t
25159	db	2014-10-04	2014-10-04			-17.33	EUR	free time	going out	\N	t
25190	db	2014-10-05	2014-10-05			-10.00	EUR	finance	costs and fees	\N	t
25216	db	2014-10-06	2014-10-06			-50.00	EUR	finance	insurance	\N	t
25201	db	2014-10-06	2014-10-06			-1.21	EUR	living	food	\N	t
25242	db	2014-10-07	2014-10-07			-33.73	EUR	health	doctor visits	\N	t
25227	db	2014-10-07	2014-10-07			-7.63	EUR	free time	hobbies	\N	t
25268	db	2014-10-08	2014-10-08			1000.00	EUR	work and training	salary	\N	t
25253	db	2014-10-08	2014-10-08			-0.40	EUR	free time	sport	\N	t
25280	db	2014-10-09	2014-10-09			-7.97	EUR	living	food	\N	t
25279	db	2014-10-09	2014-10-09			-7.45	EUR	free time	entertainment	\N	t
25319	db	2014-10-10	2014-10-10			-11.15	EUR	living	pets	\N	t
25308	db	2014-10-10	2014-10-10			-16.66	EUR	living	food	\N	t
25307	db	2014-10-10	2014-10-10			-13.06	EUR	free time	going out	\N	t
25306	db	2014-10-10	2014-10-10			-19.44	EUR	mobility	gas	\N	t
25300	db	2014-10-10	2014-10-10			-20.00	EUR	other	cash	\N	t
25335	db	2014-10-11	2014-10-11			-8.93	EUR	health	wellness	\N	t
25334	db	2014-10-11	2014-10-11			-0.87	EUR	free time	going out	\N	t
25376	db	2014-10-13	2014-10-13			-1.49	EUR	living	food	\N	t
25402	db	2014-10-14	2014-10-14			-6.12	EUR	free time	hobbies	\N	t
25445	db	2014-10-15	2014-10-15			-64.90	EUR	living	household	\N	t
25428	db	2014-10-15	2014-10-15			-1.09	EUR	free time	sport	\N	t
25455	db	2014-10-16	2014-10-16			-0.36	EUR	living	food	\N	t
25454	db	2014-10-16	2014-10-16			-4.02	EUR	free time	entertainment	\N	t
25483	db	2014-10-17	2014-10-17			-14.90	EUR	living	food	\N	t
25482	db	2014-10-17	2014-10-17			-10.04	EUR	free time	going out	\N	t
25481	db	2014-10-17	2014-10-17			-1.77	EUR	mobility	gas	\N	t
25475	db	2014-10-17	2014-10-17			-20.00	EUR	other	cash	\N	t
25510	db	2014-10-18	2014-10-18			-1.00	EUR	health	wellness	\N	t
25509	db	2014-10-18	2014-10-18			-6.15	EUR	free time	going out	\N	t
25572	db	2014-10-20	2014-10-20			-72.35	EUR	free time	gadgets	\N	t
25571	db	2014-10-20	2014-10-20			-69.90	EUR	living	clothes	\N	t
25551	db	2014-10-20	2014-10-20			-6.10	EUR	living	food	\N	t
25577	db	2014-10-21	2014-10-21			-8.73	EUR	free time	hobbies	\N	t
25603	db	2014-10-22	2014-10-22			-1.59	EUR	free time	sport	\N	t
25630	db	2014-10-23	2014-10-23			-7.72	EUR	living	food	\N	t
25629	db	2014-10-23	2014-10-23			-8.28	EUR	free time	entertainment	\N	t
25658	db	2014-10-24	2014-10-24			-18.04	EUR	living	food	\N	t
25657	db	2014-10-24	2014-10-24			-14.20	EUR	free time	going out	\N	t
25656	db	2014-10-24	2014-10-24			-12.64	EUR	mobility	gas	\N	t
25650	db	2014-10-24	2014-10-24			-20.00	EUR	other	cash	\N	t
25685	db	2014-10-25	2014-10-25			-13.23	EUR	health	wellness	\N	t
25684	db	2014-10-25	2014-10-25			-3.16	EUR	free time	going out	\N	t
25726	db	2014-10-27	2014-10-27			-5.95	EUR	living	food	\N	t
25752	db	2014-10-28	2014-10-28			-3.36	EUR	free time	hobbies	\N	t
25778	db	2014-10-29	2014-10-29			-9.54	EUR	free time	sport	\N	t
25805	db	2014-10-30	2014-10-30			-3.20	EUR	living	food	\N	t
25804	db	2014-10-30	2014-10-30			-9.33	EUR	free time	entertainment	\N	t
25833	db	2014-10-31	2014-10-31			-12.52	EUR	living	food	\N	t
25832	db	2014-10-31	2014-10-31			-6.23	EUR	free time	going out	\N	t
25831	db	2014-10-31	2014-10-31			-15.77	EUR	mobility	gas	\N	t
25825	db	2014-10-31	2014-10-31			-20.00	EUR	other	cash	\N	t
25861	db	2014-11-01	2014-11-01			-10.00	EUR	house	phone	\N	t
25860	db	2014-11-01	2014-11-01			-18.79	EUR	health	wellness	\N	t
25859	db	2014-11-01	2014-11-01			-9.36	EUR	free time	going out	\N	t
25887	db	2014-11-02	2014-11-02			-10.00	EUR	house	electricity	\N	t
25913	db	2014-11-03	2014-11-03			-10.00	EUR	house	internet	\N	t
25901	db	2014-11-03	2014-11-03			-8.49	EUR	living	food	\N	t
25939	db	2014-11-04	2014-11-04			-250.00	EUR	house	rent	\N	t
25927	db	2014-11-04	2014-11-04			-4.88	EUR	free time	hobbies	\N	t
25965	db	2014-11-05	2014-11-05			-10.00	EUR	finance	costs and fees	\N	t
25953	db	2014-11-05	2014-11-05			-9.53	EUR	free time	sport	\N	t
25991	db	2014-11-06	2014-11-06			-50.00	EUR	finance	insurance	\N	t
25980	db	2014-11-06	2014-11-06			-5.13	EUR	living	food	\N	t
25979	db	2014-11-06	2014-11-06			-9.66	EUR	free time	entertainment	\N	t
26017	db	2014-11-07	2014-11-07			-30.54	EUR	health	doctor visits	\N	t
26008	db	2014-11-07	2014-11-07			-0.69	EUR	living	food	\N	t
26007	db	2014-11-07	2014-11-07			-15.27	EUR	free time	going out	\N	t
26006	db	2014-11-07	2014-11-07			-16.93	EUR	mobility	gas	\N	t
26000	db	2014-11-07	2014-11-07			-20.00	EUR	other	cash	\N	t
26043	db	2014-11-08	2014-11-08			1000.00	EUR	work and training	salary	\N	t
26035	db	2014-11-08	2014-11-08			-9.69	EUR	health	wellness	\N	t
26034	db	2014-11-08	2014-11-08			-19.66	EUR	free time	going out	\N	t
26094	db	2014-11-10	2014-11-10			-29.98	EUR	living	pets	\N	t
26076	db	2014-11-10	2014-11-10			-4.12	EUR	living	food	\N	t
26102	db	2014-11-11	2014-11-11			-8.61	EUR	free time	hobbies	\N	t
26128	db	2014-11-12	2014-11-12			-7.04	EUR	free time	sport	\N	t
26155	db	2014-11-13	2014-11-13			-6.73	EUR	living	food	\N	t
26154	db	2014-11-13	2014-11-13			-2.68	EUR	free time	entertainment	\N	t
26183	db	2014-11-14	2014-11-14			-15.09	EUR	living	food	\N	t
26182	db	2014-11-14	2014-11-14			-2.02	EUR	free time	going out	\N	t
26181	db	2014-11-14	2014-11-14			-2.24	EUR	mobility	gas	\N	t
26175	db	2014-11-14	2014-11-14			-20.00	EUR	other	cash	\N	t
26220	db	2014-11-15	2014-11-15			-36.20	EUR	living	household	\N	t
26210	db	2014-11-15	2014-11-15			-11.33	EUR	health	wellness	\N	t
26209	db	2014-11-15	2014-11-15			-5.25	EUR	free time	going out	\N	t
26251	db	2014-11-17	2014-11-17			-4.79	EUR	living	food	\N	t
26277	db	2014-11-18	2014-11-18			-5.81	EUR	free time	hobbies	\N	t
26303	db	2014-11-19	2014-11-19			-5.38	EUR	free time	sport	\N	t
26347	db	2014-11-20	2014-11-20			-43.82	EUR	free time	gadgets	\N	t
26346	db	2014-11-20	2014-11-20			-36.14	EUR	living	clothes	\N	t
26330	db	2014-11-20	2014-11-20			-0.77	EUR	living	food	\N	t
26329	db	2014-11-20	2014-11-20			-9.92	EUR	free time	entertainment	\N	t
26358	db	2014-11-21	2014-11-21			-7.83	EUR	living	food	\N	t
26357	db	2014-11-21	2014-11-21			-3.47	EUR	free time	going out	\N	t
26356	db	2014-11-21	2014-11-21			-11.49	EUR	mobility	gas	\N	t
26350	db	2014-11-21	2014-11-21			-20.00	EUR	other	cash	\N	t
26385	db	2014-11-22	2014-11-22			-17.73	EUR	health	wellness	\N	t
26384	db	2014-11-22	2014-11-22			-3.26	EUR	free time	going out	\N	t
26426	db	2014-11-24	2014-11-24			-6.65	EUR	living	food	\N	t
26452	db	2014-11-25	2014-11-25			-8.20	EUR	free time	hobbies	\N	t
26478	db	2014-11-26	2014-11-26			-1.40	EUR	free time	sport	\N	t
26505	db	2014-11-27	2014-11-27			-9.25	EUR	living	food	\N	t
26504	db	2014-11-27	2014-11-27			-4.79	EUR	free time	entertainment	\N	t
26533	db	2014-11-28	2014-11-28			-15.53	EUR	living	food	\N	t
26532	db	2014-11-28	2014-11-28			-2.63	EUR	free time	going out	\N	t
26531	db	2014-11-28	2014-11-28			-2.03	EUR	mobility	gas	\N	t
26525	db	2014-11-28	2014-11-28			-20.00	EUR	other	cash	\N	t
26560	db	2014-11-29	2014-11-29			-19.35	EUR	health	wellness	\N	t
26559	db	2014-11-29	2014-11-29			-4.23	EUR	free time	going out	\N	t
26611	db	2014-12-01	2014-12-01			-10.00	EUR	house	phone	\N	t
26601	db	2014-12-01	2014-12-01			-7.97	EUR	living	food	\N	t
26637	db	2014-12-02	2014-12-02			-10.00	EUR	house	electricity	\N	t
26627	db	2014-12-02	2014-12-02			-3.23	EUR	free time	hobbies	\N	t
26663	db	2014-12-03	2014-12-03			-10.00	EUR	house	internet	\N	t
26653	db	2014-12-03	2014-12-03			-3.19	EUR	free time	sport	\N	t
26689	db	2014-12-04	2014-12-04			-250.00	EUR	house	rent	\N	t
26680	db	2014-12-04	2014-12-04			-2.67	EUR	living	food	\N	t
26679	db	2014-12-04	2014-12-04			-7.36	EUR	free time	entertainment	\N	t
26715	db	2014-12-05	2014-12-05			-10.00	EUR	finance	costs and fees	\N	t
26708	db	2014-12-05	2014-12-05			-19.06	EUR	living	food	\N	t
26707	db	2014-12-05	2014-12-05			-4.51	EUR	free time	going out	\N	t
26706	db	2014-12-05	2014-12-05			-8.53	EUR	mobility	gas	\N	t
26700	db	2014-12-05	2014-12-05			-20.00	EUR	other	cash	\N	t
26741	db	2014-12-06	2014-12-06			-50.00	EUR	finance	insurance	\N	t
26735	db	2014-12-06	2014-12-06			-1.77	EUR	health	wellness	\N	t
26734	db	2014-12-06	2014-12-06			-11.65	EUR	free time	going out	\N	t
26767	db	2014-12-07	2014-12-07			-33.00	EUR	health	doctor visits	\N	t
26793	db	2014-12-08	2014-12-08			1000.00	EUR	work and training	salary	\N	t
26776	db	2014-12-08	2014-12-08			-5.09	EUR	living	food	\N	t
26802	db	2014-12-09	2014-12-09			-8.84	EUR	free time	hobbies	\N	t
26844	db	2014-12-10	2014-12-10			-52.21	EUR	living	pets	\N	t
26828	db	2014-12-10	2014-12-10			-5.15	EUR	free time	sport	\N	t
26855	db	2014-12-11	2014-12-11			-8.54	EUR	living	food	\N	t
26854	db	2014-12-11	2014-12-11			-0.22	EUR	free time	entertainment	\N	t
26883	db	2014-12-12	2014-12-12			-6.05	EUR	living	food	\N	t
26882	db	2014-12-12	2014-12-12			-4.98	EUR	free time	going out	\N	t
26881	db	2014-12-12	2014-12-12			-16.34	EUR	mobility	gas	\N	t
26875	db	2014-12-12	2014-12-12			-20.00	EUR	other	cash	\N	t
26910	db	2014-12-13	2014-12-13			-10.17	EUR	health	wellness	\N	t
26909	db	2014-12-13	2014-12-13			-3.33	EUR	free time	going out	\N	t
26970	db	2014-12-15	2014-12-15			-1.44	EUR	living	household	\N	t
26951	db	2014-12-15	2014-12-15			-9.60	EUR	living	food	\N	t
26977	db	2014-12-16	2014-12-16			-4.41	EUR	free time	hobbies	\N	t
27003	db	2014-12-17	2014-12-17			-2.12	EUR	free time	sport	\N	t
27030	db	2014-12-18	2014-12-18			-2.31	EUR	living	food	\N	t
27029	db	2014-12-18	2014-12-18			-5.47	EUR	free time	entertainment	\N	t
27058	db	2014-12-19	2014-12-19			-3.76	EUR	living	food	\N	t
27057	db	2014-12-19	2014-12-19			-12.41	EUR	free time	going out	\N	t
27056	db	2014-12-19	2014-12-19			-10.95	EUR	mobility	gas	\N	t
27050	db	2014-12-19	2014-12-19			-20.00	EUR	other	cash	\N	t
27097	db	2014-12-20	2014-12-20			-24.73	EUR	free time	gadgets	\N	t
27096	db	2014-12-20	2014-12-20			-7.25	EUR	living	clothes	\N	t
27085	db	2014-12-20	2014-12-20			-18.03	EUR	health	wellness	\N	t
27084	db	2014-12-20	2014-12-20			-7.42	EUR	free time	going out	\N	t
27124	db	2014-12-21	2014-12-21			-67.10	EUR	free time	presents	\N	t
27126	db	2014-12-22	2014-12-22			-7.92	EUR	living	food	\N	t
27152	db	2014-12-23	2014-12-23			-4.37	EUR	free time	hobbies	\N	t
27178	db	2014-12-24	2014-12-24			-7.27	EUR	free time	sport	\N	t
27205	db	2014-12-25	2014-12-25			-6.64	EUR	living	food	\N	t
27204	db	2014-12-25	2014-12-25			-8.20	EUR	free time	entertainment	\N	t
27233	db	2014-12-26	2014-12-26			-14.03	EUR	living	food	\N	t
27232	db	2014-12-26	2014-12-26			-2.05	EUR	free time	going out	\N	t
27231	db	2014-12-26	2014-12-26			-8.14	EUR	mobility	gas	\N	t
27225	db	2014-12-26	2014-12-26			-20.00	EUR	other	cash	\N	t
27260	db	2014-12-27	2014-12-27			-1.43	EUR	health	wellness	\N	t
27259	db	2014-12-27	2014-12-27			-14.30	EUR	free time	going out	\N	t
27301	db	2014-12-29	2014-12-29			-8.16	EUR	living	food	\N	t
27327	db	2014-12-30	2014-12-30			-2.94	EUR	free time	hobbies	\N	t
27353	db	2014-12-31	2014-12-31			-1.24	EUR	free time	sport	\N	t
27386	db	2015-01-01	2015-01-01			-10.00	EUR	house	phone	\N	t
27380	db	2015-01-01	2015-01-01			-4.22	EUR	living	food	\N	t
27379	db	2015-01-01	2015-01-01			-8.15	EUR	free time	entertainment	\N	t
27412	db	2015-01-02	2015-01-02			-10.00	EUR	house	electricity	\N	t
27408	db	2015-01-02	2015-01-02			-18.96	EUR	living	food	\N	t
27407	db	2015-01-02	2015-01-02			-14.65	EUR	free time	going out	\N	t
27406	db	2015-01-02	2015-01-02			-10.23	EUR	mobility	gas	\N	t
27400	db	2015-01-02	2015-01-02			-20.00	EUR	other	cash	\N	t
27438	db	2015-01-03	2015-01-03			-10.00	EUR	house	internet	\N	t
27435	db	2015-01-03	2015-01-03			-11.99	EUR	health	wellness	\N	t
27434	db	2015-01-03	2015-01-03			-0.57	EUR	free time	going out	\N	t
27464	db	2015-01-04	2015-01-04			-250.00	EUR	house	rent	\N	t
27490	db	2015-01-05	2015-01-05			-10.00	EUR	finance	costs and fees	\N	t
27476	db	2015-01-05	2015-01-05			-0.07	EUR	living	food	\N	t
27516	db	2015-01-06	2015-01-06			-50.00	EUR	finance	insurance	\N	t
27502	db	2015-01-06	2015-01-06			-9.94	EUR	free time	hobbies	\N	t
27542	db	2015-01-07	2015-01-07			-84.17	EUR	health	doctor visits	\N	t
27528	db	2015-01-07	2015-01-07			-0.83	EUR	free time	sport	\N	t
27568	db	2015-01-08	2015-01-08			1000.00	EUR	work and training	salary	\N	t
27555	db	2015-01-08	2015-01-08			-5.42	EUR	living	food	\N	t
27554	db	2015-01-08	2015-01-08			-6.84	EUR	free time	entertainment	\N	t
27583	db	2015-01-09	2015-01-09			-11.47	EUR	living	food	\N	t
27582	db	2015-01-09	2015-01-09			-16.61	EUR	free time	going out	\N	t
27581	db	2015-01-09	2015-01-09			-4.65	EUR	mobility	gas	\N	t
27575	db	2015-01-09	2015-01-09			-20.00	EUR	other	cash	\N	t
27619	db	2015-01-10	2015-01-10			-18.26	EUR	living	pets	\N	t
27610	db	2015-01-10	2015-01-10			-3.96	EUR	health	wellness	\N	t
27609	db	2015-01-10	2015-01-10			-4.35	EUR	free time	going out	\N	t
27651	db	2015-01-12	2015-01-12			-6.20	EUR	living	food	\N	t
27677	db	2015-01-13	2015-01-13			-6.96	EUR	free time	hobbies	\N	t
27703	db	2015-01-14	2015-01-14			-7.99	EUR	free time	sport	\N	t
27745	db	2015-01-15	2015-01-15			-70.32	EUR	living	household	\N	t
27730	db	2015-01-15	2015-01-15			-4.72	EUR	living	food	\N	t
27729	db	2015-01-15	2015-01-15			-6.58	EUR	free time	entertainment	\N	t
27758	db	2015-01-16	2015-01-16			-9.76	EUR	living	food	\N	t
27757	db	2015-01-16	2015-01-16			-5.66	EUR	free time	going out	\N	t
27756	db	2015-01-16	2015-01-16			-12.22	EUR	mobility	gas	\N	t
27750	db	2015-01-16	2015-01-16			-20.00	EUR	other	cash	\N	t
27785	db	2015-01-17	2015-01-17			-0.78	EUR	health	wellness	\N	t
27784	db	2015-01-17	2015-01-17			-7.06	EUR	free time	going out	\N	t
27826	db	2015-01-19	2015-01-19			-9.08	EUR	living	food	\N	t
27872	db	2015-01-20	2015-01-20			-72.99	EUR	free time	gadgets	\N	t
27871	db	2015-01-20	2015-01-20			-75.71	EUR	living	clothes	\N	t
27852	db	2015-01-20	2015-01-20			-3.14	EUR	free time	hobbies	\N	t
27878	db	2015-01-21	2015-01-21			-9.02	EUR	free time	sport	\N	t
27905	db	2015-01-22	2015-01-22			-7.95	EUR	living	food	\N	t
27904	db	2015-01-22	2015-01-22			-9.26	EUR	free time	entertainment	\N	t
27933	db	2015-01-23	2015-01-23			-5.69	EUR	living	food	\N	t
27932	db	2015-01-23	2015-01-23			-1.97	EUR	free time	going out	\N	t
27931	db	2015-01-23	2015-01-23			-3.09	EUR	mobility	gas	\N	t
27925	db	2015-01-23	2015-01-23			-20.00	EUR	other	cash	\N	t
27960	db	2015-01-24	2015-01-24			-8.61	EUR	health	wellness	\N	t
27959	db	2015-01-24	2015-01-24			-11.58	EUR	free time	going out	\N	t
28001	db	2015-01-26	2015-01-26			-8.52	EUR	living	food	\N	t
28027	db	2015-01-27	2015-01-27			-5.81	EUR	free time	hobbies	\N	t
28053	db	2015-01-28	2015-01-28			-7.47	EUR	free time	sport	\N	t
28080	db	2015-01-29	2015-01-29			-8.33	EUR	living	food	\N	t
28079	db	2015-01-29	2015-01-29			-1.70	EUR	free time	entertainment	\N	t
28108	db	2015-01-30	2015-01-30			-16.20	EUR	living	food	\N	t
28107	db	2015-01-30	2015-01-30			-7.32	EUR	free time	going out	\N	t
28106	db	2015-01-30	2015-01-30			-7.06	EUR	mobility	gas	\N	t
28100	db	2015-01-30	2015-01-30			-20.00	EUR	other	cash	\N	t
28135	db	2015-01-31	2015-01-31			-13.32	EUR	health	wellness	\N	t
28134	db	2015-01-31	2015-01-31			-15.22	EUR	free time	going out	\N	t
28161	db	2015-02-01	2015-02-01			-10.00	EUR	house	phone	\N	t
28187	db	2015-02-02	2015-02-02			-10.00	EUR	house	electricity	\N	t
28176	db	2015-02-02	2015-02-02			-9.38	EUR	living	food	\N	t
28213	db	2015-02-03	2015-02-03			-10.00	EUR	house	internet	\N	t
28202	db	2015-02-03	2015-02-03			-6.30	EUR	free time	hobbies	\N	t
28239	db	2015-02-04	2015-02-04			-250.00	EUR	house	rent	\N	t
28228	db	2015-02-04	2015-02-04			-2.10	EUR	free time	sport	\N	t
28265	db	2015-02-05	2015-02-05			-10.00	EUR	finance	costs and fees	\N	t
28255	db	2015-02-05	2015-02-05			-9.23	EUR	living	food	\N	t
28254	db	2015-02-05	2015-02-05			-9.04	EUR	free time	entertainment	\N	t
28291	db	2015-02-06	2015-02-06			-50.00	EUR	finance	insurance	\N	t
28283	db	2015-02-06	2015-02-06			-13.70	EUR	living	food	\N	t
28282	db	2015-02-06	2015-02-06			-16.19	EUR	free time	going out	\N	t
28281	db	2015-02-06	2015-02-06			-1.45	EUR	mobility	gas	\N	t
28275	db	2015-02-06	2015-02-06			-20.00	EUR	other	cash	\N	t
28317	db	2015-02-07	2015-02-07			-67.68	EUR	health	doctor visits	\N	t
28310	db	2015-02-07	2015-02-07			-0.96	EUR	health	wellness	\N	t
28309	db	2015-02-07	2015-02-07			-19.35	EUR	free time	going out	\N	t
28343	db	2015-02-08	2015-02-08			1000.00	EUR	work and training	salary	\N	t
28351	db	2015-02-09	2015-02-09			-8.55	EUR	living	food	\N	t
28394	db	2015-02-10	2015-02-10			-21.69	EUR	living	pets	\N	t
28377	db	2015-02-10	2015-02-10			-8.02	EUR	free time	hobbies	\N	t
28403	db	2015-02-11	2015-02-11			-6.50	EUR	free time	sport	\N	t
28430	db	2015-02-12	2015-02-12			-5.76	EUR	living	food	\N	t
28429	db	2015-02-12	2015-02-12			-5.16	EUR	free time	entertainment	\N	t
28458	db	2015-02-13	2015-02-13			-11.39	EUR	living	food	\N	t
28457	db	2015-02-13	2015-02-13			-19.31	EUR	free time	going out	\N	t
28456	db	2015-02-13	2015-02-13			-7.44	EUR	mobility	gas	\N	t
28450	db	2015-02-13	2015-02-13			-20.00	EUR	other	cash	\N	t
28485	db	2015-02-14	2015-02-14			-2.71	EUR	health	wellness	\N	t
28484	db	2015-02-14	2015-02-14			-19.15	EUR	free time	going out	\N	t
28520	db	2015-02-15	2015-02-15			-27.24	EUR	living	household	\N	t
28526	db	2015-02-16	2015-02-16			-3.03	EUR	living	food	\N	t
28552	db	2015-02-17	2015-02-17			-6.65	EUR	free time	hobbies	\N	t
28578	db	2015-02-18	2015-02-18			-9.59	EUR	free time	sport	\N	t
28605	db	2015-02-19	2015-02-19			-1.45	EUR	living	food	\N	t
28604	db	2015-02-19	2015-02-19			-0.32	EUR	free time	entertainment	\N	t
28647	db	2015-02-20	2015-02-20			-53.25	EUR	free time	gadgets	\N	t
28646	db	2015-02-20	2015-02-20			-66.85	EUR	living	clothes	\N	t
28633	db	2015-02-20	2015-02-20			-6.68	EUR	living	food	\N	t
28632	db	2015-02-20	2015-02-20			-6.41	EUR	free time	going out	\N	t
28631	db	2015-02-20	2015-02-20			-4.48	EUR	mobility	gas	\N	t
28625	db	2015-02-20	2015-02-20			-20.00	EUR	other	cash	\N	t
28660	db	2015-02-21	2015-02-21			-3.23	EUR	health	wellness	\N	t
28659	db	2015-02-21	2015-02-21			-16.43	EUR	free time	going out	\N	t
28701	db	2015-02-23	2015-02-23			-8.80	EUR	living	food	\N	t
28727	db	2015-02-24	2015-02-24			-5.38	EUR	free time	hobbies	\N	t
28753	db	2015-02-25	2015-02-25			-1.52	EUR	free time	sport	\N	t
28780	db	2015-02-26	2015-02-26			-3.78	EUR	living	food	\N	t
28779	db	2015-02-26	2015-02-26			-7.98	EUR	free time	entertainment	\N	t
28808	db	2015-02-27	2015-02-27			-12.89	EUR	living	food	\N	t
28807	db	2015-02-27	2015-02-27			-2.99	EUR	free time	going out	\N	t
28806	db	2015-02-27	2015-02-27			-2.20	EUR	mobility	gas	\N	t
28800	db	2015-02-27	2015-02-27			-20.00	EUR	other	cash	\N	t
28835	db	2015-02-28	2015-02-28			-17.46	EUR	health	wellness	\N	t
28834	db	2015-02-28	2015-02-28			-19.88	EUR	free time	going out	\N	t
28861	db	2015-03-01	2015-03-01			-10.00	EUR	house	phone	\N	t
28887	db	2015-03-02	2015-03-02			-10.00	EUR	house	electricity	\N	t
28876	db	2015-03-02	2015-03-02			-9.83	EUR	living	food	\N	t
28913	db	2015-03-03	2015-03-03			-10.00	EUR	house	internet	\N	t
28902	db	2015-03-03	2015-03-03			-8.09	EUR	free time	hobbies	\N	t
28939	db	2015-03-04	2015-03-04			-250.00	EUR	house	rent	\N	t
28928	db	2015-03-04	2015-03-04			-1.06	EUR	free time	sport	\N	t
28965	db	2015-03-05	2015-03-05			-10.00	EUR	finance	costs and fees	\N	t
28955	db	2015-03-05	2015-03-05			-3.55	EUR	living	food	\N	t
28954	db	2015-03-05	2015-03-05			-4.85	EUR	free time	entertainment	\N	t
28991	db	2015-03-06	2015-03-06			-50.00	EUR	finance	insurance	\N	t
28983	db	2015-03-06	2015-03-06			-2.23	EUR	living	food	\N	t
28982	db	2015-03-06	2015-03-06			-18.25	EUR	free time	going out	\N	t
28981	db	2015-03-06	2015-03-06			-13.62	EUR	mobility	gas	\N	t
28975	db	2015-03-06	2015-03-06			-20.00	EUR	other	cash	\N	t
29017	db	2015-03-07	2015-03-07			-62.96	EUR	health	doctor visits	\N	t
29010	db	2015-03-07	2015-03-07			-4.06	EUR	health	wellness	\N	t
29009	db	2015-03-07	2015-03-07			-11.16	EUR	free time	going out	\N	t
29043	db	2015-03-08	2015-03-08			1000.00	EUR	work and training	salary	\N	t
29051	db	2015-03-09	2015-03-09			-7.35	EUR	living	food	\N	t
29094	db	2015-03-10	2015-03-10			-34.71	EUR	living	pets	\N	t
29077	db	2015-03-10	2015-03-10			-1.50	EUR	free time	hobbies	\N	t
29103	db	2015-03-11	2015-03-11			-6.89	EUR	free time	sport	\N	t
29130	db	2015-03-12	2015-03-12			-9.91	EUR	living	food	\N	t
29129	db	2015-03-12	2015-03-12			-3.26	EUR	free time	entertainment	\N	t
29158	db	2015-03-13	2015-03-13			-0.14	EUR	living	food	\N	t
29157	db	2015-03-13	2015-03-13			-5.43	EUR	free time	going out	\N	t
29156	db	2015-03-13	2015-03-13			-2.29	EUR	mobility	gas	\N	t
29150	db	2015-03-13	2015-03-13			-20.00	EUR	other	cash	\N	t
29185	db	2015-03-14	2015-03-14			-7.65	EUR	health	wellness	\N	t
29184	db	2015-03-14	2015-03-14			-8.13	EUR	free time	going out	\N	t
29220	db	2015-03-15	2015-03-15			-29.72	EUR	living	household	\N	t
29226	db	2015-03-16	2015-03-16			-1.92	EUR	living	food	\N	t
29252	db	2015-03-17	2015-03-17			-2.60	EUR	free time	hobbies	\N	t
29278	db	2015-03-18	2015-03-18			-4.97	EUR	free time	sport	\N	t
29305	db	2015-03-19	2015-03-19			-4.76	EUR	living	food	\N	t
29304	db	2015-03-19	2015-03-19			-0.39	EUR	free time	entertainment	\N	t
29347	db	2015-03-20	2015-03-20			-26.54	EUR	free time	gadgets	\N	t
29346	db	2015-03-20	2015-03-20			-40.37	EUR	living	clothes	\N	t
29333	db	2015-03-20	2015-03-20			-7.82	EUR	living	food	\N	t
29332	db	2015-03-20	2015-03-20			-7.72	EUR	free time	going out	\N	t
29331	db	2015-03-20	2015-03-20			-16.25	EUR	mobility	gas	\N	t
29325	db	2015-03-20	2015-03-20			-20.00	EUR	other	cash	\N	t
29360	db	2015-03-21	2015-03-21			-10.04	EUR	health	wellness	\N	t
29359	db	2015-03-21	2015-03-21			-2.98	EUR	free time	going out	\N	t
29401	db	2015-03-23	2015-03-23			-3.57	EUR	living	food	\N	t
29427	db	2015-03-24	2015-03-24			-5.60	EUR	free time	hobbies	\N	t
29453	db	2015-03-25	2015-03-25			-1.26	EUR	free time	sport	\N	t
29480	db	2015-03-26	2015-03-26			-0.26	EUR	living	food	\N	t
29479	db	2015-03-26	2015-03-26			-2.77	EUR	free time	entertainment	\N	t
29508	db	2015-03-27	2015-03-27			-19.91	EUR	living	food	\N	t
29507	db	2015-03-27	2015-03-27			-0.93	EUR	free time	going out	\N	t
29506	db	2015-03-27	2015-03-27			-5.95	EUR	mobility	gas	\N	t
29500	db	2015-03-27	2015-03-27			-20.00	EUR	other	cash	\N	t
29535	db	2015-03-28	2015-03-28			-11.71	EUR	health	wellness	\N	t
29534	db	2015-03-28	2015-03-28			-8.97	EUR	free time	going out	\N	t
29576	db	2015-03-30	2015-03-30			-8.26	EUR	living	food	\N	t
29602	db	2015-03-31	2015-03-31			-2.77	EUR	free time	hobbies	\N	t
29636	db	2015-04-01	2015-04-01			-10.00	EUR	house	phone	\N	t
29628	db	2015-04-01	2015-04-01			-1.25	EUR	free time	sport	\N	t
29662	db	2015-04-02	2015-04-02			-10.00	EUR	house	electricity	\N	t
29655	db	2015-04-02	2015-04-02			-9.95	EUR	living	food	\N	t
29654	db	2015-04-02	2015-04-02			-1.54	EUR	free time	entertainment	\N	t
29688	db	2015-04-03	2015-04-03			-10.00	EUR	house	internet	\N	t
29683	db	2015-04-03	2015-04-03			-2.25	EUR	living	food	\N	t
29682	db	2015-04-03	2015-04-03			-16.27	EUR	free time	going out	\N	t
29681	db	2015-04-03	2015-04-03			-17.08	EUR	mobility	gas	\N	t
29675	db	2015-04-03	2015-04-03			-20.00	EUR	other	cash	\N	t
29714	db	2015-04-04	2015-04-04			-250.00	EUR	house	rent	\N	t
29710	db	2015-04-04	2015-04-04			-13.71	EUR	health	wellness	\N	t
29709	db	2015-04-04	2015-04-04			-8.39	EUR	free time	going out	\N	t
29740	db	2015-04-05	2015-04-05			-10.00	EUR	finance	costs and fees	\N	t
29766	db	2015-04-06	2015-04-06			-50.00	EUR	finance	insurance	\N	t
29751	db	2015-04-06	2015-04-06			-9.51	EUR	living	food	\N	t
29792	db	2015-04-07	2015-04-07			-90.93	EUR	health	doctor visits	\N	t
29777	db	2015-04-07	2015-04-07			-1.04	EUR	free time	hobbies	\N	t
29818	db	2015-04-08	2015-04-08			1000.00	EUR	work and training	salary	\N	t
29803	db	2015-04-08	2015-04-08			-6.09	EUR	free time	sport	\N	t
29830	db	2015-04-09	2015-04-09			-4.95	EUR	living	food	\N	t
29829	db	2015-04-09	2015-04-09			-4.26	EUR	free time	entertainment	\N	t
29869	db	2015-04-10	2015-04-10			-40.71	EUR	living	pets	\N	t
29858	db	2015-04-10	2015-04-10			-1.76	EUR	living	food	\N	t
29857	db	2015-04-10	2015-04-10			-19.27	EUR	free time	going out	\N	t
29856	db	2015-04-10	2015-04-10			-11.39	EUR	mobility	gas	\N	t
29850	db	2015-04-10	2015-04-10			-20.00	EUR	other	cash	\N	t
29885	db	2015-04-11	2015-04-11			-6.96	EUR	health	wellness	\N	t
29884	db	2015-04-11	2015-04-11			-4.82	EUR	free time	going out	\N	t
29926	db	2015-04-13	2015-04-13			-8.99	EUR	living	food	\N	t
29952	db	2015-04-14	2015-04-14			-6.16	EUR	free time	hobbies	\N	t
29995	db	2015-04-15	2015-04-15			-75.70	EUR	living	household	\N	t
29978	db	2015-04-15	2015-04-15			-2.00	EUR	free time	sport	\N	t
30005	db	2015-04-16	2015-04-16			-8.67	EUR	living	food	\N	t
30004	db	2015-04-16	2015-04-16			-9.44	EUR	free time	entertainment	\N	t
30033	db	2015-04-17	2015-04-17			-12.78	EUR	living	food	\N	t
30032	db	2015-04-17	2015-04-17			-13.49	EUR	free time	going out	\N	t
30031	db	2015-04-17	2015-04-17			-6.86	EUR	mobility	gas	\N	t
30025	db	2015-04-17	2015-04-17			-20.00	EUR	other	cash	\N	t
30060	db	2015-04-18	2015-04-18			-9.11	EUR	health	wellness	\N	t
30059	db	2015-04-18	2015-04-18			-7.17	EUR	free time	going out	\N	t
30122	db	2015-04-20	2015-04-20			-36.01	EUR	free time	gadgets	\N	t
30121	db	2015-04-20	2015-04-20			-24.97	EUR	living	clothes	\N	t
30101	db	2015-04-20	2015-04-20			-7.24	EUR	living	food	\N	t
30127	db	2015-04-21	2015-04-21			-8.10	EUR	free time	hobbies	\N	t
30153	db	2015-04-22	2015-04-22			-9.56	EUR	free time	sport	\N	t
30180	db	2015-04-23	2015-04-23			-8.82	EUR	living	food	\N	t
30179	db	2015-04-23	2015-04-23			-0.16	EUR	free time	entertainment	\N	t
30208	db	2015-04-24	2015-04-24			-17.26	EUR	living	food	\N	t
30207	db	2015-04-24	2015-04-24			-19.91	EUR	free time	going out	\N	t
30206	db	2015-04-24	2015-04-24			-4.82	EUR	mobility	gas	\N	t
30200	db	2015-04-24	2015-04-24			-20.00	EUR	other	cash	\N	t
30235	db	2015-04-25	2015-04-25			-1.49	EUR	health	wellness	\N	t
30234	db	2015-04-25	2015-04-25			-9.65	EUR	free time	going out	\N	t
30276	db	2015-04-27	2015-04-27			-8.06	EUR	living	food	\N	t
30302	db	2015-04-28	2015-04-28			-3.99	EUR	free time	hobbies	\N	t
30328	db	2015-04-29	2015-04-29			-7.23	EUR	free time	sport	\N	t
30355	db	2015-04-30	2015-04-30			-9.80	EUR	living	food	\N	t
30354	db	2015-04-30	2015-04-30			-7.57	EUR	free time	entertainment	\N	t
30386	db	2015-05-01	2015-05-01			-10.00	EUR	house	phone	\N	t
30383	db	2015-05-01	2015-05-01			-15.90	EUR	living	food	\N	t
30382	db	2015-05-01	2015-05-01			-19.49	EUR	free time	going out	\N	t
30381	db	2015-05-01	2015-05-01			-10.15	EUR	mobility	gas	\N	t
30375	db	2015-05-01	2015-05-01			-20.00	EUR	other	cash	\N	t
30412	db	2015-05-02	2015-05-02			-10.00	EUR	house	electricity	\N	t
30410	db	2015-05-02	2015-05-02			-3.31	EUR	health	wellness	\N	t
30409	db	2015-05-02	2015-05-02			-19.90	EUR	free time	going out	\N	t
30438	db	2015-05-03	2015-05-03			-10.00	EUR	house	internet	\N	t
30464	db	2015-05-04	2015-05-04			-250.00	EUR	house	rent	\N	t
30451	db	2015-05-04	2015-05-04			-9.69	EUR	living	food	\N	t
30490	db	2015-05-05	2015-05-05			-10.00	EUR	finance	costs and fees	\N	t
30477	db	2015-05-05	2015-05-05			-6.89	EUR	free time	hobbies	\N	t
30516	db	2015-05-06	2015-05-06			-50.00	EUR	finance	insurance	\N	t
30503	db	2015-05-06	2015-05-06			-1.81	EUR	free time	sport	\N	t
30542	db	2015-05-07	2015-05-07			-82.48	EUR	health	doctor visits	\N	t
30530	db	2015-05-07	2015-05-07			-6.12	EUR	living	food	\N	t
30529	db	2015-05-07	2015-05-07			-8.79	EUR	free time	entertainment	\N	t
30568	db	2015-05-08	2015-05-08			1000.00	EUR	work and training	salary	\N	t
30558	db	2015-05-08	2015-05-08			-0.27	EUR	living	food	\N	t
30557	db	2015-05-08	2015-05-08			-0.42	EUR	free time	going out	\N	t
30556	db	2015-05-08	2015-05-08			-4.41	EUR	mobility	gas	\N	t
30550	db	2015-05-08	2015-05-08			-20.00	EUR	other	cash	\N	t
30585	db	2015-05-09	2015-05-09			-11.76	EUR	health	wellness	\N	t
30584	db	2015-05-09	2015-05-09			-19.28	EUR	free time	going out	\N	t
30619	db	2015-05-10	2015-05-10			-31.20	EUR	living	pets	\N	t
30626	db	2015-05-11	2015-05-11			-3.12	EUR	living	food	\N	t
30652	db	2015-05-12	2015-05-12			-7.94	EUR	free time	hobbies	\N	t
30678	db	2015-05-13	2015-05-13			-4.39	EUR	free time	sport	\N	t
30705	db	2015-05-14	2015-05-14			-6.36	EUR	living	food	\N	t
30704	db	2015-05-14	2015-05-14			-2.25	EUR	free time	entertainment	\N	t
30745	db	2015-05-15	2015-05-15			-26.64	EUR	living	household	\N	t
30733	db	2015-05-15	2015-05-15			-11.94	EUR	living	food	\N	t
30732	db	2015-05-15	2015-05-15			-2.50	EUR	free time	going out	\N	t
30731	db	2015-05-15	2015-05-15			-4.58	EUR	mobility	gas	\N	t
30725	db	2015-05-15	2015-05-15			-20.00	EUR	other	cash	\N	t
30760	db	2015-05-16	2015-05-16			-13.83	EUR	health	wellness	\N	t
30759	db	2015-05-16	2015-05-16			-11.68	EUR	free time	going out	\N	t
30801	db	2015-05-18	2015-05-18			-5.82	EUR	living	food	\N	t
30827	db	2015-05-19	2015-05-19			-4.22	EUR	free time	hobbies	\N	t
30872	db	2015-05-20	2015-05-20			-67.06	EUR	free time	gadgets	\N	t
30871	db	2015-05-20	2015-05-20			-32.41	EUR	living	clothes	\N	t
30853	db	2015-05-20	2015-05-20			-4.61	EUR	free time	sport	\N	t
30880	db	2015-05-21	2015-05-21			-2.48	EUR	living	food	\N	t
30879	db	2015-05-21	2015-05-21			-0.67	EUR	free time	entertainment	\N	t
30908	db	2015-05-22	2015-05-22			-15.42	EUR	living	food	\N	t
30907	db	2015-05-22	2015-05-22			-5.77	EUR	free time	going out	\N	t
30906	db	2015-05-22	2015-05-22			-12.58	EUR	mobility	gas	\N	t
30900	db	2015-05-22	2015-05-22			-20.00	EUR	other	cash	\N	t
30935	db	2015-05-23	2015-05-23			-2.48	EUR	health	wellness	\N	t
30934	db	2015-05-23	2015-05-23			-7.63	EUR	free time	going out	\N	t
30976	db	2015-05-25	2015-05-25			-3.74	EUR	living	food	\N	t
31002	db	2015-05-26	2015-05-26			-8.89	EUR	free time	hobbies	\N	t
31028	db	2015-05-27	2015-05-27			-1.39	EUR	free time	sport	\N	t
31055	db	2015-05-28	2015-05-28			-9.81	EUR	living	food	\N	t
31054	db	2015-05-28	2015-05-28			-1.57	EUR	free time	entertainment	\N	t
31083	db	2015-05-29	2015-05-29			-12.82	EUR	living	food	\N	t
31082	db	2015-05-29	2015-05-29			-11.31	EUR	free time	going out	\N	t
31081	db	2015-05-29	2015-05-29			-0.02	EUR	mobility	gas	\N	t
31075	db	2015-05-29	2015-05-29			-20.00	EUR	other	cash	\N	t
31110	db	2015-05-30	2015-05-30			-13.99	EUR	health	wellness	\N	t
31109	db	2015-05-30	2015-05-30			-9.85	EUR	free time	going out	\N	t
31161	db	2015-06-01	2015-06-01			-10.00	EUR	house	phone	\N	t
31151	db	2015-06-01	2015-06-01			-2.93	EUR	living	food	\N	t
31187	db	2015-06-02	2015-06-02			-10.00	EUR	house	electricity	\N	t
31177	db	2015-06-02	2015-06-02			-9.08	EUR	free time	hobbies	\N	t
31213	db	2015-06-03	2015-06-03			-10.00	EUR	house	internet	\N	t
31203	db	2015-06-03	2015-06-03			-5.85	EUR	free time	sport	\N	t
31239	db	2015-06-04	2015-06-04			-250.00	EUR	house	rent	\N	t
31230	db	2015-06-04	2015-06-04			-4.24	EUR	living	food	\N	t
31229	db	2015-06-04	2015-06-04			-2.93	EUR	free time	entertainment	\N	t
31265	db	2015-06-05	2015-06-05			-10.00	EUR	finance	costs and fees	\N	t
31258	db	2015-06-05	2015-06-05			-0.67	EUR	living	food	\N	t
31257	db	2015-06-05	2015-06-05			-6.41	EUR	free time	going out	\N	t
31256	db	2015-06-05	2015-06-05			-11.57	EUR	mobility	gas	\N	t
31250	db	2015-06-05	2015-06-05			-20.00	EUR	other	cash	\N	t
31291	db	2015-06-06	2015-06-06			-50.00	EUR	finance	insurance	\N	t
31285	db	2015-06-06	2015-06-06			-9.70	EUR	health	wellness	\N	t
31284	db	2015-06-06	2015-06-06			-7.21	EUR	free time	going out	\N	t
31317	db	2015-06-07	2015-06-07			-82.13	EUR	health	doctor visits	\N	t
31343	db	2015-06-08	2015-06-08			1000.00	EUR	work and training	salary	\N	t
31326	db	2015-06-08	2015-06-08			-4.95	EUR	living	food	\N	t
31352	db	2015-06-09	2015-06-09			-4.56	EUR	free time	hobbies	\N	t
31394	db	2015-06-10	2015-06-10			-23.28	EUR	living	pets	\N	t
31378	db	2015-06-10	2015-06-10			-4.97	EUR	free time	sport	\N	t
31405	db	2015-06-11	2015-06-11			-6.00	EUR	living	food	\N	t
31404	db	2015-06-11	2015-06-11			-8.64	EUR	free time	entertainment	\N	t
31433	db	2015-06-12	2015-06-12			-0.47	EUR	living	food	\N	t
31432	db	2015-06-12	2015-06-12			-9.01	EUR	free time	going out	\N	t
31431	db	2015-06-12	2015-06-12			-12.98	EUR	mobility	gas	\N	t
31425	db	2015-06-12	2015-06-12			-20.00	EUR	other	cash	\N	t
31460	db	2015-06-13	2015-06-13			-19.25	EUR	health	wellness	\N	t
31459	db	2015-06-13	2015-06-13			-8.83	EUR	free time	going out	\N	t
31520	db	2015-06-15	2015-06-15			-38.50	EUR	living	household	\N	t
31501	db	2015-06-15	2015-06-15			-5.05	EUR	living	food	\N	t
31527	db	2015-06-16	2015-06-16			-7.40	EUR	free time	hobbies	\N	t
31553	db	2015-06-17	2015-06-17			-9.12	EUR	free time	sport	\N	t
31580	db	2015-06-18	2015-06-18			-3.82	EUR	living	food	\N	t
31579	db	2015-06-18	2015-06-18			-6.15	EUR	free time	entertainment	\N	t
31608	db	2015-06-19	2015-06-19			-9.11	EUR	living	food	\N	t
31607	db	2015-06-19	2015-06-19			-11.72	EUR	free time	going out	\N	t
31606	db	2015-06-19	2015-06-19			-9.53	EUR	mobility	gas	\N	t
31600	db	2015-06-19	2015-06-19			-20.00	EUR	other	cash	\N	t
31647	db	2015-06-20	2015-06-20			-70.07	EUR	free time	gadgets	\N	t
31646	db	2015-06-20	2015-06-20			-16.85	EUR	living	clothes	\N	t
31635	db	2015-06-20	2015-06-20			-14.64	EUR	health	wellness	\N	t
31634	db	2015-06-20	2015-06-20			-1.70	EUR	free time	going out	\N	t
31676	db	2015-06-22	2015-06-22			-0.35	EUR	living	food	\N	t
31702	db	2015-06-23	2015-06-23			-0.15	EUR	free time	hobbies	\N	t
31728	db	2015-06-24	2015-06-24			-8.26	EUR	free time	sport	\N	t
31755	db	2015-06-25	2015-06-25			-9.46	EUR	living	food	\N	t
31754	db	2015-06-25	2015-06-25			-8.37	EUR	free time	entertainment	\N	t
31783	db	2015-06-26	2015-06-26			-15.78	EUR	living	food	\N	t
31782	db	2015-06-26	2015-06-26			-12.46	EUR	free time	going out	\N	t
31781	db	2015-06-26	2015-06-26			-13.63	EUR	mobility	gas	\N	t
31775	db	2015-06-26	2015-06-26			-20.00	EUR	other	cash	\N	t
31810	db	2015-06-27	2015-06-27			-6.46	EUR	health	wellness	\N	t
31809	db	2015-06-27	2015-06-27			-12.99	EUR	free time	going out	\N	t
31873	db	2015-06-29	2015-06-29			-204.35	EUR	free time	travel	\N	t
31851	db	2015-06-29	2015-06-29			-6.46	EUR	living	food	\N	t
31877	db	2015-06-30	2015-06-30			-2.92	EUR	free time	hobbies	\N	t
31911	db	2015-07-01	2015-07-01			-10.00	EUR	house	phone	\N	t
31903	db	2015-07-01	2015-07-01			-4.99	EUR	free time	sport	\N	t
31937	db	2015-07-02	2015-07-02			-10.00	EUR	house	electricity	\N	t
31930	db	2015-07-02	2015-07-02			-1.16	EUR	living	food	\N	t
31929	db	2015-07-02	2015-07-02			-2.90	EUR	free time	entertainment	\N	t
31963	db	2015-07-03	2015-07-03			-10.00	EUR	house	internet	\N	t
31958	db	2015-07-03	2015-07-03			-6.62	EUR	living	food	\N	t
31957	db	2015-07-03	2015-07-03			-0.44	EUR	free time	going out	\N	t
31956	db	2015-07-03	2015-07-03			-19.33	EUR	mobility	gas	\N	t
31950	db	2015-07-03	2015-07-03			-20.00	EUR	other	cash	\N	t
31989	db	2015-07-04	2015-07-04			-250.00	EUR	house	rent	\N	t
31985	db	2015-07-04	2015-07-04			-5.60	EUR	health	wellness	\N	t
31984	db	2015-07-04	2015-07-04			-2.95	EUR	free time	going out	\N	t
32015	db	2015-07-05	2015-07-05			-10.00	EUR	finance	costs and fees	\N	t
32041	db	2015-07-06	2015-07-06			-50.00	EUR	finance	insurance	\N	t
32026	db	2015-07-06	2015-07-06			-0.47	EUR	living	food	\N	t
32067	db	2015-07-07	2015-07-07			-2.39	EUR	health	doctor visits	\N	t
32052	db	2015-07-07	2015-07-07			-0.11	EUR	free time	hobbies	\N	t
32093	db	2015-07-08	2015-07-08			1000.00	EUR	work and training	salary	\N	t
32078	db	2015-07-08	2015-07-08			-7.83	EUR	free time	sport	\N	t
32105	db	2015-07-09	2015-07-09			-0.28	EUR	living	food	\N	t
32104	db	2015-07-09	2015-07-09			-6.00	EUR	free time	entertainment	\N	t
32144	db	2015-07-10	2015-07-10			-15.15	EUR	living	pets	\N	t
32133	db	2015-07-10	2015-07-10			-16.39	EUR	living	food	\N	t
32132	db	2015-07-10	2015-07-10			-13.80	EUR	free time	going out	\N	t
32131	db	2015-07-10	2015-07-10			-2.82	EUR	mobility	gas	\N	t
32125	db	2015-07-10	2015-07-10			-20.00	EUR	other	cash	\N	t
32160	db	2015-07-11	2015-07-11			-16.42	EUR	health	wellness	\N	t
32159	db	2015-07-11	2015-07-11			-17.34	EUR	free time	going out	\N	t
32201	db	2015-07-13	2015-07-13			-0.86	EUR	living	food	\N	t
32227	db	2015-07-14	2015-07-14			-8.31	EUR	free time	hobbies	\N	t
32270	db	2015-07-15	2015-07-15			-17.27	EUR	living	household	\N	t
32253	db	2015-07-15	2015-07-15			-9.67	EUR	free time	sport	\N	t
32280	db	2015-07-16	2015-07-16			-0.78	EUR	living	food	\N	t
32279	db	2015-07-16	2015-07-16			-4.54	EUR	free time	entertainment	\N	t
32308	db	2015-07-17	2015-07-17			-5.33	EUR	living	food	\N	t
32307	db	2015-07-17	2015-07-17			-9.61	EUR	free time	going out	\N	t
32306	db	2015-07-17	2015-07-17			-7.95	EUR	mobility	gas	\N	t
32300	db	2015-07-17	2015-07-17			-20.00	EUR	other	cash	\N	t
32335	db	2015-07-18	2015-07-18			-10.27	EUR	health	wellness	\N	t
32334	db	2015-07-18	2015-07-18			-9.53	EUR	free time	going out	\N	t
32397	db	2015-07-20	2015-07-20			-39.93	EUR	free time	gadgets	\N	t
32396	db	2015-07-20	2015-07-20			-46.57	EUR	living	clothes	\N	t
32376	db	2015-07-20	2015-07-20			-4.89	EUR	living	food	\N	t
32402	db	2015-07-21	2015-07-21			-5.09	EUR	free time	hobbies	\N	t
32428	db	2015-07-22	2015-07-22			-7.23	EUR	free time	sport	\N	t
32455	db	2015-07-23	2015-07-23			-9.70	EUR	living	food	\N	t
32454	db	2015-07-23	2015-07-23			-1.35	EUR	free time	entertainment	\N	t
32483	db	2015-07-24	2015-07-24			-16.70	EUR	living	food	\N	t
32482	db	2015-07-24	2015-07-24			-3.99	EUR	free time	going out	\N	t
32481	db	2015-07-24	2015-07-24			-9.59	EUR	mobility	gas	\N	t
32475	db	2015-07-24	2015-07-24			-20.00	EUR	other	cash	\N	t
32510	db	2015-07-25	2015-07-25			-16.99	EUR	health	wellness	\N	t
32509	db	2015-07-25	2015-07-25			-10.24	EUR	free time	going out	\N	t
32551	db	2015-07-27	2015-07-27			-5.97	EUR	living	food	\N	t
32577	db	2015-07-28	2015-07-28			-4.53	EUR	free time	hobbies	\N	t
32603	db	2015-07-29	2015-07-29			-6.94	EUR	free time	sport	\N	t
32630	db	2015-07-30	2015-07-30			-9.70	EUR	living	food	\N	t
32629	db	2015-07-30	2015-07-30			-0.06	EUR	free time	entertainment	\N	t
32658	db	2015-07-31	2015-07-31			-18.33	EUR	living	food	\N	t
32657	db	2015-07-31	2015-07-31			-13.61	EUR	free time	going out	\N	t
32656	db	2015-07-31	2015-07-31			-0.31	EUR	mobility	gas	\N	t
32650	db	2015-07-31	2015-07-31			-20.00	EUR	other	cash	\N	t
32686	db	2015-08-01	2015-08-01			-10.00	EUR	house	phone	\N	t
32685	db	2015-08-01	2015-08-01			-12.15	EUR	health	wellness	\N	t
32684	db	2015-08-01	2015-08-01			-3.20	EUR	free time	going out	\N	t
32712	db	2015-08-02	2015-08-02			-10.00	EUR	house	electricity	\N	t
32738	db	2015-08-03	2015-08-03			-10.00	EUR	house	internet	\N	t
32726	db	2015-08-03	2015-08-03			-8.36	EUR	living	food	\N	t
32764	db	2015-08-04	2015-08-04			-250.00	EUR	house	rent	\N	t
32752	db	2015-08-04	2015-08-04			-1.85	EUR	free time	hobbies	\N	t
32790	db	2015-08-05	2015-08-05			-10.00	EUR	finance	costs and fees	\N	t
32778	db	2015-08-05	2015-08-05			-8.23	EUR	free time	sport	\N	t
32816	db	2015-08-06	2015-08-06			-50.00	EUR	finance	insurance	\N	t
32805	db	2015-08-06	2015-08-06			-9.16	EUR	living	food	\N	t
32804	db	2015-08-06	2015-08-06			-7.38	EUR	free time	entertainment	\N	t
32842	db	2015-08-07	2015-08-07			-18.72	EUR	health	doctor visits	\N	t
32833	db	2015-08-07	2015-08-07			-3.25	EUR	living	food	\N	t
32832	db	2015-08-07	2015-08-07			-15.93	EUR	free time	going out	\N	t
32831	db	2015-08-07	2015-08-07			-9.28	EUR	mobility	gas	\N	t
32825	db	2015-08-07	2015-08-07			-20.00	EUR	other	cash	\N	t
32868	db	2015-08-08	2015-08-08			1000.00	EUR	work and training	salary	\N	t
32860	db	2015-08-08	2015-08-08			-8.20	EUR	health	wellness	\N	t
32859	db	2015-08-08	2015-08-08			-8.04	EUR	free time	going out	\N	t
32919	db	2015-08-10	2015-08-10			-5.26	EUR	living	pets	\N	t
32901	db	2015-08-10	2015-08-10			-0.59	EUR	living	food	\N	t
32927	db	2015-08-11	2015-08-11			-3.36	EUR	free time	hobbies	\N	t
32953	db	2015-08-12	2015-08-12			-1.89	EUR	free time	sport	\N	t
32980	db	2015-08-13	2015-08-13			-6.33	EUR	living	food	\N	t
32979	db	2015-08-13	2015-08-13			-7.71	EUR	free time	entertainment	\N	t
33008	db	2015-08-14	2015-08-14			-17.85	EUR	living	food	\N	t
33007	db	2015-08-14	2015-08-14			-7.10	EUR	free time	going out	\N	t
33006	db	2015-08-14	2015-08-14			-14.82	EUR	mobility	gas	\N	t
33000	db	2015-08-14	2015-08-14			-20.00	EUR	other	cash	\N	t
33045	db	2015-08-15	2015-08-15			-35.38	EUR	living	household	\N	t
33035	db	2015-08-15	2015-08-15			-1.28	EUR	health	wellness	\N	t
33034	db	2015-08-15	2015-08-15			-13.94	EUR	free time	going out	\N	t
33076	db	2015-08-17	2015-08-17			-3.48	EUR	living	food	\N	t
33102	db	2015-08-18	2015-08-18			-9.04	EUR	free time	hobbies	\N	t
33128	db	2015-08-19	2015-08-19			-9.23	EUR	free time	sport	\N	t
33172	db	2015-08-20	2015-08-20			-66.14	EUR	free time	gadgets	\N	t
33171	db	2015-08-20	2015-08-20			-61.32	EUR	living	clothes	\N	t
33155	db	2015-08-20	2015-08-20			-2.40	EUR	living	food	\N	t
33154	db	2015-08-20	2015-08-20			-3.48	EUR	free time	entertainment	\N	t
33183	db	2015-08-21	2015-08-21			-7.93	EUR	living	food	\N	t
33182	db	2015-08-21	2015-08-21			-13.61	EUR	free time	going out	\N	t
33181	db	2015-08-21	2015-08-21			-2.43	EUR	mobility	gas	\N	t
33175	db	2015-08-21	2015-08-21			-20.00	EUR	other	cash	\N	t
33210	db	2015-08-22	2015-08-22			-17.45	EUR	health	wellness	\N	t
33209	db	2015-08-22	2015-08-22			-10.04	EUR	free time	going out	\N	t
33251	db	2015-08-24	2015-08-24			-5.22	EUR	living	food	\N	t
33277	db	2015-08-25	2015-08-25			-1.18	EUR	free time	hobbies	\N	t
33303	db	2015-08-26	2015-08-26			-6.27	EUR	free time	sport	\N	t
33330	db	2015-08-27	2015-08-27			-8.68	EUR	living	food	\N	t
33329	db	2015-08-27	2015-08-27			-2.00	EUR	free time	entertainment	\N	t
33358	db	2015-08-28	2015-08-28			-13.89	EUR	living	food	\N	t
33357	db	2015-08-28	2015-08-28			-5.85	EUR	free time	going out	\N	t
33356	db	2015-08-28	2015-08-28			-2.94	EUR	mobility	gas	\N	t
33350	db	2015-08-28	2015-08-28			-20.00	EUR	other	cash	\N	t
33385	db	2015-08-29	2015-08-29			-19.84	EUR	health	wellness	\N	t
33384	db	2015-08-29	2015-08-29			-10.99	EUR	free time	going out	\N	t
33426	db	2015-08-31	2015-08-31			-7.71	EUR	living	food	\N	t
33461	db	2015-09-01	2015-09-01			-10.00	EUR	house	phone	\N	t
33452	db	2015-09-01	2015-09-01			-1.76	EUR	free time	hobbies	\N	t
33487	db	2015-09-02	2015-09-02			-10.00	EUR	house	electricity	\N	t
33478	db	2015-09-02	2015-09-02			-2.63	EUR	free time	sport	\N	t
33513	db	2015-09-03	2015-09-03			-10.00	EUR	house	internet	\N	t
33505	db	2015-09-03	2015-09-03			-2.46	EUR	living	food	\N	t
33504	db	2015-09-03	2015-09-03			-2.45	EUR	free time	entertainment	\N	t
33539	db	2015-09-04	2015-09-04			-250.00	EUR	house	rent	\N	t
33533	db	2015-09-04	2015-09-04			-0.14	EUR	living	food	\N	t
33532	db	2015-09-04	2015-09-04			-18.28	EUR	free time	going out	\N	t
33531	db	2015-09-04	2015-09-04			-9.66	EUR	mobility	gas	\N	t
33525	db	2015-09-04	2015-09-04			-20.00	EUR	other	cash	\N	t
33565	db	2015-09-05	2015-09-05			-10.00	EUR	finance	costs and fees	\N	t
33560	db	2015-09-05	2015-09-05			-17.27	EUR	health	wellness	\N	t
33559	db	2015-09-05	2015-09-05			-0.25	EUR	free time	going out	\N	t
33591	db	2015-09-06	2015-09-06			-50.00	EUR	finance	insurance	\N	t
33617	db	2015-09-07	2015-09-07			-28.52	EUR	health	doctor visits	\N	t
33601	db	2015-09-07	2015-09-07			-8.24	EUR	living	food	\N	t
33643	db	2015-09-08	2015-09-08			1000.00	EUR	work and training	salary	\N	t
33627	db	2015-09-08	2015-09-08			-2.54	EUR	free time	hobbies	\N	t
33653	db	2015-09-09	2015-09-09			-2.02	EUR	free time	sport	\N	t
33694	db	2015-09-10	2015-09-10			-75.76	EUR	living	pets	\N	t
33680	db	2015-09-10	2015-09-10			-2.77	EUR	living	food	\N	t
33679	db	2015-09-10	2015-09-10			-8.34	EUR	free time	entertainment	\N	t
33708	db	2015-09-11	2015-09-11			-13.17	EUR	living	food	\N	t
33707	db	2015-09-11	2015-09-11			-0.56	EUR	free time	going out	\N	t
33706	db	2015-09-11	2015-09-11			-12.11	EUR	mobility	gas	\N	t
33700	db	2015-09-11	2015-09-11			-20.00	EUR	other	cash	\N	t
33735	db	2015-09-12	2015-09-12			-3.00	EUR	health	wellness	\N	t
33734	db	2015-09-12	2015-09-12			-11.96	EUR	free time	going out	\N	t
33776	db	2015-09-14	2015-09-14			-7.45	EUR	living	food	\N	t
33820	db	2015-09-15	2015-09-15			-40.82	EUR	living	household	\N	t
33802	db	2015-09-15	2015-09-15			-6.34	EUR	free time	hobbies	\N	t
33828	db	2015-09-16	2015-09-16			-9.14	EUR	free time	sport	\N	t
33855	db	2015-09-17	2015-09-17			-7.39	EUR	living	food	\N	t
33854	db	2015-09-17	2015-09-17			-7.74	EUR	free time	entertainment	\N	t
33883	db	2015-09-18	2015-09-18			-3.44	EUR	living	food	\N	t
33882	db	2015-09-18	2015-09-18			-15.39	EUR	free time	going out	\N	t
33881	db	2015-09-18	2015-09-18			-0.41	EUR	mobility	gas	\N	t
33875	db	2015-09-18	2015-09-18			-20.00	EUR	other	cash	\N	t
33910	db	2015-09-19	2015-09-19			-13.51	EUR	health	wellness	\N	t
33909	db	2015-09-19	2015-09-19			-2.44	EUR	free time	going out	\N	t
33947	db	2015-09-20	2015-09-20			-72.83	EUR	free time	gadgets	\N	t
33946	db	2015-09-20	2015-09-20			-63.99	EUR	living	clothes	\N	t
33951	db	2015-09-21	2015-09-21			-3.06	EUR	living	food	\N	t
33977	db	2015-09-22	2015-09-22			-6.39	EUR	free time	hobbies	\N	t
34003	db	2015-09-23	2015-09-23			-6.15	EUR	free time	sport	\N	t
34030	db	2015-09-24	2015-09-24			-2.33	EUR	living	food	\N	t
34029	db	2015-09-24	2015-09-24			-6.54	EUR	free time	entertainment	\N	t
34058	db	2015-09-25	2015-09-25			-6.53	EUR	living	food	\N	t
34057	db	2015-09-25	2015-09-25			-5.71	EUR	free time	going out	\N	t
34056	db	2015-09-25	2015-09-25			-14.04	EUR	mobility	gas	\N	t
34050	db	2015-09-25	2015-09-25			-20.00	EUR	other	cash	\N	t
34085	db	2015-09-26	2015-09-26			-3.42	EUR	health	wellness	\N	t
34084	db	2015-09-26	2015-09-26			-15.03	EUR	free time	going out	\N	t
34126	db	2015-09-28	2015-09-28			-1.02	EUR	living	food	\N	t
34152	db	2015-09-29	2015-09-29			-7.75	EUR	free time	hobbies	\N	t
34178	db	2015-09-30	2015-09-30			-5.40	EUR	free time	sport	\N	t
34211	db	2015-10-01	2015-10-01			-10.00	EUR	house	phone	\N	t
34205	db	2015-10-01	2015-10-01			-8.58	EUR	living	food	\N	t
34204	db	2015-10-01	2015-10-01			-5.24	EUR	free time	entertainment	\N	t
34237	db	2015-10-02	2015-10-02			-10.00	EUR	house	electricity	\N	t
34233	db	2015-10-02	2015-10-02			-4.16	EUR	living	food	\N	t
34232	db	2015-10-02	2015-10-02			-17.84	EUR	free time	going out	\N	t
34231	db	2015-10-02	2015-10-02			-14.81	EUR	mobility	gas	\N	t
34225	db	2015-10-02	2015-10-02			-20.00	EUR	other	cash	\N	t
34263	db	2015-10-03	2015-10-03			-10.00	EUR	house	internet	\N	t
34260	db	2015-10-03	2015-10-03			-11.50	EUR	health	wellness	\N	t
34259	db	2015-10-03	2015-10-03			-18.31	EUR	free time	going out	\N	t
34289	db	2015-10-04	2015-10-04			-250.00	EUR	house	rent	\N	t
34315	db	2015-10-05	2015-10-05			-10.00	EUR	finance	costs and fees	\N	t
34301	db	2015-10-05	2015-10-05			-7.03	EUR	living	food	\N	t
34341	db	2015-10-06	2015-10-06			-50.00	EUR	finance	insurance	\N	t
34327	db	2015-10-06	2015-10-06			-1.39	EUR	free time	hobbies	\N	t
34367	db	2015-10-07	2015-10-07			-61.36	EUR	health	doctor visits	\N	t
34353	db	2015-10-07	2015-10-07			-8.67	EUR	free time	sport	\N	t
34393	db	2015-10-08	2015-10-08			1000.00	EUR	work and training	salary	\N	t
34380	db	2015-10-08	2015-10-08			-4.86	EUR	living	food	\N	t
34379	db	2015-10-08	2015-10-08			-4.56	EUR	free time	entertainment	\N	t
34408	db	2015-10-09	2015-10-09			-0.33	EUR	living	food	\N	t
34407	db	2015-10-09	2015-10-09			-17.56	EUR	free time	going out	\N	t
34406	db	2015-10-09	2015-10-09			-4.29	EUR	mobility	gas	\N	t
34400	db	2015-10-09	2015-10-09			-20.00	EUR	other	cash	\N	t
34444	db	2015-10-10	2015-10-10			-67.43	EUR	living	pets	\N	t
34435	db	2015-10-10	2015-10-10			-2.57	EUR	health	wellness	\N	t
34434	db	2015-10-10	2015-10-10			-1.65	EUR	free time	going out	\N	t
34476	db	2015-10-12	2015-10-12			-5.53	EUR	living	food	\N	t
34502	db	2015-10-13	2015-10-13			-4.01	EUR	free time	hobbies	\N	t
34528	db	2015-10-14	2015-10-14			-0.01	EUR	free time	sport	\N	t
34570	db	2015-10-15	2015-10-15			-27.25	EUR	living	household	\N	t
34555	db	2015-10-15	2015-10-15			-9.53	EUR	living	food	\N	t
34554	db	2015-10-15	2015-10-15			-3.24	EUR	free time	entertainment	\N	t
34583	db	2015-10-16	2015-10-16			-14.25	EUR	living	food	\N	t
34582	db	2015-10-16	2015-10-16			-2.82	EUR	free time	going out	\N	t
34581	db	2015-10-16	2015-10-16			-4.38	EUR	mobility	gas	\N	t
34575	db	2015-10-16	2015-10-16			-20.00	EUR	other	cash	\N	t
34610	db	2015-10-17	2015-10-17			-5.78	EUR	health	wellness	\N	t
34609	db	2015-10-17	2015-10-17			-4.50	EUR	free time	going out	\N	t
34651	db	2015-10-19	2015-10-19			-1.39	EUR	living	food	\N	t
34697	db	2015-10-20	2015-10-20			-18.87	EUR	free time	gadgets	\N	t
34696	db	2015-10-20	2015-10-20			-24.39	EUR	living	clothes	\N	t
34677	db	2015-10-20	2015-10-20			-3.81	EUR	free time	hobbies	\N	t
34703	db	2015-10-21	2015-10-21			-2.67	EUR	free time	sport	\N	t
34730	db	2015-10-22	2015-10-22			-7.53	EUR	living	food	\N	t
34729	db	2015-10-22	2015-10-22			-2.77	EUR	free time	entertainment	\N	t
34758	db	2015-10-23	2015-10-23			-8.32	EUR	living	food	\N	t
34757	db	2015-10-23	2015-10-23			-18.62	EUR	free time	going out	\N	t
34756	db	2015-10-23	2015-10-23			-19.02	EUR	mobility	gas	\N	t
34750	db	2015-10-23	2015-10-23			-20.00	EUR	other	cash	\N	t
34785	db	2015-10-24	2015-10-24			-0.32	EUR	health	wellness	\N	t
34784	db	2015-10-24	2015-10-24			-12.07	EUR	free time	going out	\N	t
34826	db	2015-10-26	2015-10-26			-5.18	EUR	living	food	\N	t
34852	db	2015-10-27	2015-10-27			-2.46	EUR	free time	hobbies	\N	t
34878	db	2015-10-28	2015-10-28			-3.48	EUR	free time	sport	\N	t
34905	db	2015-10-29	2015-10-29			-0.42	EUR	living	food	\N	t
34904	db	2015-10-29	2015-10-29			-3.71	EUR	free time	entertainment	\N	t
34933	db	2015-10-30	2015-10-30			-1.32	EUR	living	food	\N	t
34932	db	2015-10-30	2015-10-30			-18.36	EUR	free time	going out	\N	t
34931	db	2015-10-30	2015-10-30			-1.61	EUR	mobility	gas	\N	t
34925	db	2015-10-30	2015-10-30			-20.00	EUR	other	cash	\N	t
34960	db	2015-10-31	2015-10-31			-17.32	EUR	health	wellness	\N	t
34959	db	2015-10-31	2015-10-31			-2.80	EUR	free time	going out	\N	t
34986	db	2015-11-01	2015-11-01			-10.00	EUR	house	phone	\N	t
35012	db	2015-11-02	2015-11-02			-10.00	EUR	house	electricity	\N	t
35001	db	2015-11-02	2015-11-02			-6.16	EUR	living	food	\N	t
35038	db	2015-11-03	2015-11-03			-10.00	EUR	house	internet	\N	t
35027	db	2015-11-03	2015-11-03			-2.82	EUR	free time	hobbies	\N	t
35064	db	2015-11-04	2015-11-04			-250.00	EUR	house	rent	\N	t
35053	db	2015-11-04	2015-11-04			-2.42	EUR	free time	sport	\N	t
35090	db	2015-11-05	2015-11-05			-10.00	EUR	finance	costs and fees	\N	t
35080	db	2015-11-05	2015-11-05			-1.30	EUR	living	food	\N	t
35079	db	2015-11-05	2015-11-05			-2.22	EUR	free time	entertainment	\N	t
35116	db	2015-11-06	2015-11-06			-50.00	EUR	finance	insurance	\N	t
35108	db	2015-11-06	2015-11-06			-11.03	EUR	living	food	\N	t
35107	db	2015-11-06	2015-11-06			-11.37	EUR	free time	going out	\N	t
35106	db	2015-11-06	2015-11-06			-14.26	EUR	mobility	gas	\N	t
35100	db	2015-11-06	2015-11-06			-20.00	EUR	other	cash	\N	t
35142	db	2015-11-07	2015-11-07			-80.57	EUR	health	doctor visits	\N	t
35135	db	2015-11-07	2015-11-07			-8.36	EUR	health	wellness	\N	t
35134	db	2015-11-07	2015-11-07			-3.42	EUR	free time	going out	\N	t
35168	db	2015-11-08	2015-11-08			1000.00	EUR	work and training	salary	\N	t
35176	db	2015-11-09	2015-11-09			-3.76	EUR	living	food	\N	t
35219	db	2015-11-10	2015-11-10			-18.31	EUR	living	pets	\N	t
35202	db	2015-11-10	2015-11-10			-3.92	EUR	free time	hobbies	\N	t
35228	db	2015-11-11	2015-11-11			-6.59	EUR	free time	sport	\N	t
35255	db	2015-11-12	2015-11-12			-2.27	EUR	living	food	\N	t
35254	db	2015-11-12	2015-11-12			-9.31	EUR	free time	entertainment	\N	t
35283	db	2015-11-13	2015-11-13			-10.53	EUR	living	food	\N	t
35282	db	2015-11-13	2015-11-13			-5.11	EUR	free time	going out	\N	t
35281	db	2015-11-13	2015-11-13			-17.20	EUR	mobility	gas	\N	t
35275	db	2015-11-13	2015-11-13			-20.00	EUR	other	cash	\N	t
35310	db	2015-11-14	2015-11-14			-18.58	EUR	health	wellness	\N	t
35309	db	2015-11-14	2015-11-14			-19.48	EUR	free time	going out	\N	t
35345	db	2015-11-15	2015-11-15			-25.45	EUR	living	household	\N	t
35351	db	2015-11-16	2015-11-16			-1.05	EUR	living	food	\N	t
35377	db	2015-11-17	2015-11-17			-9.73	EUR	free time	hobbies	\N	t
35403	db	2015-11-18	2015-11-18			-2.00	EUR	free time	sport	\N	t
35430	db	2015-11-19	2015-11-19			-9.37	EUR	living	food	\N	t
35429	db	2015-11-19	2015-11-19			-2.95	EUR	free time	entertainment	\N	t
35472	db	2015-11-20	2015-11-20			-77.61	EUR	free time	gadgets	\N	t
35471	db	2015-11-20	2015-11-20			-33.72	EUR	living	clothes	\N	t
35458	db	2015-11-20	2015-11-20			-3.98	EUR	living	food	\N	t
35457	db	2015-11-20	2015-11-20			-9.98	EUR	free time	going out	\N	t
35456	db	2015-11-20	2015-11-20			-19.67	EUR	mobility	gas	\N	t
35450	db	2015-11-20	2015-11-20			-20.00	EUR	other	cash	\N	t
35485	db	2015-11-21	2015-11-21			-14.66	EUR	health	wellness	\N	t
35484	db	2015-11-21	2015-11-21			-18.20	EUR	free time	going out	\N	t
35526	db	2015-11-23	2015-11-23			-5.08	EUR	living	food	\N	t
35552	db	2015-11-24	2015-11-24			-3.02	EUR	free time	hobbies	\N	t
35578	db	2015-11-25	2015-11-25			-0.61	EUR	free time	sport	\N	t
35605	db	2015-11-26	2015-11-26			-3.40	EUR	living	food	\N	t
35604	db	2015-11-26	2015-11-26			-3.61	EUR	free time	entertainment	\N	t
35633	db	2015-11-27	2015-11-27			-8.60	EUR	living	food	\N	t
35632	db	2015-11-27	2015-11-27			-10.76	EUR	free time	going out	\N	t
35631	db	2015-11-27	2015-11-27			-0.70	EUR	mobility	gas	\N	t
35625	db	2015-11-27	2015-11-27			-20.00	EUR	other	cash	\N	t
35660	db	2015-11-28	2015-11-28			-6.84	EUR	health	wellness	\N	t
35659	db	2015-11-28	2015-11-28			-7.05	EUR	free time	going out	\N	t
35701	db	2015-11-30	2015-11-30			-7.20	EUR	living	food	\N	t
35736	db	2015-12-01	2015-12-01			-10.00	EUR	house	phone	\N	t
35727	db	2015-12-01	2015-12-01			-0.64	EUR	free time	hobbies	\N	t
35762	db	2015-12-02	2015-12-02			-10.00	EUR	house	electricity	\N	t
35753	db	2015-12-02	2015-12-02			-1.93	EUR	free time	sport	\N	t
35788	db	2015-12-03	2015-12-03			-10.00	EUR	house	internet	\N	t
35780	db	2015-12-03	2015-12-03			-6.16	EUR	living	food	\N	t
35779	db	2015-12-03	2015-12-03			-3.28	EUR	free time	entertainment	\N	t
35814	db	2015-12-04	2015-12-04			-250.00	EUR	house	rent	\N	t
35808	db	2015-12-04	2015-12-04			-9.36	EUR	living	food	\N	t
35807	db	2015-12-04	2015-12-04			-10.33	EUR	free time	going out	\N	t
35806	db	2015-12-04	2015-12-04			-10.87	EUR	mobility	gas	\N	t
35800	db	2015-12-04	2015-12-04			-20.00	EUR	other	cash	\N	t
35840	db	2015-12-05	2015-12-05			-10.00	EUR	finance	costs and fees	\N	t
35835	db	2015-12-05	2015-12-05			-2.11	EUR	health	wellness	\N	t
35834	db	2015-12-05	2015-12-05			-12.25	EUR	free time	going out	\N	t
35866	db	2015-12-06	2015-12-06			-50.00	EUR	finance	insurance	\N	t
35892	db	2015-12-07	2015-12-07			-62.89	EUR	health	doctor visits	\N	t
35876	db	2015-12-07	2015-12-07			-9.24	EUR	living	food	\N	t
35918	db	2015-12-08	2015-12-08			1000.00	EUR	work and training	salary	\N	t
35902	db	2015-12-08	2015-12-08			-3.98	EUR	free time	hobbies	\N	t
35928	db	2015-12-09	2015-12-09			-6.14	EUR	free time	sport	\N	t
35969	db	2015-12-10	2015-12-10			-55.03	EUR	living	pets	\N	t
35955	db	2015-12-10	2015-12-10			-1.81	EUR	living	food	\N	t
35954	db	2015-12-10	2015-12-10			-0.54	EUR	free time	entertainment	\N	t
35983	db	2015-12-11	2015-12-11			-0.40	EUR	living	food	\N	t
35982	db	2015-12-11	2015-12-11			-2.10	EUR	free time	going out	\N	t
35981	db	2015-12-11	2015-12-11			-7.08	EUR	mobility	gas	\N	t
35975	db	2015-12-11	2015-12-11			-20.00	EUR	other	cash	\N	t
36010	db	2015-12-12	2015-12-12			-5.58	EUR	health	wellness	\N	t
36009	db	2015-12-12	2015-12-12			-16.52	EUR	free time	going out	\N	t
36051	db	2015-12-14	2015-12-14			-8.86	EUR	living	food	\N	t
36095	db	2015-12-15	2015-12-15			-60.18	EUR	living	household	\N	t
36077	db	2015-12-15	2015-12-15			-4.11	EUR	free time	hobbies	\N	t
36103	db	2015-12-16	2015-12-16			-3.99	EUR	free time	sport	\N	t
36130	db	2015-12-17	2015-12-17			-4.40	EUR	living	food	\N	t
36129	db	2015-12-17	2015-12-17			-8.11	EUR	free time	entertainment	\N	t
36158	db	2015-12-18	2015-12-18			-2.79	EUR	living	food	\N	t
36157	db	2015-12-18	2015-12-18			-12.94	EUR	free time	going out	\N	t
36156	db	2015-12-18	2015-12-18			-6.59	EUR	mobility	gas	\N	t
36150	db	2015-12-18	2015-12-18			-20.00	EUR	other	cash	\N	t
36185	db	2015-12-19	2015-12-19			-10.11	EUR	health	wellness	\N	t
36184	db	2015-12-19	2015-12-19			-10.42	EUR	free time	going out	\N	t
36222	db	2015-12-20	2015-12-20			-12.57	EUR	free time	gadgets	\N	t
36221	db	2015-12-20	2015-12-20			-37.54	EUR	living	clothes	\N	t
36249	db	2015-12-21	2015-12-21			-71.02	EUR	free time	presents	\N	t
36226	db	2015-12-21	2015-12-21			-8.44	EUR	living	food	\N	t
36252	db	2015-12-22	2015-12-22			-6.13	EUR	free time	hobbies	\N	t
36278	db	2015-12-23	2015-12-23			-9.09	EUR	free time	sport	\N	t
36305	db	2015-12-24	2015-12-24			-5.91	EUR	living	food	\N	t
36304	db	2015-12-24	2015-12-24			-8.63	EUR	free time	entertainment	\N	t
36333	db	2015-12-25	2015-12-25			-18.70	EUR	living	food	\N	t
36332	db	2015-12-25	2015-12-25			-11.63	EUR	free time	going out	\N	t
36331	db	2015-12-25	2015-12-25			-0.67	EUR	mobility	gas	\N	t
36325	db	2015-12-25	2015-12-25			-20.00	EUR	other	cash	\N	t
36360	db	2015-12-26	2015-12-26			-13.17	EUR	health	wellness	\N	t
36359	db	2015-12-26	2015-12-26			-15.03	EUR	free time	going out	\N	t
36401	db	2015-12-28	2015-12-28			-6.21	EUR	living	food	\N	t
36427	db	2015-12-29	2015-12-29			-9.92	EUR	free time	hobbies	\N	t
36453	db	2015-12-30	2015-12-30			-9.07	EUR	free time	sport	\N	t
36480	db	2015-12-31	2015-12-31			-1.64	EUR	living	food	\N	t
36479	db	2015-12-31	2015-12-31			-7.42	EUR	free time	entertainment	\N	t
36511	db	2016-01-01	2016-01-01			-10.00	EUR	house	phone	\N	t
36508	db	2016-01-01	2016-01-01			-18.33	EUR	living	food	\N	t
36507	db	2016-01-01	2016-01-01			-7.59	EUR	free time	going out	\N	t
36506	db	2016-01-01	2016-01-01			-13.88	EUR	mobility	gas	\N	t
36500	db	2016-01-01	2016-01-01			-20.00	EUR	other	cash	\N	t
36537	db	2016-01-02	2016-01-02			-10.00	EUR	house	electricity	\N	t
36535	db	2016-01-02	2016-01-02			-17.49	EUR	health	wellness	\N	t
36534	db	2016-01-02	2016-01-02			-9.35	EUR	free time	going out	\N	t
36563	db	2016-01-03	2016-01-03			-10.00	EUR	house	internet	\N	t
36589	db	2016-01-04	2016-01-04			-250.00	EUR	house	rent	\N	t
36576	db	2016-01-04	2016-01-04			-6.80	EUR	living	food	\N	t
36615	db	2016-01-05	2016-01-05			-10.00	EUR	finance	costs and fees	\N	t
36602	db	2016-01-05	2016-01-05			-6.25	EUR	free time	hobbies	\N	t
36641	db	2016-01-06	2016-01-06			-50.00	EUR	finance	insurance	\N	t
36628	db	2016-01-06	2016-01-06			-5.74	EUR	free time	sport	\N	t
36667	db	2016-01-07	2016-01-07			-53.49	EUR	health	doctor visits	\N	t
36655	db	2016-01-07	2016-01-07			-5.89	EUR	living	food	\N	t
36654	db	2016-01-07	2016-01-07			-1.73	EUR	free time	entertainment	\N	t
36693	db	2016-01-08	2016-01-08			1000.00	EUR	work and training	salary	\N	t
36683	db	2016-01-08	2016-01-08			-1.21	EUR	living	food	\N	t
36682	db	2016-01-08	2016-01-08			-14.12	EUR	free time	going out	\N	t
36681	db	2016-01-08	2016-01-08			-11.37	EUR	mobility	gas	\N	t
36675	db	2016-01-08	2016-01-08			-20.00	EUR	other	cash	\N	t
36710	db	2016-01-09	2016-01-09			-9.07	EUR	health	wellness	\N	t
36709	db	2016-01-09	2016-01-09			-13.87	EUR	free time	going out	\N	t
36744	db	2016-01-10	2016-01-10			-22.76	EUR	living	pets	\N	t
36751	db	2016-01-11	2016-01-11			-4.33	EUR	living	food	\N	t
36777	db	2016-01-12	2016-01-12			-6.30	EUR	free time	hobbies	\N	t
36803	db	2016-01-13	2016-01-13			-8.30	EUR	free time	sport	\N	t
36830	db	2016-01-14	2016-01-14			-2.38	EUR	living	food	\N	t
36829	db	2016-01-14	2016-01-14			-1.62	EUR	free time	entertainment	\N	t
36870	db	2016-01-15	2016-01-15			-60.11	EUR	living	household	\N	t
36858	db	2016-01-15	2016-01-15			-11.07	EUR	living	food	\N	t
36857	db	2016-01-15	2016-01-15			-5.80	EUR	free time	going out	\N	t
36856	db	2016-01-15	2016-01-15			-7.52	EUR	mobility	gas	\N	t
36850	db	2016-01-15	2016-01-15			-20.00	EUR	other	cash	\N	t
36885	db	2016-01-16	2016-01-16			-13.50	EUR	health	wellness	\N	t
36884	db	2016-01-16	2016-01-16			-7.12	EUR	free time	going out	\N	t
36926	db	2016-01-18	2016-01-18			-2.01	EUR	living	food	\N	t
36952	db	2016-01-19	2016-01-19			-3.37	EUR	free time	hobbies	\N	t
36997	db	2016-01-20	2016-01-20			-4.34	EUR	free time	gadgets	\N	t
36996	db	2016-01-20	2016-01-20			-9.32	EUR	living	clothes	\N	t
36978	db	2016-01-20	2016-01-20			-4.24	EUR	free time	sport	\N	t
37005	db	2016-01-21	2016-01-21			-8.86	EUR	living	food	\N	t
37004	db	2016-01-21	2016-01-21			-5.02	EUR	free time	entertainment	\N	t
37033	db	2016-01-22	2016-01-22			-11.83	EUR	living	food	\N	t
37032	db	2016-01-22	2016-01-22			-15.22	EUR	free time	going out	\N	t
37031	db	2016-01-22	2016-01-22			-1.96	EUR	mobility	gas	\N	t
37025	db	2016-01-22	2016-01-22			-20.00	EUR	other	cash	\N	t
37060	db	2016-01-23	2016-01-23			-11.85	EUR	health	wellness	\N	t
37059	db	2016-01-23	2016-01-23			-4.39	EUR	free time	going out	\N	t
37101	db	2016-01-25	2016-01-25			-0.10	EUR	living	food	\N	t
37127	db	2016-01-26	2016-01-26			-9.66	EUR	free time	hobbies	\N	t
37153	db	2016-01-27	2016-01-27			-3.31	EUR	free time	sport	\N	t
37180	db	2016-01-28	2016-01-28			-9.39	EUR	living	food	\N	t
37179	db	2016-01-28	2016-01-28			-7.25	EUR	free time	entertainment	\N	t
37208	db	2016-01-29	2016-01-29			-5.58	EUR	living	food	\N	t
37207	db	2016-01-29	2016-01-29			-12.60	EUR	free time	going out	\N	t
37206	db	2016-01-29	2016-01-29			-11.12	EUR	mobility	gas	\N	t
37200	db	2016-01-29	2016-01-29			-20.00	EUR	other	cash	\N	t
37235	db	2016-01-30	2016-01-30			-14.28	EUR	health	wellness	\N	t
37234	db	2016-01-30	2016-01-30			-15.36	EUR	free time	going out	\N	t
37286	db	2016-02-01	2016-02-01			-10.00	EUR	house	phone	\N	t
37276	db	2016-02-01	2016-02-01			-8.86	EUR	living	food	\N	t
37312	db	2016-02-02	2016-02-02			-10.00	EUR	house	electricity	\N	t
37302	db	2016-02-02	2016-02-02			-8.26	EUR	free time	hobbies	\N	t
37338	db	2016-02-03	2016-02-03			-10.00	EUR	house	internet	\N	t
37328	db	2016-02-03	2016-02-03			-5.09	EUR	free time	sport	\N	t
37364	db	2016-02-04	2016-02-04			-250.00	EUR	house	rent	\N	t
37355	db	2016-02-04	2016-02-04			-8.32	EUR	living	food	\N	t
37354	db	2016-02-04	2016-02-04			-3.51	EUR	free time	entertainment	\N	t
37390	db	2016-02-05	2016-02-05			-10.00	EUR	finance	costs and fees	\N	t
37383	db	2016-02-05	2016-02-05			-9.03	EUR	living	food	\N	t
37382	db	2016-02-05	2016-02-05			-2.79	EUR	free time	going out	\N	t
37381	db	2016-02-05	2016-02-05			-3.77	EUR	mobility	gas	\N	t
37375	db	2016-02-05	2016-02-05			-20.00	EUR	other	cash	\N	t
37416	db	2016-02-06	2016-02-06			-50.00	EUR	finance	insurance	\N	t
37410	db	2016-02-06	2016-02-06			-9.50	EUR	health	wellness	\N	t
37409	db	2016-02-06	2016-02-06			-14.83	EUR	free time	going out	\N	t
37442	db	2016-02-07	2016-02-07			-88.06	EUR	health	doctor visits	\N	t
37468	db	2016-02-08	2016-02-08			1000.00	EUR	work and training	salary	\N	t
37451	db	2016-02-08	2016-02-08			-2.05	EUR	living	food	\N	t
37477	db	2016-02-09	2016-02-09			-7.51	EUR	free time	hobbies	\N	t
37519	db	2016-02-10	2016-02-10			-24.47	EUR	living	pets	\N	t
37503	db	2016-02-10	2016-02-10			-9.12	EUR	free time	sport	\N	t
37530	db	2016-02-11	2016-02-11			-5.34	EUR	living	food	\N	t
37529	db	2016-02-11	2016-02-11			-1.29	EUR	free time	entertainment	\N	t
37558	db	2016-02-12	2016-02-12			-15.87	EUR	living	food	\N	t
37557	db	2016-02-12	2016-02-12			-16.63	EUR	free time	going out	\N	t
37556	db	2016-02-12	2016-02-12			-5.79	EUR	mobility	gas	\N	t
37550	db	2016-02-12	2016-02-12			-20.00	EUR	other	cash	\N	t
37585	db	2016-02-13	2016-02-13			-17.91	EUR	health	wellness	\N	t
37584	db	2016-02-13	2016-02-13			-0.75	EUR	free time	going out	\N	t
37645	db	2016-02-15	2016-02-15			-75.67	EUR	living	household	\N	t
37626	db	2016-02-15	2016-02-15			-7.83	EUR	living	food	\N	t
37652	db	2016-02-16	2016-02-16			-3.88	EUR	free time	hobbies	\N	t
37678	db	2016-02-17	2016-02-17			-4.48	EUR	free time	sport	\N	t
37705	db	2016-02-18	2016-02-18			-1.26	EUR	living	food	\N	t
37704	db	2016-02-18	2016-02-18			-6.26	EUR	free time	entertainment	\N	t
37733	db	2016-02-19	2016-02-19			-3.00	EUR	living	food	\N	t
37732	db	2016-02-19	2016-02-19			-13.65	EUR	free time	going out	\N	t
37731	db	2016-02-19	2016-02-19			-14.84	EUR	mobility	gas	\N	t
37725	db	2016-02-19	2016-02-19			-20.00	EUR	other	cash	\N	t
37772	db	2016-02-20	2016-02-20			-28.39	EUR	free time	gadgets	\N	t
37771	db	2016-02-20	2016-02-20			-73.87	EUR	living	clothes	\N	t
37760	db	2016-02-20	2016-02-20			-16.38	EUR	health	wellness	\N	t
37759	db	2016-02-20	2016-02-20			-2.47	EUR	free time	going out	\N	t
37801	db	2016-02-22	2016-02-22			-9.84	EUR	living	food	\N	t
37827	db	2016-02-23	2016-02-23			-0.81	EUR	free time	hobbies	\N	t
37853	db	2016-02-24	2016-02-24			-1.91	EUR	free time	sport	\N	t
37880	db	2016-02-25	2016-02-25			-5.79	EUR	living	food	\N	t
37879	db	2016-02-25	2016-02-25			-5.35	EUR	free time	entertainment	\N	t
37908	db	2016-02-26	2016-02-26			-12.24	EUR	living	food	\N	t
37907	db	2016-02-26	2016-02-26			-2.60	EUR	free time	going out	\N	t
37906	db	2016-02-26	2016-02-26			-0.81	EUR	mobility	gas	\N	t
37900	db	2016-02-26	2016-02-26			-20.00	EUR	other	cash	\N	t
37935	db	2016-02-27	2016-02-27			-19.63	EUR	health	wellness	\N	t
37934	db	2016-02-27	2016-02-27			-3.58	EUR	free time	going out	\N	t
37976	db	2016-02-29	2016-02-29			-3.32	EUR	living	food	\N	t
38011	db	2016-03-01	2016-03-01			-10.00	EUR	house	phone	\N	t
38002	db	2016-03-01	2016-03-01			-0.55	EUR	free time	hobbies	\N	t
38037	db	2016-03-02	2016-03-02			-10.00	EUR	house	electricity	\N	t
38028	db	2016-03-02	2016-03-02			-8.76	EUR	free time	sport	\N	t
38063	db	2016-03-03	2016-03-03			-10.00	EUR	house	internet	\N	t
38055	db	2016-03-03	2016-03-03			-4.12	EUR	living	food	\N	t
38054	db	2016-03-03	2016-03-03			-4.59	EUR	free time	entertainment	\N	t
38089	db	2016-03-04	2016-03-04			-250.00	EUR	house	rent	\N	t
38083	db	2016-03-04	2016-03-04			-5.72	EUR	living	food	\N	t
38082	db	2016-03-04	2016-03-04			-2.15	EUR	free time	going out	\N	t
38081	db	2016-03-04	2016-03-04			-16.59	EUR	mobility	gas	\N	t
38075	db	2016-03-04	2016-03-04			-20.00	EUR	other	cash	\N	t
38115	db	2016-03-05	2016-03-05			-10.00	EUR	finance	costs and fees	\N	t
38110	db	2016-03-05	2016-03-05			-14.12	EUR	health	wellness	\N	t
38109	db	2016-03-05	2016-03-05			-11.04	EUR	free time	going out	\N	t
38141	db	2016-03-06	2016-03-06			-50.00	EUR	finance	insurance	\N	t
38167	db	2016-03-07	2016-03-07			-39.01	EUR	health	doctor visits	\N	t
38151	db	2016-03-07	2016-03-07			-0.88	EUR	living	food	\N	t
38193	db	2016-03-08	2016-03-08			1000.00	EUR	work and training	salary	\N	t
38177	db	2016-03-08	2016-03-08			-0.84	EUR	free time	hobbies	\N	t
38203	db	2016-03-09	2016-03-09			-8.92	EUR	free time	sport	\N	t
38244	db	2016-03-10	2016-03-10			-7.63	EUR	living	pets	\N	t
38230	db	2016-03-10	2016-03-10			-8.03	EUR	living	food	\N	t
38229	db	2016-03-10	2016-03-10			-3.81	EUR	free time	entertainment	\N	t
38258	db	2016-03-11	2016-03-11			-5.77	EUR	living	food	\N	t
38257	db	2016-03-11	2016-03-11			-8.90	EUR	free time	going out	\N	t
38256	db	2016-03-11	2016-03-11			-8.27	EUR	mobility	gas	\N	t
38250	db	2016-03-11	2016-03-11			-20.00	EUR	other	cash	\N	t
38285	db	2016-03-12	2016-03-12			-17.41	EUR	health	wellness	\N	t
38284	db	2016-03-12	2016-03-12			-18.90	EUR	free time	going out	\N	t
38326	db	2016-03-14	2016-03-14			-5.28	EUR	living	food	\N	t
38370	db	2016-03-15	2016-03-15			-6.07	EUR	living	household	\N	t
38352	db	2016-03-15	2016-03-15			-5.90	EUR	free time	hobbies	\N	t
38378	db	2016-03-16	2016-03-16			-2.17	EUR	free time	sport	\N	t
38405	db	2016-03-17	2016-03-17			-0.10	EUR	living	food	\N	t
38404	db	2016-03-17	2016-03-17			-8.94	EUR	free time	entertainment	\N	t
38433	db	2016-03-18	2016-03-18			-0.17	EUR	living	food	\N	t
38432	db	2016-03-18	2016-03-18			-19.32	EUR	free time	going out	\N	t
38431	db	2016-03-18	2016-03-18			-9.45	EUR	mobility	gas	\N	t
38425	db	2016-03-18	2016-03-18			-20.00	EUR	other	cash	\N	t
38460	db	2016-03-19	2016-03-19			-13.05	EUR	health	wellness	\N	t
38459	db	2016-03-19	2016-03-19			-3.06	EUR	free time	going out	\N	t
38497	db	2016-03-20	2016-03-20			-76.43	EUR	free time	gadgets	\N	t
38496	db	2016-03-20	2016-03-20			-65.26	EUR	living	clothes	\N	t
38501	db	2016-03-21	2016-03-21			-9.13	EUR	living	food	\N	t
38527	db	2016-03-22	2016-03-22			-1.31	EUR	free time	hobbies	\N	t
38553	db	2016-03-23	2016-03-23			-0.20	EUR	free time	sport	\N	t
38580	db	2016-03-24	2016-03-24			-4.55	EUR	living	food	\N	t
38579	db	2016-03-24	2016-03-24			-0.72	EUR	free time	entertainment	\N	t
38608	db	2016-03-25	2016-03-25			-10.17	EUR	living	food	\N	t
38607	db	2016-03-25	2016-03-25			-18.86	EUR	free time	going out	\N	t
38606	db	2016-03-25	2016-03-25			-17.78	EUR	mobility	gas	\N	t
38600	db	2016-03-25	2016-03-25			-20.00	EUR	other	cash	\N	t
38635	db	2016-03-26	2016-03-26			-9.72	EUR	health	wellness	\N	t
38634	db	2016-03-26	2016-03-26			-16.27	EUR	free time	going out	\N	t
38676	db	2016-03-28	2016-03-28			-1.86	EUR	living	food	\N	t
38702	db	2016-03-29	2016-03-29			-1.81	EUR	free time	hobbies	\N	t
38728	db	2016-03-30	2016-03-30			-8.91	EUR	free time	sport	\N	t
38755	db	2016-03-31	2016-03-31			-2.97	EUR	living	food	\N	t
38754	db	2016-03-31	2016-03-31			-1.14	EUR	free time	entertainment	\N	t
38786	db	2016-04-01	2016-04-01			-10.00	EUR	house	phone	\N	t
38783	db	2016-04-01	2016-04-01			-1.42	EUR	living	food	\N	t
38782	db	2016-04-01	2016-04-01			-2.02	EUR	free time	going out	\N	t
38781	db	2016-04-01	2016-04-01			-7.36	EUR	mobility	gas	\N	t
38775	db	2016-04-01	2016-04-01			-20.00	EUR	other	cash	\N	t
38812	db	2016-04-02	2016-04-02			-10.00	EUR	house	electricity	\N	t
38810	db	2016-04-02	2016-04-02			-0.66	EUR	health	wellness	\N	t
38809	db	2016-04-02	2016-04-02			-12.27	EUR	free time	going out	\N	t
38838	db	2016-04-03	2016-04-03			-10.00	EUR	house	internet	\N	t
38864	db	2016-04-04	2016-04-04			-250.00	EUR	house	rent	\N	t
38851	db	2016-04-04	2016-04-04			-6.65	EUR	living	food	\N	t
38890	db	2016-04-05	2016-04-05			-10.00	EUR	finance	costs and fees	\N	t
38877	db	2016-04-05	2016-04-05			-8.37	EUR	free time	hobbies	\N	t
38916	db	2016-04-06	2016-04-06			-50.00	EUR	finance	insurance	\N	t
38903	db	2016-04-06	2016-04-06			-9.93	EUR	free time	sport	\N	t
38942	db	2016-04-07	2016-04-07			-18.76	EUR	health	doctor visits	\N	t
38930	db	2016-04-07	2016-04-07			-5.23	EUR	living	food	\N	t
38929	db	2016-04-07	2016-04-07			-8.03	EUR	free time	entertainment	\N	t
38968	db	2016-04-08	2016-04-08			1000.00	EUR	work and training	salary	\N	t
38958	db	2016-04-08	2016-04-08			-3.95	EUR	living	food	\N	t
38957	db	2016-04-08	2016-04-08			-8.28	EUR	free time	going out	\N	t
38956	db	2016-04-08	2016-04-08			-4.57	EUR	mobility	gas	\N	t
38950	db	2016-04-08	2016-04-08			-20.00	EUR	other	cash	\N	t
38985	db	2016-04-09	2016-04-09			-15.47	EUR	health	wellness	\N	t
38984	db	2016-04-09	2016-04-09			-10.96	EUR	free time	going out	\N	t
39019	db	2016-04-10	2016-04-10			-28.59	EUR	living	pets	\N	t
39026	db	2016-04-11	2016-04-11			-4.50	EUR	living	food	\N	t
39052	db	2016-04-12	2016-04-12			-0.95	EUR	free time	hobbies	\N	t
39078	db	2016-04-13	2016-04-13			-9.80	EUR	free time	sport	\N	t
39105	db	2016-04-14	2016-04-14			-4.95	EUR	living	food	\N	t
39104	db	2016-04-14	2016-04-14			-3.98	EUR	free time	entertainment	\N	t
39145	db	2016-04-15	2016-04-15			-51.00	EUR	living	household	\N	t
39133	db	2016-04-15	2016-04-15			-12.33	EUR	living	food	\N	t
39132	db	2016-04-15	2016-04-15			-8.63	EUR	free time	going out	\N	t
39131	db	2016-04-15	2016-04-15			-19.26	EUR	mobility	gas	\N	t
39125	db	2016-04-15	2016-04-15			-20.00	EUR	other	cash	\N	t
39160	db	2016-04-16	2016-04-16			-2.56	EUR	health	wellness	\N	t
39159	db	2016-04-16	2016-04-16			-5.28	EUR	free time	going out	\N	t
39201	db	2016-04-18	2016-04-18			-6.45	EUR	living	food	\N	t
39227	db	2016-04-19	2016-04-19			-6.33	EUR	free time	hobbies	\N	t
39272	db	2016-04-20	2016-04-20			-62.78	EUR	free time	gadgets	\N	t
39271	db	2016-04-20	2016-04-20			-14.45	EUR	living	clothes	\N	t
39253	db	2016-04-20	2016-04-20			-5.32	EUR	free time	sport	\N	t
39280	db	2016-04-21	2016-04-21			-6.54	EUR	living	food	\N	t
39279	db	2016-04-21	2016-04-21			-7.85	EUR	free time	entertainment	\N	t
39308	db	2016-04-22	2016-04-22			-15.26	EUR	living	food	\N	t
39307	db	2016-04-22	2016-04-22			-15.93	EUR	free time	going out	\N	t
39306	db	2016-04-22	2016-04-22			-8.82	EUR	mobility	gas	\N	t
39300	db	2016-04-22	2016-04-22			-20.00	EUR	other	cash	\N	t
39335	db	2016-04-23	2016-04-23			-18.92	EUR	health	wellness	\N	t
39334	db	2016-04-23	2016-04-23			-5.45	EUR	free time	going out	\N	t
39376	db	2016-04-25	2016-04-25			-2.16	EUR	living	food	\N	t
39402	db	2016-04-26	2016-04-26			-4.07	EUR	free time	hobbies	\N	t
39428	db	2016-04-27	2016-04-27			-1.87	EUR	free time	sport	\N	t
39455	db	2016-04-28	2016-04-28			-2.31	EUR	living	food	\N	t
39454	db	2016-04-28	2016-04-28			-3.81	EUR	free time	entertainment	\N	t
39483	db	2016-04-29	2016-04-29			-15.79	EUR	living	food	\N	t
39482	db	2016-04-29	2016-04-29			-5.02	EUR	free time	going out	\N	t
39481	db	2016-04-29	2016-04-29			-6.18	EUR	mobility	gas	\N	t
39475	db	2016-04-29	2016-04-29			-20.00	EUR	other	cash	\N	t
39510	db	2016-04-30	2016-04-30			-16.54	EUR	health	wellness	\N	t
39509	db	2016-04-30	2016-04-30			-5.32	EUR	free time	going out	\N	t
39536	db	2016-05-01	2016-05-01			-10.00	EUR	house	phone	\N	t
39562	db	2016-05-02	2016-05-02			-10.00	EUR	house	electricity	\N	t
39551	db	2016-05-02	2016-05-02			-8.76	EUR	living	food	\N	t
39588	db	2016-05-03	2016-05-03			-10.00	EUR	house	internet	\N	t
39577	db	2016-05-03	2016-05-03			-6.40	EUR	free time	hobbies	\N	t
39614	db	2016-05-04	2016-05-04			-250.00	EUR	house	rent	\N	t
39603	db	2016-05-04	2016-05-04			-6.73	EUR	free time	sport	\N	t
39640	db	2016-05-05	2016-05-05			-10.00	EUR	finance	costs and fees	\N	t
39630	db	2016-05-05	2016-05-05			-2.78	EUR	living	food	\N	t
39629	db	2016-05-05	2016-05-05			-2.57	EUR	free time	entertainment	\N	t
39666	db	2016-05-06	2016-05-06			-50.00	EUR	finance	insurance	\N	t
39658	db	2016-05-06	2016-05-06			-6.15	EUR	living	food	\N	t
39657	db	2016-05-06	2016-05-06			-2.02	EUR	free time	going out	\N	t
39656	db	2016-05-06	2016-05-06			-19.02	EUR	mobility	gas	\N	t
39650	db	2016-05-06	2016-05-06			-20.00	EUR	other	cash	\N	t
39692	db	2016-05-07	2016-05-07			-42.07	EUR	health	doctor visits	\N	t
39685	db	2016-05-07	2016-05-07			-12.30	EUR	health	wellness	\N	t
39684	db	2016-05-07	2016-05-07			-5.72	EUR	free time	going out	\N	t
39718	db	2016-05-08	2016-05-08			1000.00	EUR	work and training	salary	\N	t
39726	db	2016-05-09	2016-05-09			-6.98	EUR	living	food	\N	t
39769	db	2016-05-10	2016-05-10			-17.81	EUR	living	pets	\N	t
39752	db	2016-05-10	2016-05-10			-6.23	EUR	free time	hobbies	\N	t
39778	db	2016-05-11	2016-05-11			-3.41	EUR	free time	sport	\N	t
39805	db	2016-05-12	2016-05-12			-2.81	EUR	living	food	\N	t
39804	db	2016-05-12	2016-05-12			-6.11	EUR	free time	entertainment	\N	t
39833	db	2016-05-13	2016-05-13			-0.87	EUR	living	food	\N	t
39832	db	2016-05-13	2016-05-13			-3.69	EUR	free time	going out	\N	t
39831	db	2016-05-13	2016-05-13			-13.55	EUR	mobility	gas	\N	t
39825	db	2016-05-13	2016-05-13			-20.00	EUR	other	cash	\N	t
39860	db	2016-05-14	2016-05-14			-12.68	EUR	health	wellness	\N	t
39859	db	2016-05-14	2016-05-14			-16.66	EUR	free time	going out	\N	t
39895	db	2016-05-15	2016-05-15			-52.69	EUR	living	household	\N	t
39901	db	2016-05-16	2016-05-16			-5.28	EUR	living	food	\N	t
39927	db	2016-05-17	2016-05-17			-2.33	EUR	free time	hobbies	\N	t
39953	db	2016-05-18	2016-05-18			-3.25	EUR	free time	sport	\N	t
39980	db	2016-05-19	2016-05-19			-5.65	EUR	living	food	\N	t
39979	db	2016-05-19	2016-05-19			-8.00	EUR	free time	entertainment	\N	t
40022	db	2016-05-20	2016-05-20			-12.43	EUR	free time	gadgets	\N	t
40021	db	2016-05-20	2016-05-20			-12.16	EUR	living	clothes	\N	t
40008	db	2016-05-20	2016-05-20			-14.69	EUR	living	food	\N	t
40007	db	2016-05-20	2016-05-20			-13.22	EUR	free time	going out	\N	t
40006	db	2016-05-20	2016-05-20			-19.18	EUR	mobility	gas	\N	t
40000	db	2016-05-20	2016-05-20			-20.00	EUR	other	cash	\N	t
40035	db	2016-05-21	2016-05-21			-6.29	EUR	health	wellness	\N	t
40034	db	2016-05-21	2016-05-21			-11.44	EUR	free time	going out	\N	t
40076	db	2016-05-23	2016-05-23			-1.61	EUR	living	food	\N	t
40102	db	2016-05-24	2016-05-24			-7.54	EUR	free time	hobbies	\N	t
40128	db	2016-05-25	2016-05-25			-4.47	EUR	free time	sport	\N	t
40155	db	2016-05-26	2016-05-26			-9.47	EUR	living	food	\N	t
40154	db	2016-05-26	2016-05-26			-1.65	EUR	free time	entertainment	\N	t
40183	db	2016-05-27	2016-05-27			-4.07	EUR	living	food	\N	t
40182	db	2016-05-27	2016-05-27			-3.47	EUR	free time	going out	\N	t
40181	db	2016-05-27	2016-05-27			-8.62	EUR	mobility	gas	\N	t
40175	db	2016-05-27	2016-05-27			-20.00	EUR	other	cash	\N	t
40210	db	2016-05-28	2016-05-28			-13.39	EUR	health	wellness	\N	t
40209	db	2016-05-28	2016-05-28			-10.71	EUR	free time	going out	\N	t
40251	db	2016-05-30	2016-05-30			-7.39	EUR	living	food	\N	t
40277	db	2016-05-31	2016-05-31			-2.28	EUR	free time	hobbies	\N	t
40311	db	2016-06-01	2016-06-01			-10.00	EUR	house	phone	\N	t
40303	db	2016-06-01	2016-06-01			-8.74	EUR	free time	sport	\N	t
40337	db	2016-06-02	2016-06-02			-10.00	EUR	house	electricity	\N	t
40330	db	2016-06-02	2016-06-02			-5.29	EUR	living	food	\N	t
40329	db	2016-06-02	2016-06-02			-0.89	EUR	free time	entertainment	\N	t
40363	db	2016-06-03	2016-06-03			-10.00	EUR	house	internet	\N	t
40358	db	2016-06-03	2016-06-03			-14.32	EUR	living	food	\N	t
40357	db	2016-06-03	2016-06-03			-3.50	EUR	free time	going out	\N	t
40356	db	2016-06-03	2016-06-03			-14.32	EUR	mobility	gas	\N	t
40350	db	2016-06-03	2016-06-03			-20.00	EUR	other	cash	\N	t
40389	db	2016-06-04	2016-06-04			-250.00	EUR	house	rent	\N	t
40385	db	2016-06-04	2016-06-04			-12.63	EUR	health	wellness	\N	t
40384	db	2016-06-04	2016-06-04			-10.65	EUR	free time	going out	\N	t
40415	db	2016-06-05	2016-06-05			-10.00	EUR	finance	costs and fees	\N	t
40441	db	2016-06-06	2016-06-06			-50.00	EUR	finance	insurance	\N	t
40426	db	2016-06-06	2016-06-06			-1.31	EUR	living	food	\N	t
40467	db	2016-06-07	2016-06-07			-36.16	EUR	health	doctor visits	\N	t
40452	db	2016-06-07	2016-06-07			-8.20	EUR	free time	hobbies	\N	t
40493	db	2016-06-08	2016-06-08			1000.00	EUR	work and training	salary	\N	t
40478	db	2016-06-08	2016-06-08			-6.10	EUR	free time	sport	\N	t
40505	db	2016-06-09	2016-06-09			-4.90	EUR	living	food	\N	t
40504	db	2016-06-09	2016-06-09			-7.89	EUR	free time	entertainment	\N	t
40544	db	2016-06-10	2016-06-10			-13.34	EUR	living	pets	\N	t
40533	db	2016-06-10	2016-06-10			-5.66	EUR	living	food	\N	t
40532	db	2016-06-10	2016-06-10			-12.18	EUR	free time	going out	\N	t
40531	db	2016-06-10	2016-06-10			-12.62	EUR	mobility	gas	\N	t
40525	db	2016-06-10	2016-06-10			-20.00	EUR	other	cash	\N	t
40560	db	2016-06-11	2016-06-11			-15.48	EUR	health	wellness	\N	t
40559	db	2016-06-11	2016-06-11			-10.63	EUR	free time	going out	\N	t
40601	db	2016-06-13	2016-06-13			-1.36	EUR	living	food	\N	t
40627	db	2016-06-14	2016-06-14			-9.50	EUR	free time	hobbies	\N	t
40670	db	2016-06-15	2016-06-15			-0.61	EUR	living	household	\N	t
40653	db	2016-06-15	2016-06-15			-6.00	EUR	free time	sport	\N	t
40680	db	2016-06-16	2016-06-16			-5.88	EUR	living	food	\N	t
40679	db	2016-06-16	2016-06-16			-8.18	EUR	free time	entertainment	\N	t
40708	db	2016-06-17	2016-06-17			-7.54	EUR	living	food	\N	t
40707	db	2016-06-17	2016-06-17			-9.97	EUR	free time	going out	\N	t
40706	db	2016-06-17	2016-06-17			-11.23	EUR	mobility	gas	\N	t
40700	db	2016-06-17	2016-06-17			-20.00	EUR	other	cash	\N	t
40735	db	2016-06-18	2016-06-18			-16.73	EUR	health	wellness	\N	t
40734	db	2016-06-18	2016-06-18			-15.04	EUR	free time	going out	\N	t
40797	db	2016-06-20	2016-06-20			-26.23	EUR	free time	gadgets	\N	t
40796	db	2016-06-20	2016-06-20			-32.61	EUR	living	clothes	\N	t
40776	db	2016-06-20	2016-06-20			-2.39	EUR	living	food	\N	t
40802	db	2016-06-21	2016-06-21			-7.46	EUR	free time	hobbies	\N	t
40828	db	2016-06-22	2016-06-22			-3.90	EUR	free time	sport	\N	t
40855	db	2016-06-23	2016-06-23			-2.09	EUR	living	food	\N	t
40854	db	2016-06-23	2016-06-23			-3.91	EUR	free time	entertainment	\N	t
40883	db	2016-06-24	2016-06-24			-8.48	EUR	living	food	\N	t
40882	db	2016-06-24	2016-06-24			-4.41	EUR	free time	going out	\N	t
40881	db	2016-06-24	2016-06-24			-14.66	EUR	mobility	gas	\N	t
40875	db	2016-06-24	2016-06-24			-20.00	EUR	other	cash	\N	t
40910	db	2016-06-25	2016-06-25			-18.38	EUR	health	wellness	\N	t
40909	db	2016-06-25	2016-06-25			-5.91	EUR	free time	going out	\N	t
40951	db	2016-06-27	2016-06-27			-1.88	EUR	living	food	\N	t
40998	db	2016-06-28	2016-06-28			-94.84	EUR	free time	travel	\N	t
40977	db	2016-06-28	2016-06-28			-6.78	EUR	free time	hobbies	\N	t
41003	db	2016-06-29	2016-06-29			-1.46	EUR	free time	sport	\N	t
41030	db	2016-06-30	2016-06-30			-4.79	EUR	living	food	\N	t
41029	db	2016-06-30	2016-06-30			-7.00	EUR	free time	entertainment	\N	t
41061	db	2016-07-01	2016-07-01			-10.00	EUR	house	phone	\N	t
41058	db	2016-07-01	2016-07-01			-19.83	EUR	living	food	\N	t
41057	db	2016-07-01	2016-07-01			-4.89	EUR	free time	going out	\N	t
41056	db	2016-07-01	2016-07-01			-7.59	EUR	mobility	gas	\N	t
41050	db	2016-07-01	2016-07-01			-20.00	EUR	other	cash	\N	t
41087	db	2016-07-02	2016-07-02			-10.00	EUR	house	electricity	\N	t
41085	db	2016-07-02	2016-07-02			-10.64	EUR	health	wellness	\N	t
41084	db	2016-07-02	2016-07-02			-15.92	EUR	free time	going out	\N	t
41113	db	2016-07-03	2016-07-03			-10.00	EUR	house	internet	\N	t
41139	db	2016-07-04	2016-07-04			-250.00	EUR	house	rent	\N	t
41126	db	2016-07-04	2016-07-04			-6.49	EUR	living	food	\N	t
41165	db	2016-07-05	2016-07-05			-10.00	EUR	finance	costs and fees	\N	t
41152	db	2016-07-05	2016-07-05			-5.68	EUR	free time	hobbies	\N	t
41191	db	2016-07-06	2016-07-06			-50.00	EUR	finance	insurance	\N	t
41178	db	2016-07-06	2016-07-06			-0.35	EUR	free time	sport	\N	t
41217	db	2016-07-07	2016-07-07			-64.03	EUR	health	doctor visits	\N	t
41205	db	2016-07-07	2016-07-07			-6.21	EUR	living	food	\N	t
41204	db	2016-07-07	2016-07-07			-9.08	EUR	free time	entertainment	\N	t
41243	db	2016-07-08	2016-07-08			1000.00	EUR	work and training	salary	\N	t
41233	db	2016-07-08	2016-07-08			-6.06	EUR	living	food	\N	t
41232	db	2016-07-08	2016-07-08			-15.50	EUR	free time	going out	\N	t
41231	db	2016-07-08	2016-07-08			-9.44	EUR	mobility	gas	\N	t
41225	db	2016-07-08	2016-07-08			-20.00	EUR	other	cash	\N	t
41260	db	2016-07-09	2016-07-09			-7.39	EUR	health	wellness	\N	t
41259	db	2016-07-09	2016-07-09			-1.15	EUR	free time	going out	\N	t
41294	db	2016-07-10	2016-07-10			-13.81	EUR	living	pets	\N	t
41301	db	2016-07-11	2016-07-11			-5.42	EUR	living	food	\N	t
41327	db	2016-07-12	2016-07-12			-2.64	EUR	free time	hobbies	\N	t
41353	db	2016-07-13	2016-07-13			-7.94	EUR	free time	sport	\N	t
41380	db	2016-07-14	2016-07-14			-8.91	EUR	living	food	\N	t
41379	db	2016-07-14	2016-07-14			-2.86	EUR	free time	entertainment	\N	t
41420	db	2016-07-15	2016-07-15			-42.21	EUR	living	household	\N	t
41408	db	2016-07-15	2016-07-15			-4.75	EUR	living	food	\N	t
41407	db	2016-07-15	2016-07-15			-8.36	EUR	free time	going out	\N	t
41406	db	2016-07-15	2016-07-15			-19.16	EUR	mobility	gas	\N	t
41400	db	2016-07-15	2016-07-15			-20.00	EUR	other	cash	\N	t
41435	db	2016-07-16	2016-07-16			-3.16	EUR	health	wellness	\N	t
41434	db	2016-07-16	2016-07-16			-4.85	EUR	free time	going out	\N	t
41476	db	2016-07-18	2016-07-18			-0.93	EUR	living	food	\N	t
41502	db	2016-07-19	2016-07-19			-8.64	EUR	free time	hobbies	\N	t
41547	db	2016-07-20	2016-07-20			-35.14	EUR	free time	gadgets	\N	t
41546	db	2016-07-20	2016-07-20			-23.65	EUR	living	clothes	\N	t
41528	db	2016-07-20	2016-07-20			-2.06	EUR	free time	sport	\N	t
41555	db	2016-07-21	2016-07-21			-1.00	EUR	living	food	\N	t
41554	db	2016-07-21	2016-07-21			-4.52	EUR	free time	entertainment	\N	t
41583	db	2016-07-22	2016-07-22			-9.26	EUR	living	food	\N	t
41582	db	2016-07-22	2016-07-22			-19.87	EUR	free time	going out	\N	t
41581	db	2016-07-22	2016-07-22			-17.48	EUR	mobility	gas	\N	t
41575	db	2016-07-22	2016-07-22			-20.00	EUR	other	cash	\N	t
41610	db	2016-07-23	2016-07-23			-10.52	EUR	health	wellness	\N	t
41609	db	2016-07-23	2016-07-23			-9.99	EUR	free time	going out	\N	t
41651	db	2016-07-25	2016-07-25			-3.02	EUR	living	food	\N	t
41677	db	2016-07-26	2016-07-26			-3.78	EUR	free time	hobbies	\N	t
41703	db	2016-07-27	2016-07-27			-0.59	EUR	free time	sport	\N	t
41730	db	2016-07-28	2016-07-28			-7.52	EUR	living	food	\N	t
41729	db	2016-07-28	2016-07-28			-5.84	EUR	free time	entertainment	\N	t
41758	db	2016-07-29	2016-07-29			-5.14	EUR	living	food	\N	t
41757	db	2016-07-29	2016-07-29			-16.30	EUR	free time	going out	\N	t
41756	db	2016-07-29	2016-07-29			-14.69	EUR	mobility	gas	\N	t
41750	db	2016-07-29	2016-07-29			-20.00	EUR	other	cash	\N	t
41785	db	2016-07-30	2016-07-30			-15.11	EUR	health	wellness	\N	t
41784	db	2016-07-30	2016-07-30			-15.75	EUR	free time	going out	\N	t
41836	db	2016-08-01	2016-08-01			-10.00	EUR	house	phone	\N	t
41826	db	2016-08-01	2016-08-01			-2.83	EUR	living	food	\N	t
41862	db	2016-08-02	2016-08-02			-10.00	EUR	house	electricity	\N	t
41852	db	2016-08-02	2016-08-02			-9.14	EUR	free time	hobbies	\N	t
41888	db	2016-08-03	2016-08-03			-10.00	EUR	house	internet	\N	t
41878	db	2016-08-03	2016-08-03			-4.51	EUR	free time	sport	\N	t
41914	db	2016-08-04	2016-08-04			-250.00	EUR	house	rent	\N	t
41905	db	2016-08-04	2016-08-04			-9.34	EUR	living	food	\N	t
41904	db	2016-08-04	2016-08-04			-4.16	EUR	free time	entertainment	\N	t
41940	db	2016-08-05	2016-08-05			-10.00	EUR	finance	costs and fees	\N	t
41933	db	2016-08-05	2016-08-05			-1.03	EUR	living	food	\N	t
41932	db	2016-08-05	2016-08-05			-1.65	EUR	free time	going out	\N	t
41931	db	2016-08-05	2016-08-05			-0.22	EUR	mobility	gas	\N	t
41925	db	2016-08-05	2016-08-05			-20.00	EUR	other	cash	\N	t
41966	db	2016-08-06	2016-08-06			-50.00	EUR	finance	insurance	\N	t
41960	db	2016-08-06	2016-08-06			-0.30	EUR	health	wellness	\N	t
41959	db	2016-08-06	2016-08-06			-1.08	EUR	free time	going out	\N	t
41992	db	2016-08-07	2016-08-07			-32.50	EUR	health	doctor visits	\N	t
42018	db	2016-08-08	2016-08-08			1000.00	EUR	work and training	salary	\N	t
42001	db	2016-08-08	2016-08-08			-9.15	EUR	living	food	\N	t
42027	db	2016-08-09	2016-08-09			-3.85	EUR	free time	hobbies	\N	t
42069	db	2016-08-10	2016-08-10			-28.61	EUR	living	pets	\N	t
42053	db	2016-08-10	2016-08-10			-7.43	EUR	free time	sport	\N	t
42080	db	2016-08-11	2016-08-11			-3.79	EUR	living	food	\N	t
42079	db	2016-08-11	2016-08-11			-1.94	EUR	free time	entertainment	\N	t
42108	db	2016-08-12	2016-08-12			-17.18	EUR	living	food	\N	t
42107	db	2016-08-12	2016-08-12			-12.47	EUR	free time	going out	\N	t
42106	db	2016-08-12	2016-08-12			-17.96	EUR	mobility	gas	\N	t
42100	db	2016-08-12	2016-08-12			-20.00	EUR	other	cash	\N	t
42135	db	2016-08-13	2016-08-13			-4.86	EUR	health	wellness	\N	t
42134	db	2016-08-13	2016-08-13			-8.32	EUR	free time	going out	\N	t
42195	db	2016-08-15	2016-08-15			-32.16	EUR	living	household	\N	t
42176	db	2016-08-15	2016-08-15			-1.99	EUR	living	food	\N	t
42202	db	2016-08-16	2016-08-16			-7.94	EUR	free time	hobbies	\N	t
42228	db	2016-08-17	2016-08-17			-7.33	EUR	free time	sport	\N	t
42255	db	2016-08-18	2016-08-18			-9.23	EUR	living	food	\N	t
42254	db	2016-08-18	2016-08-18			-3.35	EUR	free time	entertainment	\N	t
42283	db	2016-08-19	2016-08-19			-12.80	EUR	living	food	\N	t
42282	db	2016-08-19	2016-08-19			-3.70	EUR	free time	going out	\N	t
42281	db	2016-08-19	2016-08-19			-17.60	EUR	mobility	gas	\N	t
42275	db	2016-08-19	2016-08-19			-20.00	EUR	other	cash	\N	t
42322	db	2016-08-20	2016-08-20			-66.67	EUR	free time	gadgets	\N	t
42321	db	2016-08-20	2016-08-20			-41.04	EUR	living	clothes	\N	t
42310	db	2016-08-20	2016-08-20			-7.24	EUR	health	wellness	\N	t
42309	db	2016-08-20	2016-08-20			-5.33	EUR	free time	going out	\N	t
42351	db	2016-08-22	2016-08-22			-9.26	EUR	living	food	\N	t
42377	db	2016-08-23	2016-08-23			-1.52	EUR	free time	hobbies	\N	t
42403	db	2016-08-24	2016-08-24			-3.27	EUR	free time	sport	\N	t
42430	db	2016-08-25	2016-08-25			-1.62	EUR	living	food	\N	t
42429	db	2016-08-25	2016-08-25			-9.98	EUR	free time	entertainment	\N	t
42458	db	2016-08-26	2016-08-26			-15.26	EUR	living	food	\N	t
42457	db	2016-08-26	2016-08-26			-15.09	EUR	free time	going out	\N	t
42456	db	2016-08-26	2016-08-26			-2.31	EUR	mobility	gas	\N	t
42450	db	2016-08-26	2016-08-26			-20.00	EUR	other	cash	\N	t
42485	db	2016-08-27	2016-08-27			-9.58	EUR	health	wellness	\N	t
42484	db	2016-08-27	2016-08-27			-8.22	EUR	free time	going out	\N	t
42526	db	2016-08-29	2016-08-29			-6.73	EUR	living	food	\N	t
42552	db	2016-08-30	2016-08-30			-9.49	EUR	free time	hobbies	\N	t
42578	db	2016-08-31	2016-08-31			-3.56	EUR	free time	sport	\N	t
42611	db	2016-09-01	2016-09-01			-10.00	EUR	house	phone	\N	t
42605	db	2016-09-01	2016-09-01			-1.27	EUR	living	food	\N	t
42604	db	2016-09-01	2016-09-01			-4.58	EUR	free time	entertainment	\N	t
42637	db	2016-09-02	2016-09-02			-10.00	EUR	house	electricity	\N	t
42633	db	2016-09-02	2016-09-02			-7.38	EUR	living	food	\N	t
42632	db	2016-09-02	2016-09-02			-3.51	EUR	free time	going out	\N	t
42631	db	2016-09-02	2016-09-02			-14.56	EUR	mobility	gas	\N	t
42625	db	2016-09-02	2016-09-02			-20.00	EUR	other	cash	\N	t
42663	db	2016-09-03	2016-09-03			-10.00	EUR	house	internet	\N	t
42660	db	2016-09-03	2016-09-03			-10.79	EUR	health	wellness	\N	t
42659	db	2016-09-03	2016-09-03			-12.54	EUR	free time	going out	\N	t
42689	db	2016-09-04	2016-09-04			-250.00	EUR	house	rent	\N	t
42715	db	2016-09-05	2016-09-05			-10.00	EUR	finance	costs and fees	\N	t
42701	db	2016-09-05	2016-09-05			-4.02	EUR	living	food	\N	t
42741	db	2016-09-06	2016-09-06			-50.00	EUR	finance	insurance	\N	t
42727	db	2016-09-06	2016-09-06			-2.67	EUR	free time	hobbies	\N	t
42767	db	2016-09-07	2016-09-07			-60.23	EUR	health	doctor visits	\N	t
42753	db	2016-09-07	2016-09-07			-1.90	EUR	free time	sport	\N	t
42793	db	2016-09-08	2016-09-08			1000.00	EUR	work and training	salary	\N	t
42780	db	2016-09-08	2016-09-08			-9.10	EUR	living	food	\N	t
42779	db	2016-09-08	2016-09-08			-4.85	EUR	free time	entertainment	\N	t
42808	db	2016-09-09	2016-09-09			-13.23	EUR	living	food	\N	t
42807	db	2016-09-09	2016-09-09			-1.26	EUR	free time	going out	\N	t
42806	db	2016-09-09	2016-09-09			-8.23	EUR	mobility	gas	\N	t
42800	db	2016-09-09	2016-09-09			-20.00	EUR	other	cash	\N	t
42844	db	2016-09-10	2016-09-10			-42.65	EUR	living	pets	\N	t
42835	db	2016-09-10	2016-09-10			-12.80	EUR	health	wellness	\N	t
42834	db	2016-09-10	2016-09-10			-14.21	EUR	free time	going out	\N	t
42876	db	2016-09-12	2016-09-12			-9.38	EUR	living	food	\N	t
42902	db	2016-09-13	2016-09-13			-1.47	EUR	free time	hobbies	\N	t
42928	db	2016-09-14	2016-09-14			-2.99	EUR	free time	sport	\N	t
42970	db	2016-09-15	2016-09-15			-2.12	EUR	living	household	\N	t
42955	db	2016-09-15	2016-09-15			-0.68	EUR	living	food	\N	t
42954	db	2016-09-15	2016-09-15			-0.10	EUR	free time	entertainment	\N	t
42983	db	2016-09-16	2016-09-16			-3.99	EUR	living	food	\N	t
42982	db	2016-09-16	2016-09-16			-18.83	EUR	free time	going out	\N	t
42981	db	2016-09-16	2016-09-16			-14.44	EUR	mobility	gas	\N	t
42975	db	2016-09-16	2016-09-16			-20.00	EUR	other	cash	\N	t
43010	db	2016-09-17	2016-09-17			-8.82	EUR	health	wellness	\N	t
43009	db	2016-09-17	2016-09-17			-17.77	EUR	free time	going out	\N	t
43051	db	2016-09-19	2016-09-19			-5.19	EUR	living	food	\N	t
43097	db	2016-09-20	2016-09-20			-58.02	EUR	free time	gadgets	\N	t
43096	db	2016-09-20	2016-09-20			-61.74	EUR	living	clothes	\N	t
43077	db	2016-09-20	2016-09-20			-4.55	EUR	free time	hobbies	\N	t
43103	db	2016-09-21	2016-09-21			-0.98	EUR	free time	sport	\N	t
43130	db	2016-09-22	2016-09-22			-5.87	EUR	living	food	\N	t
43129	db	2016-09-22	2016-09-22			-0.95	EUR	free time	entertainment	\N	t
43158	db	2016-09-23	2016-09-23			-1.57	EUR	living	food	\N	t
43157	db	2016-09-23	2016-09-23			-0.59	EUR	free time	going out	\N	t
43156	db	2016-09-23	2016-09-23			-6.35	EUR	mobility	gas	\N	t
43150	db	2016-09-23	2016-09-23			-20.00	EUR	other	cash	\N	t
43185	db	2016-09-24	2016-09-24			-14.38	EUR	health	wellness	\N	t
43184	db	2016-09-24	2016-09-24			-5.82	EUR	free time	going out	\N	t
43226	db	2016-09-26	2016-09-26			-0.85	EUR	living	food	\N	t
43252	db	2016-09-27	2016-09-27			-7.55	EUR	free time	hobbies	\N	t
43278	db	2016-09-28	2016-09-28			-1.51	EUR	free time	sport	\N	t
43305	db	2016-09-29	2016-09-29			-0.71	EUR	living	food	\N	t
43304	db	2016-09-29	2016-09-29			-1.09	EUR	free time	entertainment	\N	t
43333	db	2016-09-30	2016-09-30			-18.73	EUR	living	food	\N	t
43332	db	2016-09-30	2016-09-30			-8.29	EUR	free time	going out	\N	t
43331	db	2016-09-30	2016-09-30			-2.97	EUR	mobility	gas	\N	t
43325	db	2016-09-30	2016-09-30			-20.00	EUR	other	cash	\N	t
43361	db	2016-10-01	2016-10-01			-10.00	EUR	house	phone	\N	t
43360	db	2016-10-01	2016-10-01			-16.29	EUR	health	wellness	\N	t
43359	db	2016-10-01	2016-10-01			-4.28	EUR	free time	going out	\N	t
43387	db	2016-10-02	2016-10-02			-10.00	EUR	house	electricity	\N	t
43413	db	2016-10-03	2016-10-03			-10.00	EUR	house	internet	\N	t
43401	db	2016-10-03	2016-10-03			-8.38	EUR	living	food	\N	t
43439	db	2016-10-04	2016-10-04			-250.00	EUR	house	rent	\N	t
43427	db	2016-10-04	2016-10-04			-5.13	EUR	free time	hobbies	\N	t
43465	db	2016-10-05	2016-10-05			-10.00	EUR	finance	costs and fees	\N	t
43453	db	2016-10-05	2016-10-05			-3.82	EUR	free time	sport	\N	t
43491	db	2016-10-06	2016-10-06			-50.00	EUR	finance	insurance	\N	t
43480	db	2016-10-06	2016-10-06			-6.34	EUR	living	food	\N	t
43479	db	2016-10-06	2016-10-06			-4.92	EUR	free time	entertainment	\N	t
43517	db	2016-10-07	2016-10-07			-58.95	EUR	health	doctor visits	\N	t
43508	db	2016-10-07	2016-10-07			-17.57	EUR	living	food	\N	t
43507	db	2016-10-07	2016-10-07			-4.19	EUR	free time	going out	\N	t
43506	db	2016-10-07	2016-10-07			-9.46	EUR	mobility	gas	\N	t
43500	db	2016-10-07	2016-10-07			-20.00	EUR	other	cash	\N	t
43543	db	2016-10-08	2016-10-08			1000.00	EUR	work and training	salary	\N	t
43535	db	2016-10-08	2016-10-08			-16.09	EUR	health	wellness	\N	t
43534	db	2016-10-08	2016-10-08			-15.91	EUR	free time	going out	\N	t
43594	db	2016-10-10	2016-10-10			-21.20	EUR	living	pets	\N	t
43576	db	2016-10-10	2016-10-10			-6.81	EUR	living	food	\N	t
43602	db	2016-10-11	2016-10-11			-2.01	EUR	free time	hobbies	\N	t
43628	db	2016-10-12	2016-10-12			-7.32	EUR	free time	sport	\N	t
43655	db	2016-10-13	2016-10-13			-4.59	EUR	living	food	\N	t
43654	db	2016-10-13	2016-10-13			-7.13	EUR	free time	entertainment	\N	t
43683	db	2016-10-14	2016-10-14			-4.67	EUR	living	food	\N	t
43682	db	2016-10-14	2016-10-14			-12.86	EUR	free time	going out	\N	t
43681	db	2016-10-14	2016-10-14			-2.28	EUR	mobility	gas	\N	t
43675	db	2016-10-14	2016-10-14			-20.00	EUR	other	cash	\N	t
43720	db	2016-10-15	2016-10-15			-4.15	EUR	living	household	\N	t
43710	db	2016-10-15	2016-10-15			-1.40	EUR	health	wellness	\N	t
43709	db	2016-10-15	2016-10-15			-6.86	EUR	free time	going out	\N	t
43751	db	2016-10-17	2016-10-17			-9.08	EUR	living	food	\N	t
43777	db	2016-10-18	2016-10-18			-9.81	EUR	free time	hobbies	\N	t
43803	db	2016-10-19	2016-10-19			-3.92	EUR	free time	sport	\N	t
43847	db	2016-10-20	2016-10-20			-15.43	EUR	free time	gadgets	\N	t
43846	db	2016-10-20	2016-10-20			-21.12	EUR	living	clothes	\N	t
43830	db	2016-10-20	2016-10-20			-7.22	EUR	living	food	\N	t
43829	db	2016-10-20	2016-10-20			-4.19	EUR	free time	entertainment	\N	t
43858	db	2016-10-21	2016-10-21			-12.85	EUR	living	food	\N	t
43857	db	2016-10-21	2016-10-21			-19.31	EUR	free time	going out	\N	t
43856	db	2016-10-21	2016-10-21			-18.99	EUR	mobility	gas	\N	t
43850	db	2016-10-21	2016-10-21			-20.00	EUR	other	cash	\N	t
43885	db	2016-10-22	2016-10-22			-4.68	EUR	health	wellness	\N	t
43884	db	2016-10-22	2016-10-22			-5.76	EUR	free time	going out	\N	t
43926	db	2016-10-24	2016-10-24			-8.99	EUR	living	food	\N	t
43952	db	2016-10-25	2016-10-25			-4.23	EUR	free time	hobbies	\N	t
43978	db	2016-10-26	2016-10-26			-3.89	EUR	free time	sport	\N	t
44005	db	2016-10-27	2016-10-27			-0.51	EUR	living	food	\N	t
44004	db	2016-10-27	2016-10-27			-1.39	EUR	free time	entertainment	\N	t
44033	db	2016-10-28	2016-10-28			-3.21	EUR	living	food	\N	t
44032	db	2016-10-28	2016-10-28			-0.69	EUR	free time	going out	\N	t
44031	db	2016-10-28	2016-10-28			-16.26	EUR	mobility	gas	\N	t
44025	db	2016-10-28	2016-10-28			-20.00	EUR	other	cash	\N	t
44060	db	2016-10-29	2016-10-29			-6.89	EUR	health	wellness	\N	t
44059	db	2016-10-29	2016-10-29			-3.73	EUR	free time	going out	\N	t
44101	db	2016-10-31	2016-10-31			-0.81	EUR	living	food	\N	t
44136	db	2016-11-01	2016-11-01			-10.00	EUR	house	phone	\N	t
44127	db	2016-11-01	2016-11-01			-8.02	EUR	free time	hobbies	\N	t
44162	db	2016-11-02	2016-11-02			-10.00	EUR	house	electricity	\N	t
44153	db	2016-11-02	2016-11-02			-8.60	EUR	free time	sport	\N	t
44188	db	2016-11-03	2016-11-03			-10.00	EUR	house	internet	\N	t
44180	db	2016-11-03	2016-11-03			-1.91	EUR	living	food	\N	t
44179	db	2016-11-03	2016-11-03			-7.73	EUR	free time	entertainment	\N	t
44214	db	2016-11-04	2016-11-04			-250.00	EUR	house	rent	\N	t
44208	db	2016-11-04	2016-11-04			-1.53	EUR	living	food	\N	t
44207	db	2016-11-04	2016-11-04			-2.31	EUR	free time	going out	\N	t
44206	db	2016-11-04	2016-11-04			-7.39	EUR	mobility	gas	\N	t
44200	db	2016-11-04	2016-11-04			-20.00	EUR	other	cash	\N	t
44240	db	2016-11-05	2016-11-05			-10.00	EUR	finance	costs and fees	\N	t
44235	db	2016-11-05	2016-11-05			-0.83	EUR	health	wellness	\N	t
44234	db	2016-11-05	2016-11-05			-14.47	EUR	free time	going out	\N	t
44266	db	2016-11-06	2016-11-06			-50.00	EUR	finance	insurance	\N	t
44292	db	2016-11-07	2016-11-07			-71.14	EUR	health	doctor visits	\N	t
44276	db	2016-11-07	2016-11-07			-3.51	EUR	living	food	\N	t
44318	db	2016-11-08	2016-11-08			1000.00	EUR	work and training	salary	\N	t
44302	db	2016-11-08	2016-11-08			-5.90	EUR	free time	hobbies	\N	t
44328	db	2016-11-09	2016-11-09			-9.22	EUR	free time	sport	\N	t
44369	db	2016-11-10	2016-11-10			-12.40	EUR	living	pets	\N	t
44355	db	2016-11-10	2016-11-10			-8.35	EUR	living	food	\N	t
44354	db	2016-11-10	2016-11-10			-5.77	EUR	free time	entertainment	\N	t
44383	db	2016-11-11	2016-11-11			-16.77	EUR	living	food	\N	t
44382	db	2016-11-11	2016-11-11			-5.74	EUR	free time	going out	\N	t
44381	db	2016-11-11	2016-11-11			-6.34	EUR	mobility	gas	\N	t
44375	db	2016-11-11	2016-11-11			-20.00	EUR	other	cash	\N	t
44410	db	2016-11-12	2016-11-12			-8.53	EUR	health	wellness	\N	t
44409	db	2016-11-12	2016-11-12			-0.33	EUR	free time	going out	\N	t
44451	db	2016-11-14	2016-11-14			-9.73	EUR	living	food	\N	t
44495	db	2016-11-15	2016-11-15			-43.57	EUR	living	household	\N	t
44477	db	2016-11-15	2016-11-15			-1.58	EUR	free time	hobbies	\N	t
44503	db	2016-11-16	2016-11-16			-1.79	EUR	free time	sport	\N	t
44530	db	2016-11-17	2016-11-17			-9.63	EUR	living	food	\N	t
44529	db	2016-11-17	2016-11-17			-8.35	EUR	free time	entertainment	\N	t
44558	db	2016-11-18	2016-11-18			-12.52	EUR	living	food	\N	t
44557	db	2016-11-18	2016-11-18			-19.99	EUR	free time	going out	\N	t
44556	db	2016-11-18	2016-11-18			-7.99	EUR	mobility	gas	\N	t
44550	db	2016-11-18	2016-11-18			-20.00	EUR	other	cash	\N	t
44585	db	2016-11-19	2016-11-19			-16.81	EUR	health	wellness	\N	t
44584	db	2016-11-19	2016-11-19			-1.67	EUR	free time	going out	\N	t
44622	db	2016-11-20	2016-11-20			-53.93	EUR	free time	gadgets	\N	t
44621	db	2016-11-20	2016-11-20			-70.09	EUR	living	clothes	\N	t
44626	db	2016-11-21	2016-11-21			-1.96	EUR	living	food	\N	t
44652	db	2016-11-22	2016-11-22			-5.56	EUR	free time	hobbies	\N	t
44678	db	2016-11-23	2016-11-23			-2.19	EUR	free time	sport	\N	t
44705	db	2016-11-24	2016-11-24			-0.91	EUR	living	food	\N	t
44704	db	2016-11-24	2016-11-24			-0.25	EUR	free time	entertainment	\N	t
44733	db	2016-11-25	2016-11-25			-7.10	EUR	living	food	\N	t
44732	db	2016-11-25	2016-11-25			-12.88	EUR	free time	going out	\N	t
44731	db	2016-11-25	2016-11-25			-17.62	EUR	mobility	gas	\N	t
44725	db	2016-11-25	2016-11-25			-20.00	EUR	other	cash	\N	t
44760	db	2016-11-26	2016-11-26			-15.41	EUR	health	wellness	\N	t
44759	db	2016-11-26	2016-11-26			-12.68	EUR	free time	going out	\N	t
44801	db	2016-11-28	2016-11-28			-0.13	EUR	living	food	\N	t
44827	db	2016-11-29	2016-11-29			-7.75	EUR	free time	hobbies	\N	t
44853	db	2016-11-30	2016-11-30			-8.12	EUR	free time	sport	\N	t
44886	db	2016-12-01	2016-12-01			-10.00	EUR	house	phone	\N	t
44880	db	2016-12-01	2016-12-01			-7.44	EUR	living	food	\N	t
44879	db	2016-12-01	2016-12-01			-5.78	EUR	free time	entertainment	\N	t
44912	db	2016-12-02	2016-12-02			-10.00	EUR	house	electricity	\N	t
44908	db	2016-12-02	2016-12-02			-15.02	EUR	living	food	\N	t
44907	db	2016-12-02	2016-12-02			-3.39	EUR	free time	going out	\N	t
44906	db	2016-12-02	2016-12-02			-17.25	EUR	mobility	gas	\N	t
44900	db	2016-12-02	2016-12-02			-20.00	EUR	other	cash	\N	t
44938	db	2016-12-03	2016-12-03			-10.00	EUR	house	internet	\N	t
44935	db	2016-12-03	2016-12-03			-6.90	EUR	health	wellness	\N	t
44934	db	2016-12-03	2016-12-03			-13.62	EUR	free time	going out	\N	t
44964	db	2016-12-04	2016-12-04			-250.00	EUR	house	rent	\N	t
44990	db	2016-12-05	2016-12-05			-10.00	EUR	finance	costs and fees	\N	t
44976	db	2016-12-05	2016-12-05			-7.75	EUR	living	food	\N	t
45016	db	2016-12-06	2016-12-06			-50.00	EUR	finance	insurance	\N	t
45002	db	2016-12-06	2016-12-06			-8.32	EUR	free time	hobbies	\N	t
45042	db	2016-12-07	2016-12-07			-62.32	EUR	health	doctor visits	\N	t
45028	db	2016-12-07	2016-12-07			-5.70	EUR	free time	sport	\N	t
45068	db	2016-12-08	2016-12-08			1000.00	EUR	work and training	salary	\N	t
45055	db	2016-12-08	2016-12-08			-7.29	EUR	living	food	\N	t
45054	db	2016-12-08	2016-12-08			-7.92	EUR	free time	entertainment	\N	t
45083	db	2016-12-09	2016-12-09			-13.57	EUR	living	food	\N	t
45082	db	2016-12-09	2016-12-09			-18.96	EUR	free time	going out	\N	t
45081	db	2016-12-09	2016-12-09			-9.60	EUR	mobility	gas	\N	t
45075	db	2016-12-09	2016-12-09			-20.00	EUR	other	cash	\N	t
45119	db	2016-12-10	2016-12-10			-33.63	EUR	living	pets	\N	t
45110	db	2016-12-10	2016-12-10			-7.79	EUR	health	wellness	\N	t
45109	db	2016-12-10	2016-12-10			-1.82	EUR	free time	going out	\N	t
45151	db	2016-12-12	2016-12-12			-0.14	EUR	living	food	\N	t
45177	db	2016-12-13	2016-12-13			-7.64	EUR	free time	hobbies	\N	t
45203	db	2016-12-14	2016-12-14			-4.69	EUR	free time	sport	\N	t
45245	db	2016-12-15	2016-12-15			-56.92	EUR	living	household	\N	t
45230	db	2016-12-15	2016-12-15			-9.47	EUR	living	food	\N	t
45229	db	2016-12-15	2016-12-15			-1.66	EUR	free time	entertainment	\N	t
45258	db	2016-12-16	2016-12-16			-6.34	EUR	living	food	\N	t
45257	db	2016-12-16	2016-12-16			-18.74	EUR	free time	going out	\N	t
45256	db	2016-12-16	2016-12-16			-10.66	EUR	mobility	gas	\N	t
45250	db	2016-12-16	2016-12-16			-20.00	EUR	other	cash	\N	t
45285	db	2016-12-17	2016-12-17			-11.17	EUR	health	wellness	\N	t
45284	db	2016-12-17	2016-12-17			-10.34	EUR	free time	going out	\N	t
45326	db	2016-12-19	2016-12-19			-1.60	EUR	living	food	\N	t
45374	db	2016-12-20	2016-12-20			-181.22	EUR	free time	presents	\N	t
45372	db	2016-12-20	2016-12-20			-7.85	EUR	free time	gadgets	\N	t
45371	db	2016-12-20	2016-12-20			-42.55	EUR	living	clothes	\N	t
45352	db	2016-12-20	2016-12-20			-5.77	EUR	free time	hobbies	\N	t
45378	db	2016-12-21	2016-12-21			-7.11	EUR	free time	sport	\N	t
45405	db	2016-12-22	2016-12-22			-9.58	EUR	living	food	\N	t
45404	db	2016-12-22	2016-12-22			-0.40	EUR	free time	entertainment	\N	t
45433	db	2016-12-23	2016-12-23			-6.40	EUR	living	food	\N	t
45432	db	2016-12-23	2016-12-23			-10.52	EUR	free time	going out	\N	t
45431	db	2016-12-23	2016-12-23			-11.38	EUR	mobility	gas	\N	t
45425	db	2016-12-23	2016-12-23			-20.00	EUR	other	cash	\N	t
45460	db	2016-12-24	2016-12-24			-1.84	EUR	health	wellness	\N	t
45459	db	2016-12-24	2016-12-24			-9.81	EUR	free time	going out	\N	t
45501	db	2016-12-26	2016-12-26			-8.22	EUR	living	food	\N	t
45527	db	2016-12-27	2016-12-27			-3.56	EUR	free time	hobbies	\N	t
45553	db	2016-12-28	2016-12-28			-4.44	EUR	free time	sport	\N	t
45580	db	2016-12-29	2016-12-29			-1.49	EUR	living	food	\N	t
45579	db	2016-12-29	2016-12-29			-4.32	EUR	free time	entertainment	\N	t
45608	db	2016-12-30	2016-12-30			-11.27	EUR	living	food	\N	t
45607	db	2016-12-30	2016-12-30			-7.17	EUR	free time	going out	\N	t
45606	db	2016-12-30	2016-12-30			-0.07	EUR	mobility	gas	\N	t
45600	db	2016-12-30	2016-12-30			-20.00	EUR	other	cash	\N	t
45635	db	2016-12-31	2016-12-31			-17.58	EUR	health	wellness	\N	t
45634	db	2016-12-31	2016-12-31			-2.36	EUR	free time	going out	\N	t
45661	db	2017-01-01	2017-01-01			-10.00	EUR	house	phone	\N	t
45687	db	2017-01-02	2017-01-02			-10.00	EUR	house	electricity	\N	t
45676	db	2017-01-02	2017-01-02			-1.67	EUR	living	food	\N	t
45713	db	2017-01-03	2017-01-03			-10.00	EUR	house	internet	\N	t
45702	db	2017-01-03	2017-01-03			-7.51	EUR	free time	hobbies	\N	t
45739	db	2017-01-04	2017-01-04			-250.00	EUR	house	rent	\N	t
45728	db	2017-01-04	2017-01-04			-4.31	EUR	free time	sport	\N	t
45765	db	2017-01-05	2017-01-05			-10.00	EUR	finance	costs and fees	\N	t
45755	db	2017-01-05	2017-01-05			-7.49	EUR	living	food	\N	t
45754	db	2017-01-05	2017-01-05			-8.43	EUR	free time	entertainment	\N	t
45791	db	2017-01-06	2017-01-06			-50.00	EUR	finance	insurance	\N	t
45783	db	2017-01-06	2017-01-06			-18.99	EUR	living	food	\N	t
45782	db	2017-01-06	2017-01-06			-3.11	EUR	free time	going out	\N	t
45781	db	2017-01-06	2017-01-06			-19.90	EUR	mobility	gas	\N	t
45775	db	2017-01-06	2017-01-06			-20.00	EUR	other	cash	\N	t
45817	db	2017-01-07	2017-01-07			-2.80	EUR	health	doctor visits	\N	t
45810	db	2017-01-07	2017-01-07			-10.46	EUR	health	wellness	\N	t
45809	db	2017-01-07	2017-01-07			-18.48	EUR	free time	going out	\N	t
45843	db	2017-01-08	2017-01-08			1000.00	EUR	work and training	salary	\N	t
45851	db	2017-01-09	2017-01-09			-9.60	EUR	living	food	\N	t
45894	db	2017-01-10	2017-01-10			-77.03	EUR	living	pets	\N	t
45877	db	2017-01-10	2017-01-10			-5.40	EUR	free time	hobbies	\N	t
45903	db	2017-01-11	2017-01-11			-9.73	EUR	free time	sport	\N	t
45930	db	2017-01-12	2017-01-12			-0.81	EUR	living	food	\N	t
45929	db	2017-01-12	2017-01-12			-0.15	EUR	free time	entertainment	\N	t
45958	db	2017-01-13	2017-01-13			-17.59	EUR	living	food	\N	t
45957	db	2017-01-13	2017-01-13			-7.31	EUR	free time	going out	\N	t
45956	db	2017-01-13	2017-01-13			-7.04	EUR	mobility	gas	\N	t
45950	db	2017-01-13	2017-01-13			-20.00	EUR	other	cash	\N	t
45985	db	2017-01-14	2017-01-14			-9.16	EUR	health	wellness	\N	t
45984	db	2017-01-14	2017-01-14			-9.49	EUR	free time	going out	\N	t
46020	db	2017-01-15	2017-01-15			-1.50	EUR	living	household	\N	t
46026	db	2017-01-16	2017-01-16			-2.56	EUR	living	food	\N	t
46052	db	2017-01-17	2017-01-17			-6.05	EUR	free time	hobbies	\N	t
46078	db	2017-01-18	2017-01-18			-9.83	EUR	free time	sport	\N	t
46105	db	2017-01-19	2017-01-19			-9.92	EUR	living	food	\N	t
46104	db	2017-01-19	2017-01-19			-2.96	EUR	free time	entertainment	\N	t
46147	db	2017-01-20	2017-01-20			-70.81	EUR	free time	gadgets	\N	t
46146	db	2017-01-20	2017-01-20			-54.90	EUR	living	clothes	\N	t
46133	db	2017-01-20	2017-01-20			-4.66	EUR	living	food	\N	t
46132	db	2017-01-20	2017-01-20			-1.75	EUR	free time	going out	\N	t
46131	db	2017-01-20	2017-01-20			-7.13	EUR	mobility	gas	\N	t
46125	db	2017-01-20	2017-01-20			-20.00	EUR	other	cash	\N	t
46160	db	2017-01-21	2017-01-21			-1.55	EUR	health	wellness	\N	t
46159	db	2017-01-21	2017-01-21			-7.03	EUR	free time	going out	\N	t
46201	db	2017-01-23	2017-01-23			-1.04	EUR	living	food	\N	t
46227	db	2017-01-24	2017-01-24			-2.31	EUR	free time	hobbies	\N	t
46253	db	2017-01-25	2017-01-25			-6.93	EUR	free time	sport	\N	t
46280	db	2017-01-26	2017-01-26			-0.02	EUR	living	food	\N	t
46279	db	2017-01-26	2017-01-26			-1.68	EUR	free time	entertainment	\N	t
46308	db	2017-01-27	2017-01-27			-13.37	EUR	living	food	\N	t
46307	db	2017-01-27	2017-01-27			-0.30	EUR	free time	going out	\N	t
46306	db	2017-01-27	2017-01-27			-5.68	EUR	mobility	gas	\N	t
46300	db	2017-01-27	2017-01-27			-20.00	EUR	other	cash	\N	t
46335	db	2017-01-28	2017-01-28			-12.21	EUR	health	wellness	\N	t
46334	db	2017-01-28	2017-01-28			-9.63	EUR	free time	going out	\N	t
46376	db	2017-01-30	2017-01-30			-3.51	EUR	living	food	\N	t
46402	db	2017-01-31	2017-01-31			-2.71	EUR	free time	hobbies	\N	t
46436	db	2017-02-01	2017-02-01			-10.00	EUR	house	phone	\N	t
46428	db	2017-02-01	2017-02-01			-7.29	EUR	free time	sport	\N	t
46462	db	2017-02-02	2017-02-02			-10.00	EUR	house	electricity	\N	t
46455	db	2017-02-02	2017-02-02			-0.31	EUR	living	food	\N	t
46454	db	2017-02-02	2017-02-02			-6.17	EUR	free time	entertainment	\N	t
46488	db	2017-02-03	2017-02-03			-10.00	EUR	house	internet	\N	t
46483	db	2017-02-03	2017-02-03			-1.24	EUR	living	food	\N	t
46482	db	2017-02-03	2017-02-03			-0.96	EUR	free time	going out	\N	t
46481	db	2017-02-03	2017-02-03			-11.91	EUR	mobility	gas	\N	t
46475	db	2017-02-03	2017-02-03			-20.00	EUR	other	cash	\N	t
46514	db	2017-02-04	2017-02-04			-250.00	EUR	house	rent	\N	t
46510	db	2017-02-04	2017-02-04			-14.33	EUR	health	wellness	\N	t
46509	db	2017-02-04	2017-02-04			-19.77	EUR	free time	going out	\N	t
46540	db	2017-02-05	2017-02-05			-10.00	EUR	finance	costs and fees	\N	t
46566	db	2017-02-06	2017-02-06			-50.00	EUR	finance	insurance	\N	t
46551	db	2017-02-06	2017-02-06			-4.52	EUR	living	food	\N	t
46592	db	2017-02-07	2017-02-07			-66.44	EUR	health	doctor visits	\N	t
46577	db	2017-02-07	2017-02-07			-9.92	EUR	free time	hobbies	\N	t
46618	db	2017-02-08	2017-02-08			1000.00	EUR	work and training	salary	\N	t
46603	db	2017-02-08	2017-02-08			-9.03	EUR	free time	sport	\N	t
46630	db	2017-02-09	2017-02-09			-7.29	EUR	living	food	\N	t
46629	db	2017-02-09	2017-02-09			-6.45	EUR	free time	entertainment	\N	t
46669	db	2017-02-10	2017-02-10			-57.19	EUR	living	pets	\N	t
46658	db	2017-02-10	2017-02-10			-3.05	EUR	living	food	\N	t
46657	db	2017-02-10	2017-02-10			-8.22	EUR	free time	going out	\N	t
46656	db	2017-02-10	2017-02-10			-1.38	EUR	mobility	gas	\N	t
46650	db	2017-02-10	2017-02-10			-20.00	EUR	other	cash	\N	t
46685	db	2017-02-11	2017-02-11			-18.60	EUR	health	wellness	\N	t
46684	db	2017-02-11	2017-02-11			-10.01	EUR	free time	going out	\N	t
46726	db	2017-02-13	2017-02-13			-5.20	EUR	living	food	\N	t
46752	db	2017-02-14	2017-02-14			-5.98	EUR	free time	hobbies	\N	t
46795	db	2017-02-15	2017-02-15			-3.45	EUR	living	household	\N	t
46778	db	2017-02-15	2017-02-15			-0.91	EUR	free time	sport	\N	t
46805	db	2017-02-16	2017-02-16			-1.88	EUR	living	food	\N	t
46804	db	2017-02-16	2017-02-16			-9.43	EUR	free time	entertainment	\N	t
46833	db	2017-02-17	2017-02-17			-8.97	EUR	living	food	\N	t
46832	db	2017-02-17	2017-02-17			-18.53	EUR	free time	going out	\N	t
46831	db	2017-02-17	2017-02-17			-16.28	EUR	mobility	gas	\N	t
46825	db	2017-02-17	2017-02-17			-20.00	EUR	other	cash	\N	t
46860	db	2017-02-18	2017-02-18			-17.20	EUR	health	wellness	\N	t
46859	db	2017-02-18	2017-02-18			-11.56	EUR	free time	going out	\N	t
46922	db	2017-02-20	2017-02-20			-79.64	EUR	free time	gadgets	\N	t
46921	db	2017-02-20	2017-02-20			-59.26	EUR	living	clothes	\N	t
46901	db	2017-02-20	2017-02-20			-3.25	EUR	living	food	\N	t
46927	db	2017-02-21	2017-02-21			-2.98	EUR	free time	hobbies	\N	t
46953	db	2017-02-22	2017-02-22			-7.56	EUR	free time	sport	\N	t
46980	db	2017-02-23	2017-02-23			-7.09	EUR	living	food	\N	t
46979	db	2017-02-23	2017-02-23			-1.49	EUR	free time	entertainment	\N	t
47008	db	2017-02-24	2017-02-24			-13.14	EUR	living	food	\N	t
47007	db	2017-02-24	2017-02-24			-15.72	EUR	free time	going out	\N	t
47006	db	2017-02-24	2017-02-24			-15.22	EUR	mobility	gas	\N	t
47000	db	2017-02-24	2017-02-24			-20.00	EUR	other	cash	\N	t
47035	db	2017-02-25	2017-02-25			-9.97	EUR	health	wellness	\N	t
47034	db	2017-02-25	2017-02-25			-12.55	EUR	free time	going out	\N	t
47076	db	2017-02-27	2017-02-27			-1.91	EUR	living	food	\N	t
47102	db	2017-02-28	2017-02-28			-9.05	EUR	free time	hobbies	\N	t
47136	db	2017-03-01	2017-03-01			-10.00	EUR	house	phone	\N	t
47128	db	2017-03-01	2017-03-01			-0.67	EUR	free time	sport	\N	t
47162	db	2017-03-02	2017-03-02			-10.00	EUR	house	electricity	\N	t
47155	db	2017-03-02	2017-03-02			-7.61	EUR	living	food	\N	t
47154	db	2017-03-02	2017-03-02			-4.98	EUR	free time	entertainment	\N	t
47188	db	2017-03-03	2017-03-03			-10.00	EUR	house	internet	\N	t
47183	db	2017-03-03	2017-03-03			-10.91	EUR	living	food	\N	t
47182	db	2017-03-03	2017-03-03			-10.44	EUR	free time	going out	\N	t
47181	db	2017-03-03	2017-03-03			-2.78	EUR	mobility	gas	\N	t
47175	db	2017-03-03	2017-03-03			-20.00	EUR	other	cash	\N	t
47214	db	2017-03-04	2017-03-04			-250.00	EUR	house	rent	\N	t
47210	db	2017-03-04	2017-03-04			-11.10	EUR	health	wellness	\N	t
47209	db	2017-03-04	2017-03-04			-11.19	EUR	free time	going out	\N	t
47240	db	2017-03-05	2017-03-05			-10.00	EUR	finance	costs and fees	\N	t
47266	db	2017-03-06	2017-03-06			-50.00	EUR	finance	insurance	\N	t
47251	db	2017-03-06	2017-03-06			-1.83	EUR	living	food	\N	t
47292	db	2017-03-07	2017-03-07			-44.15	EUR	health	doctor visits	\N	t
47277	db	2017-03-07	2017-03-07			-0.35	EUR	free time	hobbies	\N	t
47318	db	2017-03-08	2017-03-08			1000.00	EUR	work and training	salary	\N	t
47303	db	2017-03-08	2017-03-08			-1.57	EUR	free time	sport	\N	t
47330	db	2017-03-09	2017-03-09			-0.40	EUR	living	food	\N	t
47329	db	2017-03-09	2017-03-09			-3.73	EUR	free time	entertainment	\N	t
47369	db	2017-03-10	2017-03-10			-55.75	EUR	living	pets	\N	t
47358	db	2017-03-10	2017-03-10			-0.70	EUR	living	food	\N	t
47357	db	2017-03-10	2017-03-10			-5.02	EUR	free time	going out	\N	t
47356	db	2017-03-10	2017-03-10			-14.84	EUR	mobility	gas	\N	t
47350	db	2017-03-10	2017-03-10			-20.00	EUR	other	cash	\N	t
47385	db	2017-03-11	2017-03-11			-19.12	EUR	health	wellness	\N	t
47384	db	2017-03-11	2017-03-11			-2.59	EUR	free time	going out	\N	t
47426	db	2017-03-13	2017-03-13			-8.94	EUR	living	food	\N	t
47452	db	2017-03-14	2017-03-14			-1.81	EUR	free time	hobbies	\N	t
47495	db	2017-03-15	2017-03-15			-52.64	EUR	living	household	\N	t
47478	db	2017-03-15	2017-03-15			-7.67	EUR	free time	sport	\N	t
47505	db	2017-03-16	2017-03-16			-6.69	EUR	living	food	\N	t
47504	db	2017-03-16	2017-03-16			-9.45	EUR	free time	entertainment	\N	t
47533	db	2017-03-17	2017-03-17			-9.55	EUR	living	food	\N	t
47532	db	2017-03-17	2017-03-17			-3.53	EUR	free time	going out	\N	t
47531	db	2017-03-17	2017-03-17			-1.21	EUR	mobility	gas	\N	t
47525	db	2017-03-17	2017-03-17			-20.00	EUR	other	cash	\N	t
47560	db	2017-03-18	2017-03-18			-10.45	EUR	health	wellness	\N	t
47559	db	2017-03-18	2017-03-18			-9.90	EUR	free time	going out	\N	t
47622	db	2017-03-20	2017-03-20			-27.76	EUR	free time	gadgets	\N	t
47621	db	2017-03-20	2017-03-20			-73.95	EUR	living	clothes	\N	t
47601	db	2017-03-20	2017-03-20			-5.00	EUR	living	food	\N	t
47627	db	2017-03-21	2017-03-21			-4.36	EUR	free time	hobbies	\N	t
47653	db	2017-03-22	2017-03-22			-3.64	EUR	free time	sport	\N	t
47680	db	2017-03-23	2017-03-23			-7.51	EUR	living	food	\N	t
47679	db	2017-03-23	2017-03-23			-4.46	EUR	free time	entertainment	\N	t
47708	db	2017-03-24	2017-03-24			-6.23	EUR	living	food	\N	t
47707	db	2017-03-24	2017-03-24			-12.08	EUR	free time	going out	\N	t
47706	db	2017-03-24	2017-03-24			-6.66	EUR	mobility	gas	\N	t
47700	db	2017-03-24	2017-03-24			-20.00	EUR	other	cash	\N	t
47735	db	2017-03-25	2017-03-25			-10.78	EUR	health	wellness	\N	t
47734	db	2017-03-25	2017-03-25			-5.66	EUR	free time	going out	\N	t
47776	db	2017-03-27	2017-03-27			-1.60	EUR	living	food	\N	t
47802	db	2017-03-28	2017-03-28			-8.26	EUR	free time	hobbies	\N	t
47828	db	2017-03-29	2017-03-29			-9.20	EUR	free time	sport	\N	t
47855	db	2017-03-30	2017-03-30			-8.74	EUR	living	food	\N	t
47854	db	2017-03-30	2017-03-30			-3.90	EUR	free time	entertainment	\N	t
47883	db	2017-03-31	2017-03-31			-1.16	EUR	living	food	\N	t
47882	db	2017-03-31	2017-03-31			-13.65	EUR	free time	going out	\N	t
47881	db	2017-03-31	2017-03-31			-14.79	EUR	mobility	gas	\N	t
47875	db	2017-03-31	2017-03-31			-20.00	EUR	other	cash	\N	t
47911	db	2017-04-01	2017-04-01			-10.00	EUR	house	phone	\N	t
47910	db	2017-04-01	2017-04-01			-17.06	EUR	health	wellness	\N	t
47909	db	2017-04-01	2017-04-01			-14.16	EUR	free time	going out	\N	t
47937	db	2017-04-02	2017-04-02			-10.00	EUR	house	electricity	\N	t
47963	db	2017-04-03	2017-04-03			-10.00	EUR	house	internet	\N	t
47951	db	2017-04-03	2017-04-03			-2.71	EUR	living	food	\N	t
47989	db	2017-04-04	2017-04-04			-250.00	EUR	house	rent	\N	t
47977	db	2017-04-04	2017-04-04			-3.19	EUR	free time	hobbies	\N	t
48015	db	2017-04-05	2017-04-05			-10.00	EUR	finance	costs and fees	\N	t
48003	db	2017-04-05	2017-04-05			-8.27	EUR	free time	sport	\N	t
48041	db	2017-04-06	2017-04-06			-50.00	EUR	finance	insurance	\N	t
48030	db	2017-04-06	2017-04-06			-6.85	EUR	living	food	\N	t
48029	db	2017-04-06	2017-04-06			-7.78	EUR	free time	entertainment	\N	t
48067	db	2017-04-07	2017-04-07			-95.01	EUR	health	doctor visits	\N	t
48058	db	2017-04-07	2017-04-07			-12.63	EUR	living	food	\N	t
48057	db	2017-04-07	2017-04-07			-1.18	EUR	free time	going out	\N	t
48056	db	2017-04-07	2017-04-07			-0.17	EUR	mobility	gas	\N	t
48050	db	2017-04-07	2017-04-07			-20.00	EUR	other	cash	\N	t
48093	db	2017-04-08	2017-04-08			1000.00	EUR	work and training	salary	\N	t
48085	db	2017-04-08	2017-04-08			-12.43	EUR	health	wellness	\N	t
48084	db	2017-04-08	2017-04-08			-7.16	EUR	free time	going out	\N	t
48144	db	2017-04-10	2017-04-10			-71.72	EUR	living	pets	\N	t
48126	db	2017-04-10	2017-04-10			-7.89	EUR	living	food	\N	t
48152	db	2017-04-11	2017-04-11			-8.71	EUR	free time	hobbies	\N	t
48178	db	2017-04-12	2017-04-12			-6.14	EUR	free time	sport	\N	t
48205	db	2017-04-13	2017-04-13			-6.51	EUR	living	food	\N	t
48204	db	2017-04-13	2017-04-13			-6.52	EUR	free time	entertainment	\N	t
48233	db	2017-04-14	2017-04-14			-16.79	EUR	living	food	\N	t
48232	db	2017-04-14	2017-04-14			-14.74	EUR	free time	going out	\N	t
48231	db	2017-04-14	2017-04-14			-18.52	EUR	mobility	gas	\N	t
48225	db	2017-04-14	2017-04-14			-20.00	EUR	other	cash	\N	t
48270	db	2017-04-15	2017-04-15			-70.49	EUR	living	household	\N	t
48260	db	2017-04-15	2017-04-15			-16.51	EUR	health	wellness	\N	t
48259	db	2017-04-15	2017-04-15			-17.94	EUR	free time	going out	\N	t
48301	db	2017-04-17	2017-04-17			-1.00	EUR	living	food	\N	t
48327	db	2017-04-18	2017-04-18			-2.02	EUR	free time	hobbies	\N	t
48353	db	2017-04-19	2017-04-19			-5.64	EUR	free time	sport	\N	t
48397	db	2017-04-20	2017-04-20			-17.89	EUR	free time	gadgets	\N	t
48396	db	2017-04-20	2017-04-20			-55.76	EUR	living	clothes	\N	t
48380	db	2017-04-20	2017-04-20			-7.13	EUR	living	food	\N	t
48379	db	2017-04-20	2017-04-20			-7.02	EUR	free time	entertainment	\N	t
48408	db	2017-04-21	2017-04-21			-3.89	EUR	living	food	\N	t
48407	db	2017-04-21	2017-04-21			-3.23	EUR	free time	going out	\N	t
48406	db	2017-04-21	2017-04-21			-2.01	EUR	mobility	gas	\N	t
48400	db	2017-04-21	2017-04-21			-20.00	EUR	other	cash	\N	t
48435	db	2017-04-22	2017-04-22			-10.86	EUR	health	wellness	\N	t
48434	db	2017-04-22	2017-04-22			-10.33	EUR	free time	going out	\N	t
48476	db	2017-04-24	2017-04-24			-3.54	EUR	living	food	\N	t
48502	db	2017-04-25	2017-04-25			-3.66	EUR	free time	hobbies	\N	t
48528	db	2017-04-26	2017-04-26			-6.56	EUR	free time	sport	\N	t
48555	db	2017-04-27	2017-04-27			-7.46	EUR	living	food	\N	t
48554	db	2017-04-27	2017-04-27			-4.95	EUR	free time	entertainment	\N	t
48583	db	2017-04-28	2017-04-28			-17.21	EUR	living	food	\N	t
48582	db	2017-04-28	2017-04-28			-9.11	EUR	free time	going out	\N	t
48581	db	2017-04-28	2017-04-28			-19.63	EUR	mobility	gas	\N	t
48575	db	2017-04-28	2017-04-28			-20.00	EUR	other	cash	\N	t
48610	db	2017-04-29	2017-04-29			-6.04	EUR	health	wellness	\N	t
48609	db	2017-04-29	2017-04-29			-6.00	EUR	free time	going out	\N	t
48661	db	2017-05-01	2017-05-01			-10.00	EUR	house	phone	\N	t
48651	db	2017-05-01	2017-05-01			-2.62	EUR	living	food	\N	t
48687	db	2017-05-02	2017-05-02			-10.00	EUR	house	electricity	\N	t
48677	db	2017-05-02	2017-05-02			-2.04	EUR	free time	hobbies	\N	t
48713	db	2017-05-03	2017-05-03			-10.00	EUR	house	internet	\N	t
48703	db	2017-05-03	2017-05-03			-3.31	EUR	free time	sport	\N	t
48739	db	2017-05-04	2017-05-04			-250.00	EUR	house	rent	\N	t
48730	db	2017-05-04	2017-05-04			-0.95	EUR	living	food	\N	t
48729	db	2017-05-04	2017-05-04			-6.52	EUR	free time	entertainment	\N	t
48765	db	2017-05-05	2017-05-05			-10.00	EUR	finance	costs and fees	\N	t
48758	db	2017-05-05	2017-05-05			-17.40	EUR	living	food	\N	t
48757	db	2017-05-05	2017-05-05			-18.61	EUR	free time	going out	\N	t
48756	db	2017-05-05	2017-05-05			-13.86	EUR	mobility	gas	\N	t
48750	db	2017-05-05	2017-05-05			-20.00	EUR	other	cash	\N	t
48791	db	2017-05-06	2017-05-06			-50.00	EUR	finance	insurance	\N	t
48785	db	2017-05-06	2017-05-06			-3.67	EUR	health	wellness	\N	t
48784	db	2017-05-06	2017-05-06			-3.13	EUR	free time	going out	\N	t
48817	db	2017-05-07	2017-05-07			-87.48	EUR	health	doctor visits	\N	t
48843	db	2017-05-08	2017-05-08			1000.00	EUR	work and training	salary	\N	t
48826	db	2017-05-08	2017-05-08			-8.21	EUR	living	food	\N	t
48852	db	2017-05-09	2017-05-09			-7.02	EUR	free time	hobbies	\N	t
48894	db	2017-05-10	2017-05-10			-46.57	EUR	living	pets	\N	t
48878	db	2017-05-10	2017-05-10			-5.75	EUR	free time	sport	\N	t
48905	db	2017-05-11	2017-05-11			-0.94	EUR	living	food	\N	t
48904	db	2017-05-11	2017-05-11			-3.78	EUR	free time	entertainment	\N	t
48933	db	2017-05-12	2017-05-12			-6.99	EUR	living	food	\N	t
48932	db	2017-05-12	2017-05-12			-19.54	EUR	free time	going out	\N	t
48931	db	2017-05-12	2017-05-12			-11.83	EUR	mobility	gas	\N	t
48925	db	2017-05-12	2017-05-12			-20.00	EUR	other	cash	\N	t
48960	db	2017-05-13	2017-05-13			-9.10	EUR	health	wellness	\N	t
48959	db	2017-05-13	2017-05-13			-15.38	EUR	free time	going out	\N	t
49020	db	2017-05-15	2017-05-15			-49.05	EUR	living	household	\N	t
49001	db	2017-05-15	2017-05-15			-8.63	EUR	living	food	\N	t
49027	db	2017-05-16	2017-05-16			-7.59	EUR	free time	hobbies	\N	t
49053	db	2017-05-17	2017-05-17			-4.63	EUR	free time	sport	\N	t
49080	db	2017-05-18	2017-05-18			-3.21	EUR	living	food	\N	t
49079	db	2017-05-18	2017-05-18			-7.28	EUR	free time	entertainment	\N	t
49108	db	2017-05-19	2017-05-19			-14.43	EUR	living	food	\N	t
49107	db	2017-05-19	2017-05-19			-7.66	EUR	free time	going out	\N	t
49106	db	2017-05-19	2017-05-19			-6.56	EUR	mobility	gas	\N	t
49100	db	2017-05-19	2017-05-19			-20.00	EUR	other	cash	\N	t
49147	db	2017-05-20	2017-05-20			-76.09	EUR	free time	gadgets	\N	t
49146	db	2017-05-20	2017-05-20			-55.50	EUR	living	clothes	\N	t
49135	db	2017-05-20	2017-05-20			-6.18	EUR	health	wellness	\N	t
49134	db	2017-05-20	2017-05-20			-8.35	EUR	free time	going out	\N	t
49176	db	2017-05-22	2017-05-22			-8.84	EUR	living	food	\N	t
49202	db	2017-05-23	2017-05-23			-6.86	EUR	free time	hobbies	\N	t
49228	db	2017-05-24	2017-05-24			-1.21	EUR	free time	sport	\N	t
49255	db	2017-05-25	2017-05-25			-0.14	EUR	living	food	\N	t
49254	db	2017-05-25	2017-05-25			-0.91	EUR	free time	entertainment	\N	t
49283	db	2017-05-26	2017-05-26			-15.47	EUR	living	food	\N	t
49282	db	2017-05-26	2017-05-26			-12.78	EUR	free time	going out	\N	t
49281	db	2017-05-26	2017-05-26			-0.91	EUR	mobility	gas	\N	t
49275	db	2017-05-26	2017-05-26			-20.00	EUR	other	cash	\N	t
49310	db	2017-05-27	2017-05-27			-11.36	EUR	health	wellness	\N	t
49309	db	2017-05-27	2017-05-27			-16.28	EUR	free time	going out	\N	t
49351	db	2017-05-29	2017-05-29			-0.93	EUR	living	food	\N	t
49377	db	2017-05-30	2017-05-30			-1.77	EUR	free time	hobbies	\N	t
49403	db	2017-05-31	2017-05-31			-0.64	EUR	free time	sport	\N	t
49436	db	2017-06-01	2017-06-01			-10.00	EUR	house	phone	\N	t
49430	db	2017-06-01	2017-06-01			-8.31	EUR	living	food	\N	t
49429	db	2017-06-01	2017-06-01			-3.45	EUR	free time	entertainment	\N	t
49462	db	2017-06-02	2017-06-02			-10.00	EUR	house	electricity	\N	t
49458	db	2017-06-02	2017-06-02			-18.62	EUR	living	food	\N	t
49457	db	2017-06-02	2017-06-02			-17.54	EUR	free time	going out	\N	t
49456	db	2017-06-02	2017-06-02			-14.07	EUR	mobility	gas	\N	t
49450	db	2017-06-02	2017-06-02			-20.00	EUR	other	cash	\N	t
49488	db	2017-06-03	2017-06-03			-10.00	EUR	house	internet	\N	t
49485	db	2017-06-03	2017-06-03			-13.97	EUR	health	wellness	\N	t
49484	db	2017-06-03	2017-06-03			-6.74	EUR	free time	going out	\N	t
49514	db	2017-06-04	2017-06-04			-250.00	EUR	house	rent	\N	t
49540	db	2017-06-05	2017-06-05			-10.00	EUR	finance	costs and fees	\N	t
49526	db	2017-06-05	2017-06-05			-6.82	EUR	living	food	\N	t
49566	db	2017-06-06	2017-06-06			-50.00	EUR	finance	insurance	\N	t
49552	db	2017-06-06	2017-06-06			-2.27	EUR	free time	hobbies	\N	t
49592	db	2017-06-07	2017-06-07			-67.83	EUR	health	doctor visits	\N	t
49578	db	2017-06-07	2017-06-07			-6.34	EUR	free time	sport	\N	t
49618	db	2017-06-08	2017-06-08			1000.00	EUR	work and training	salary	\N	t
49605	db	2017-06-08	2017-06-08			-9.47	EUR	living	food	\N	t
49604	db	2017-06-08	2017-06-08			-3.51	EUR	free time	entertainment	\N	t
49633	db	2017-06-09	2017-06-09			-17.34	EUR	living	food	\N	t
49632	db	2017-06-09	2017-06-09			-13.17	EUR	free time	going out	\N	t
49631	db	2017-06-09	2017-06-09			-7.26	EUR	mobility	gas	\N	t
49625	db	2017-06-09	2017-06-09			-20.00	EUR	other	cash	\N	t
49669	db	2017-06-10	2017-06-10			-60.84	EUR	living	pets	\N	t
49660	db	2017-06-10	2017-06-10			-16.92	EUR	health	wellness	\N	t
49659	db	2017-06-10	2017-06-10			-3.91	EUR	free time	going out	\N	t
49701	db	2017-06-12	2017-06-12			-3.05	EUR	living	food	\N	t
49727	db	2017-06-13	2017-06-13			-9.10	EUR	free time	hobbies	\N	t
49753	db	2017-06-14	2017-06-14			-0.74	EUR	free time	sport	\N	t
49795	db	2017-06-15	2017-06-15			-17.27	EUR	living	household	\N	t
49780	db	2017-06-15	2017-06-15			-0.90	EUR	living	food	\N	t
49779	db	2017-06-15	2017-06-15			-4.50	EUR	free time	entertainment	\N	t
49808	db	2017-06-16	2017-06-16			-9.71	EUR	living	food	\N	t
49807	db	2017-06-16	2017-06-16			-8.44	EUR	free time	going out	\N	t
49806	db	2017-06-16	2017-06-16			-11.06	EUR	mobility	gas	\N	t
49800	db	2017-06-16	2017-06-16			-20.00	EUR	other	cash	\N	t
49835	db	2017-06-17	2017-06-17			-3.46	EUR	health	wellness	\N	t
49834	db	2017-06-17	2017-06-17			-1.58	EUR	free time	going out	\N	t
49876	db	2017-06-19	2017-06-19			-3.71	EUR	living	food	\N	t
49922	db	2017-06-20	2017-06-20			-59.68	EUR	free time	gadgets	\N	t
49921	db	2017-06-20	2017-06-20			-78.08	EUR	living	clothes	\N	t
49902	db	2017-06-20	2017-06-20			-9.93	EUR	free time	hobbies	\N	t
49928	db	2017-06-21	2017-06-21			-6.18	EUR	free time	sport	\N	t
49955	db	2017-06-22	2017-06-22			-6.96	EUR	living	food	\N	t
49954	db	2017-06-22	2017-06-22			-8.90	EUR	free time	entertainment	\N	t
49983	db	2017-06-23	2017-06-23			-8.74	EUR	living	food	\N	t
49982	db	2017-06-23	2017-06-23			-17.20	EUR	free time	going out	\N	t
49981	db	2017-06-23	2017-06-23			-14.17	EUR	mobility	gas	\N	t
49975	db	2017-06-23	2017-06-23			-20.00	EUR	other	cash	\N	t
50010	db	2017-06-24	2017-06-24			-10.34	EUR	health	wellness	\N	t
50009	db	2017-06-24	2017-06-24			-15.94	EUR	free time	going out	\N	t
50051	db	2017-06-26	2017-06-26			-0.81	EUR	living	food	\N	t
50077	db	2017-06-27	2017-06-27			-3.99	EUR	free time	hobbies	\N	t
50123	db	2017-06-28	2017-06-28			-331.05	EUR	free time	travel	\N	t
50103	db	2017-06-28	2017-06-28			-6.95	EUR	free time	sport	\N	t
50130	db	2017-06-29	2017-06-29			-3.65	EUR	living	food	\N	t
50129	db	2017-06-29	2017-06-29			-0.30	EUR	free time	entertainment	\N	t
50158	db	2017-06-30	2017-06-30			-10.69	EUR	living	food	\N	t
50157	db	2017-06-30	2017-06-30			-16.78	EUR	free time	going out	\N	t
50156	db	2017-06-30	2017-06-30			-16.54	EUR	mobility	gas	\N	t
50150	db	2017-06-30	2017-06-30			-20.00	EUR	other	cash	\N	t
50186	db	2017-07-01	2017-07-01			-10.00	EUR	house	phone	\N	t
50185	db	2017-07-01	2017-07-01			-17.08	EUR	health	wellness	\N	t
50184	db	2017-07-01	2017-07-01			-1.07	EUR	free time	going out	\N	t
50212	db	2017-07-02	2017-07-02			-10.00	EUR	house	electricity	\N	t
50238	db	2017-07-03	2017-07-03			-10.00	EUR	house	internet	\N	t
50226	db	2017-07-03	2017-07-03			-7.53	EUR	living	food	\N	t
50264	db	2017-07-04	2017-07-04			-250.00	EUR	house	rent	\N	t
50252	db	2017-07-04	2017-07-04			-2.95	EUR	free time	hobbies	\N	t
50290	db	2017-07-05	2017-07-05			-10.00	EUR	finance	costs and fees	\N	t
50278	db	2017-07-05	2017-07-05			-1.98	EUR	free time	sport	\N	t
50316	db	2017-07-06	2017-07-06			-50.00	EUR	finance	insurance	\N	t
50305	db	2017-07-06	2017-07-06			-2.40	EUR	living	food	\N	t
50304	db	2017-07-06	2017-07-06			-3.98	EUR	free time	entertainment	\N	t
50342	db	2017-07-07	2017-07-07			-85.56	EUR	health	doctor visits	\N	t
50333	db	2017-07-07	2017-07-07			-7.72	EUR	living	food	\N	t
50332	db	2017-07-07	2017-07-07			-16.41	EUR	free time	going out	\N	t
50331	db	2017-07-07	2017-07-07			-15.33	EUR	mobility	gas	\N	t
50325	db	2017-07-07	2017-07-07			-20.00	EUR	other	cash	\N	t
50368	db	2017-07-08	2017-07-08			1000.00	EUR	work and training	salary	\N	t
50360	db	2017-07-08	2017-07-08			-14.98	EUR	health	wellness	\N	t
50359	db	2017-07-08	2017-07-08			-3.60	EUR	free time	going out	\N	t
50419	db	2017-07-10	2017-07-10			-70.57	EUR	living	pets	\N	t
50401	db	2017-07-10	2017-07-10			-6.71	EUR	living	food	\N	t
50427	db	2017-07-11	2017-07-11			-7.45	EUR	free time	hobbies	\N	t
50453	db	2017-07-12	2017-07-12			-9.50	EUR	free time	sport	\N	t
50480	db	2017-07-13	2017-07-13			-7.01	EUR	living	food	\N	t
50479	db	2017-07-13	2017-07-13			-2.36	EUR	free time	entertainment	\N	t
50508	db	2017-07-14	2017-07-14			-19.07	EUR	living	food	\N	t
50507	db	2017-07-14	2017-07-14			-17.35	EUR	free time	going out	\N	t
50506	db	2017-07-14	2017-07-14			-12.30	EUR	mobility	gas	\N	t
50500	db	2017-07-14	2017-07-14			-20.00	EUR	other	cash	\N	t
50545	db	2017-07-15	2017-07-15			-22.09	EUR	living	household	\N	t
50535	db	2017-07-15	2017-07-15			-4.66	EUR	health	wellness	\N	t
50534	db	2017-07-15	2017-07-15			-17.24	EUR	free time	going out	\N	t
50576	db	2017-07-17	2017-07-17			-5.73	EUR	living	food	\N	t
50602	db	2017-07-18	2017-07-18			-7.63	EUR	free time	hobbies	\N	t
50628	db	2017-07-19	2017-07-19			-2.84	EUR	free time	sport	\N	t
50672	db	2017-07-20	2017-07-20			-46.24	EUR	free time	gadgets	\N	t
50671	db	2017-07-20	2017-07-20			-58.35	EUR	living	clothes	\N	t
50655	db	2017-07-20	2017-07-20			-3.15	EUR	living	food	\N	t
50654	db	2017-07-20	2017-07-20			-2.86	EUR	free time	entertainment	\N	t
50683	db	2017-07-21	2017-07-21			-10.04	EUR	living	food	\N	t
50682	db	2017-07-21	2017-07-21			-4.95	EUR	free time	going out	\N	t
50681	db	2017-07-21	2017-07-21			-0.98	EUR	mobility	gas	\N	t
50675	db	2017-07-21	2017-07-21			-20.00	EUR	other	cash	\N	t
50710	db	2017-07-22	2017-07-22			-8.04	EUR	health	wellness	\N	t
50709	db	2017-07-22	2017-07-22			-16.98	EUR	free time	going out	\N	t
50751	db	2017-07-24	2017-07-24			-3.75	EUR	living	food	\N	t
50777	db	2017-07-25	2017-07-25			-5.45	EUR	free time	hobbies	\N	t
50803	db	2017-07-26	2017-07-26			-6.33	EUR	free time	sport	\N	t
50830	db	2017-07-27	2017-07-27			-2.01	EUR	living	food	\N	t
50829	db	2017-07-27	2017-07-27			-1.52	EUR	free time	entertainment	\N	t
50858	db	2017-07-28	2017-07-28			-19.13	EUR	living	food	\N	t
50857	db	2017-07-28	2017-07-28			-2.12	EUR	free time	going out	\N	t
50856	db	2017-07-28	2017-07-28			-7.18	EUR	mobility	gas	\N	t
50850	db	2017-07-28	2017-07-28			-20.00	EUR	other	cash	\N	t
50885	db	2017-07-29	2017-07-29			-19.72	EUR	health	wellness	\N	t
50884	db	2017-07-29	2017-07-29			-8.05	EUR	free time	going out	\N	t
50926	db	2017-07-31	2017-07-31			-9.85	EUR	living	food	\N	t
50961	db	2017-08-01	2017-08-01			-10.00	EUR	house	phone	\N	t
50952	db	2017-08-01	2017-08-01			-7.99	EUR	free time	hobbies	\N	t
50987	db	2017-08-02	2017-08-02			-10.00	EUR	house	electricity	\N	t
50978	db	2017-08-02	2017-08-02			-0.93	EUR	free time	sport	\N	t
51013	db	2017-08-03	2017-08-03			-10.00	EUR	house	internet	\N	t
51005	db	2017-08-03	2017-08-03			-4.04	EUR	living	food	\N	t
51004	db	2017-08-03	2017-08-03			-1.77	EUR	free time	entertainment	\N	t
51039	db	2017-08-04	2017-08-04			-250.00	EUR	house	rent	\N	t
51033	db	2017-08-04	2017-08-04			-6.12	EUR	living	food	\N	t
51032	db	2017-08-04	2017-08-04			-2.08	EUR	free time	going out	\N	t
51031	db	2017-08-04	2017-08-04			-16.79	EUR	mobility	gas	\N	t
51025	db	2017-08-04	2017-08-04			-20.00	EUR	other	cash	\N	t
51065	db	2017-08-05	2017-08-05			-10.00	EUR	finance	costs and fees	\N	t
51060	db	2017-08-05	2017-08-05			-1.33	EUR	health	wellness	\N	t
51059	db	2017-08-05	2017-08-05			-18.88	EUR	free time	going out	\N	t
51091	db	2017-08-06	2017-08-06			-50.00	EUR	finance	insurance	\N	t
51117	db	2017-08-07	2017-08-07			-94.51	EUR	health	doctor visits	\N	t
51101	db	2017-08-07	2017-08-07			-6.51	EUR	living	food	\N	t
51143	db	2017-08-08	2017-08-08			1000.00	EUR	work and training	salary	\N	t
51127	db	2017-08-08	2017-08-08			-8.74	EUR	free time	hobbies	\N	t
51153	db	2017-08-09	2017-08-09			-4.92	EUR	free time	sport	\N	t
51194	db	2017-08-10	2017-08-10			-78.33	EUR	living	pets	\N	t
51180	db	2017-08-10	2017-08-10			-1.64	EUR	living	food	\N	t
51179	db	2017-08-10	2017-08-10			-7.12	EUR	free time	entertainment	\N	t
51208	db	2017-08-11	2017-08-11			-0.91	EUR	living	food	\N	t
51207	db	2017-08-11	2017-08-11			-9.66	EUR	free time	going out	\N	t
51206	db	2017-08-11	2017-08-11			-16.92	EUR	mobility	gas	\N	t
51200	db	2017-08-11	2017-08-11			-20.00	EUR	other	cash	\N	t
51235	db	2017-08-12	2017-08-12			-12.46	EUR	health	wellness	\N	t
51234	db	2017-08-12	2017-08-12			-6.16	EUR	free time	going out	\N	t
51276	db	2017-08-14	2017-08-14			-2.82	EUR	living	food	\N	t
51320	db	2017-08-15	2017-08-15			-43.64	EUR	living	household	\N	t
51302	db	2017-08-15	2017-08-15			-6.22	EUR	free time	hobbies	\N	t
51328	db	2017-08-16	2017-08-16			-0.73	EUR	free time	sport	\N	t
51355	db	2017-08-17	2017-08-17			-3.85	EUR	living	food	\N	t
51354	db	2017-08-17	2017-08-17			-3.78	EUR	free time	entertainment	\N	t
51383	db	2017-08-18	2017-08-18			-6.00	EUR	living	food	\N	t
51382	db	2017-08-18	2017-08-18			-4.55	EUR	free time	going out	\N	t
51381	db	2017-08-18	2017-08-18			-14.61	EUR	mobility	gas	\N	t
51375	db	2017-08-18	2017-08-18			-20.00	EUR	other	cash	\N	t
51410	db	2017-08-19	2017-08-19			-9.75	EUR	health	wellness	\N	t
51409	db	2017-08-19	2017-08-19			-16.86	EUR	free time	going out	\N	t
51447	db	2017-08-20	2017-08-20			-25.92	EUR	free time	gadgets	\N	t
51446	db	2017-08-20	2017-08-20			-26.37	EUR	living	clothes	\N	t
51451	db	2017-08-21	2017-08-21			-0.99	EUR	living	food	\N	t
51477	db	2017-08-22	2017-08-22			-9.96	EUR	free time	hobbies	\N	t
51503	db	2017-08-23	2017-08-23			-1.09	EUR	free time	sport	\N	t
51530	db	2017-08-24	2017-08-24			-2.73	EUR	living	food	\N	t
51529	db	2017-08-24	2017-08-24			-9.99	EUR	free time	entertainment	\N	t
51558	db	2017-08-25	2017-08-25			-15.45	EUR	living	food	\N	t
51557	db	2017-08-25	2017-08-25			-3.31	EUR	free time	going out	\N	t
51556	db	2017-08-25	2017-08-25			-9.34	EUR	mobility	gas	\N	t
51550	db	2017-08-25	2017-08-25			-20.00	EUR	other	cash	\N	t
51585	db	2017-08-26	2017-08-26			-19.42	EUR	health	wellness	\N	t
51584	db	2017-08-26	2017-08-26			-14.42	EUR	free time	going out	\N	t
51626	db	2017-08-28	2017-08-28			-3.95	EUR	living	food	\N	t
51652	db	2017-08-29	2017-08-29			-9.99	EUR	free time	hobbies	\N	t
51678	db	2017-08-30	2017-08-30			-3.39	EUR	free time	sport	\N	t
51705	db	2017-08-31	2017-08-31			-7.36	EUR	living	food	\N	t
51704	db	2017-08-31	2017-08-31			-1.07	EUR	free time	entertainment	\N	t
51736	db	2017-09-01	2017-09-01			-10.00	EUR	house	phone	\N	t
51733	db	2017-09-01	2017-09-01			-2.40	EUR	living	food	\N	t
51732	db	2017-09-01	2017-09-01			-19.73	EUR	free time	going out	\N	t
51731	db	2017-09-01	2017-09-01			-17.56	EUR	mobility	gas	\N	t
51725	db	2017-09-01	2017-09-01			-20.00	EUR	other	cash	\N	t
51762	db	2017-09-02	2017-09-02			-10.00	EUR	house	electricity	\N	t
51760	db	2017-09-02	2017-09-02			-3.11	EUR	health	wellness	\N	t
51759	db	2017-09-02	2017-09-02			-15.33	EUR	free time	going out	\N	t
51788	db	2017-09-03	2017-09-03			-10.00	EUR	house	internet	\N	t
51814	db	2017-09-04	2017-09-04			-250.00	EUR	house	rent	\N	t
51801	db	2017-09-04	2017-09-04			-9.54	EUR	living	food	\N	t
51840	db	2017-09-05	2017-09-05			-10.00	EUR	finance	costs and fees	\N	t
51827	db	2017-09-05	2017-09-05			-7.86	EUR	free time	hobbies	\N	t
51866	db	2017-09-06	2017-09-06			-50.00	EUR	finance	insurance	\N	t
51853	db	2017-09-06	2017-09-06			-6.07	EUR	free time	sport	\N	t
51892	db	2017-09-07	2017-09-07			-56.02	EUR	health	doctor visits	\N	t
51880	db	2017-09-07	2017-09-07			-6.73	EUR	living	food	\N	t
51879	db	2017-09-07	2017-09-07			-7.41	EUR	free time	entertainment	\N	t
51918	db	2017-09-08	2017-09-08			1000.00	EUR	work and training	salary	\N	t
51908	db	2017-09-08	2017-09-08			-7.33	EUR	living	food	\N	t
51907	db	2017-09-08	2017-09-08			-15.08	EUR	free time	going out	\N	t
51906	db	2017-09-08	2017-09-08			-7.16	EUR	mobility	gas	\N	t
51900	db	2017-09-08	2017-09-08			-20.00	EUR	other	cash	\N	t
51935	db	2017-09-09	2017-09-09			-16.42	EUR	health	wellness	\N	t
51934	db	2017-09-09	2017-09-09			-5.56	EUR	free time	going out	\N	t
51969	db	2017-09-10	2017-09-10			-71.14	EUR	living	pets	\N	t
51976	db	2017-09-11	2017-09-11			-1.46	EUR	living	food	\N	t
52002	db	2017-09-12	2017-09-12			-9.02	EUR	free time	hobbies	\N	t
52028	db	2017-09-13	2017-09-13			-5.76	EUR	free time	sport	\N	t
52055	db	2017-09-14	2017-09-14			-1.27	EUR	living	food	\N	t
52054	db	2017-09-14	2017-09-14			-4.09	EUR	free time	entertainment	\N	t
52095	db	2017-09-15	2017-09-15			-40.91	EUR	living	household	\N	t
52083	db	2017-09-15	2017-09-15			-10.24	EUR	living	food	\N	t
52082	db	2017-09-15	2017-09-15			-11.49	EUR	free time	going out	\N	t
52081	db	2017-09-15	2017-09-15			-13.80	EUR	mobility	gas	\N	t
52075	db	2017-09-15	2017-09-15			-20.00	EUR	other	cash	\N	t
52110	db	2017-09-16	2017-09-16			-5.73	EUR	health	wellness	\N	t
52109	db	2017-09-16	2017-09-16			-8.81	EUR	free time	going out	\N	t
52151	db	2017-09-18	2017-09-18			-3.17	EUR	living	food	\N	t
52177	db	2017-09-19	2017-09-19			-2.17	EUR	free time	hobbies	\N	t
52222	db	2017-09-20	2017-09-20			-15.56	EUR	free time	gadgets	\N	t
52221	db	2017-09-20	2017-09-20			-8.11	EUR	living	clothes	\N	t
52203	db	2017-09-20	2017-09-20			-3.63	EUR	free time	sport	\N	t
52230	db	2017-09-21	2017-09-21			-5.19	EUR	living	food	\N	t
52229	db	2017-09-21	2017-09-21			-5.48	EUR	free time	entertainment	\N	t
52258	db	2017-09-22	2017-09-22			-12.65	EUR	living	food	\N	t
52257	db	2017-09-22	2017-09-22			-14.59	EUR	free time	going out	\N	t
52256	db	2017-09-22	2017-09-22			-2.16	EUR	mobility	gas	\N	t
52250	db	2017-09-22	2017-09-22			-20.00	EUR	other	cash	\N	t
52285	db	2017-09-23	2017-09-23			-12.34	EUR	health	wellness	\N	t
52284	db	2017-09-23	2017-09-23			-14.12	EUR	free time	going out	\N	t
52326	db	2017-09-25	2017-09-25			-1.64	EUR	living	food	\N	t
52352	db	2017-09-26	2017-09-26			-8.11	EUR	free time	hobbies	\N	t
52378	db	2017-09-27	2017-09-27			-1.22	EUR	free time	sport	\N	t
52405	db	2017-09-28	2017-09-28			-7.80	EUR	living	food	\N	t
52404	db	2017-09-28	2017-09-28			-7.76	EUR	free time	entertainment	\N	t
52433	db	2017-09-29	2017-09-29			-8.19	EUR	living	food	\N	t
52432	db	2017-09-29	2017-09-29			-2.72	EUR	free time	going out	\N	t
52431	db	2017-09-29	2017-09-29			-18.65	EUR	mobility	gas	\N	t
52425	db	2017-09-29	2017-09-29			-20.00	EUR	other	cash	\N	t
52460	db	2017-09-30	2017-09-30			-11.66	EUR	health	wellness	\N	t
52459	db	2017-09-30	2017-09-30			-5.89	EUR	free time	going out	\N	t
52486	db	2017-10-01	2017-10-01			-10.00	EUR	house	phone	\N	t
52512	db	2017-10-02	2017-10-02			-10.00	EUR	house	electricity	\N	t
52501	db	2017-10-02	2017-10-02			-0.25	EUR	living	food	\N	t
52538	db	2017-10-03	2017-10-03			-10.00	EUR	house	internet	\N	t
52527	db	2017-10-03	2017-10-03			-8.01	EUR	free time	hobbies	\N	t
52564	db	2017-10-04	2017-10-04			-250.00	EUR	house	rent	\N	t
52553	db	2017-10-04	2017-10-04			-0.44	EUR	free time	sport	\N	t
52590	db	2017-10-05	2017-10-05			-10.00	EUR	finance	costs and fees	\N	t
52580	db	2017-10-05	2017-10-05			-5.74	EUR	living	food	\N	t
52579	db	2017-10-05	2017-10-05			-5.64	EUR	free time	entertainment	\N	t
52616	db	2017-10-06	2017-10-06			-50.00	EUR	finance	insurance	\N	t
52608	db	2017-10-06	2017-10-06			-11.63	EUR	living	food	\N	t
52607	db	2017-10-06	2017-10-06			-7.52	EUR	free time	going out	\N	t
52606	db	2017-10-06	2017-10-06			-8.72	EUR	mobility	gas	\N	t
52600	db	2017-10-06	2017-10-06			-20.00	EUR	other	cash	\N	t
52642	db	2017-10-07	2017-10-07			-45.79	EUR	health	doctor visits	\N	t
52635	db	2017-10-07	2017-10-07			-18.06	EUR	health	wellness	\N	t
52634	db	2017-10-07	2017-10-07			-1.14	EUR	free time	going out	\N	t
52668	db	2017-10-08	2017-10-08			1000.00	EUR	work and training	salary	\N	t
52676	db	2017-10-09	2017-10-09			-9.86	EUR	living	food	\N	t
52719	db	2017-10-10	2017-10-10			-1.29	EUR	living	pets	\N	t
52702	db	2017-10-10	2017-10-10			-1.84	EUR	free time	hobbies	\N	t
52728	db	2017-10-11	2017-10-11			-4.06	EUR	free time	sport	\N	t
52755	db	2017-10-12	2017-10-12			-3.05	EUR	living	food	\N	t
52754	db	2017-10-12	2017-10-12			-5.67	EUR	free time	entertainment	\N	t
52783	db	2017-10-13	2017-10-13			-17.54	EUR	living	food	\N	t
52782	db	2017-10-13	2017-10-13			-9.65	EUR	free time	going out	\N	t
52781	db	2017-10-13	2017-10-13			-18.56	EUR	mobility	gas	\N	t
52775	db	2017-10-13	2017-10-13			-20.00	EUR	other	cash	\N	t
52810	db	2017-10-14	2017-10-14			-9.48	EUR	health	wellness	\N	t
52809	db	2017-10-14	2017-10-14			-5.94	EUR	free time	going out	\N	t
52845	db	2017-10-15	2017-10-15			-71.98	EUR	living	household	\N	t
52851	db	2017-10-16	2017-10-16			-2.84	EUR	living	food	\N	t
52877	db	2017-10-17	2017-10-17			-3.06	EUR	free time	hobbies	\N	t
52903	db	2017-10-18	2017-10-18			-2.32	EUR	free time	sport	\N	t
52930	db	2017-10-19	2017-10-19			-9.67	EUR	living	food	\N	t
52929	db	2017-10-19	2017-10-19			-6.27	EUR	free time	entertainment	\N	t
52972	db	2017-10-20	2017-10-20			-45.50	EUR	free time	gadgets	\N	t
52971	db	2017-10-20	2017-10-20			-30.34	EUR	living	clothes	\N	t
52958	db	2017-10-20	2017-10-20			-9.65	EUR	living	food	\N	t
52957	db	2017-10-20	2017-10-20			-16.39	EUR	free time	going out	\N	t
52956	db	2017-10-20	2017-10-20			-14.35	EUR	mobility	gas	\N	t
52950	db	2017-10-20	2017-10-20			-20.00	EUR	other	cash	\N	t
52985	db	2017-10-21	2017-10-21			-14.50	EUR	health	wellness	\N	t
52984	db	2017-10-21	2017-10-21			-15.11	EUR	free time	going out	\N	t
53026	db	2017-10-23	2017-10-23			-2.71	EUR	living	food	\N	t
53052	db	2017-10-24	2017-10-24			-8.41	EUR	free time	hobbies	\N	t
53078	db	2017-10-25	2017-10-25			-8.27	EUR	free time	sport	\N	t
53105	db	2017-10-26	2017-10-26			-2.16	EUR	living	food	\N	t
53104	db	2017-10-26	2017-10-26			-2.58	EUR	free time	entertainment	\N	t
53133	db	2017-10-27	2017-10-27			-11.89	EUR	living	food	\N	t
53132	db	2017-10-27	2017-10-27			-5.01	EUR	free time	going out	\N	t
53131	db	2017-10-27	2017-10-27			-19.52	EUR	mobility	gas	\N	t
53125	db	2017-10-27	2017-10-27			-20.00	EUR	other	cash	\N	t
53160	db	2017-10-28	2017-10-28			-5.82	EUR	health	wellness	\N	t
53159	db	2017-10-28	2017-10-28			-15.37	EUR	free time	going out	\N	t
53201	db	2017-10-30	2017-10-30			-1.00	EUR	living	food	\N	t
53227	db	2017-10-31	2017-10-31			-7.11	EUR	free time	hobbies	\N	t
53261	db	2017-11-01	2017-11-01			-10.00	EUR	house	phone	\N	t
53253	db	2017-11-01	2017-11-01			-7.35	EUR	free time	sport	\N	t
53287	db	2017-11-02	2017-11-02			-10.00	EUR	house	electricity	\N	t
53280	db	2017-11-02	2017-11-02			-3.94	EUR	living	food	\N	t
53279	db	2017-11-02	2017-11-02			-8.78	EUR	free time	entertainment	\N	t
53313	db	2017-11-03	2017-11-03			-10.00	EUR	house	internet	\N	t
53308	db	2017-11-03	2017-11-03			-19.97	EUR	living	food	\N	t
53307	db	2017-11-03	2017-11-03			-16.22	EUR	free time	going out	\N	t
53306	db	2017-11-03	2017-11-03			-18.76	EUR	mobility	gas	\N	t
53300	db	2017-11-03	2017-11-03			-20.00	EUR	other	cash	\N	t
53339	db	2017-11-04	2017-11-04			-250.00	EUR	house	rent	\N	t
53335	db	2017-11-04	2017-11-04			-3.16	EUR	health	wellness	\N	t
53334	db	2017-11-04	2017-11-04			-19.40	EUR	free time	going out	\N	t
53365	db	2017-11-05	2017-11-05			-10.00	EUR	finance	costs and fees	\N	t
53391	db	2017-11-06	2017-11-06			-50.00	EUR	finance	insurance	\N	t
53376	db	2017-11-06	2017-11-06			-7.86	EUR	living	food	\N	t
53417	db	2017-11-07	2017-11-07			-75.41	EUR	health	doctor visits	\N	t
53402	db	2017-11-07	2017-11-07			-9.62	EUR	free time	hobbies	\N	t
53443	db	2017-11-08	2017-11-08			1000.00	EUR	work and training	salary	\N	t
53428	db	2017-11-08	2017-11-08			-6.38	EUR	free time	sport	\N	t
53455	db	2017-11-09	2017-11-09			-9.34	EUR	living	food	\N	t
53454	db	2017-11-09	2017-11-09			-7.83	EUR	free time	entertainment	\N	t
53494	db	2017-11-10	2017-11-10			-16.07	EUR	living	pets	\N	t
53483	db	2017-11-10	2017-11-10			-11.50	EUR	living	food	\N	t
53482	db	2017-11-10	2017-11-10			-19.53	EUR	free time	going out	\N	t
53481	db	2017-11-10	2017-11-10			-6.80	EUR	mobility	gas	\N	t
53475	db	2017-11-10	2017-11-10			-20.00	EUR	other	cash	\N	t
53510	db	2017-11-11	2017-11-11			-16.28	EUR	health	wellness	\N	t
53509	db	2017-11-11	2017-11-11			-16.73	EUR	free time	going out	\N	t
53551	db	2017-11-13	2017-11-13			-8.17	EUR	living	food	\N	t
53577	db	2017-11-14	2017-11-14			-9.13	EUR	free time	hobbies	\N	t
53620	db	2017-11-15	2017-11-15			-11.20	EUR	living	household	\N	t
53603	db	2017-11-15	2017-11-15			-7.98	EUR	free time	sport	\N	t
53630	db	2017-11-16	2017-11-16			-4.53	EUR	living	food	\N	t
53629	db	2017-11-16	2017-11-16			-1.55	EUR	free time	entertainment	\N	t
53658	db	2017-11-17	2017-11-17			-11.81	EUR	living	food	\N	t
53657	db	2017-11-17	2017-11-17			-5.38	EUR	free time	going out	\N	t
53656	db	2017-11-17	2017-11-17			-13.47	EUR	mobility	gas	\N	t
53650	db	2017-11-17	2017-11-17			-20.00	EUR	other	cash	\N	t
53685	db	2017-11-18	2017-11-18			-12.35	EUR	health	wellness	\N	t
53684	db	2017-11-18	2017-11-18			-3.82	EUR	free time	going out	\N	t
53747	db	2017-11-20	2017-11-20			-41.54	EUR	free time	gadgets	\N	t
53746	db	2017-11-20	2017-11-20			-7.65	EUR	living	clothes	\N	t
53726	db	2017-11-20	2017-11-20			-8.03	EUR	living	food	\N	t
53752	db	2017-11-21	2017-11-21			-6.95	EUR	free time	hobbies	\N	t
53778	db	2017-11-22	2017-11-22			-2.09	EUR	free time	sport	\N	t
53805	db	2017-11-23	2017-11-23			-7.62	EUR	living	food	\N	t
53804	db	2017-11-23	2017-11-23			-4.89	EUR	free time	entertainment	\N	t
53833	db	2017-11-24	2017-11-24			-15.42	EUR	living	food	\N	t
53832	db	2017-11-24	2017-11-24			-18.70	EUR	free time	going out	\N	t
53831	db	2017-11-24	2017-11-24			-9.71	EUR	mobility	gas	\N	t
53825	db	2017-11-24	2017-11-24			-20.00	EUR	other	cash	\N	t
53860	db	2017-11-25	2017-11-25			-16.74	EUR	health	wellness	\N	t
53859	db	2017-11-25	2017-11-25			-14.87	EUR	free time	going out	\N	t
53901	db	2017-11-27	2017-11-27			-3.63	EUR	living	food	\N	t
53927	db	2017-11-28	2017-11-28			-6.68	EUR	free time	hobbies	\N	t
53953	db	2017-11-29	2017-11-29			-5.76	EUR	free time	sport	\N	t
53980	db	2017-11-30	2017-11-30			-2.68	EUR	living	food	\N	t
53979	db	2017-11-30	2017-11-30			-0.54	EUR	free time	entertainment	\N	t
54011	db	2017-12-01	2017-12-01			-10.00	EUR	house	phone	\N	t
54008	db	2017-12-01	2017-12-01			-2.44	EUR	living	food	\N	t
54007	db	2017-12-01	2017-12-01			-9.05	EUR	free time	going out	\N	t
54006	db	2017-12-01	2017-12-01			-18.01	EUR	mobility	gas	\N	t
54000	db	2017-12-01	2017-12-01			-20.00	EUR	other	cash	\N	t
54037	db	2017-12-02	2017-12-02			-10.00	EUR	house	electricity	\N	t
54035	db	2017-12-02	2017-12-02			-16.13	EUR	health	wellness	\N	t
54034	db	2017-12-02	2017-12-02			-17.55	EUR	free time	going out	\N	t
54063	db	2017-12-03	2017-12-03			-10.00	EUR	house	internet	\N	t
54089	db	2017-12-04	2017-12-04			-250.00	EUR	house	rent	\N	t
54076	db	2017-12-04	2017-12-04			-1.00	EUR	living	food	\N	t
54115	db	2017-12-05	2017-12-05			-10.00	EUR	finance	costs and fees	\N	t
54102	db	2017-12-05	2017-12-05			-6.62	EUR	free time	hobbies	\N	t
54141	db	2017-12-06	2017-12-06			-50.00	EUR	finance	insurance	\N	t
54128	db	2017-12-06	2017-12-06			-0.54	EUR	free time	sport	\N	t
54167	db	2017-12-07	2017-12-07			-17.88	EUR	health	doctor visits	\N	t
54155	db	2017-12-07	2017-12-07			-8.14	EUR	living	food	\N	t
54154	db	2017-12-07	2017-12-07			-2.71	EUR	free time	entertainment	\N	t
54193	db	2017-12-08	2017-12-08			1000.00	EUR	work and training	salary	\N	t
54183	db	2017-12-08	2017-12-08			-18.56	EUR	living	food	\N	t
54182	db	2017-12-08	2017-12-08			-11.71	EUR	free time	going out	\N	t
54181	db	2017-12-08	2017-12-08			-12.52	EUR	mobility	gas	\N	t
54175	db	2017-12-08	2017-12-08			-20.00	EUR	other	cash	\N	t
54210	db	2017-12-09	2017-12-09			-7.71	EUR	health	wellness	\N	t
54209	db	2017-12-09	2017-12-09			-16.74	EUR	free time	going out	\N	t
54244	db	2017-12-10	2017-12-10			-62.74	EUR	living	pets	\N	t
54251	db	2017-12-11	2017-12-11			-9.27	EUR	living	food	\N	t
54277	db	2017-12-12	2017-12-12			-4.27	EUR	free time	hobbies	\N	t
54303	db	2017-12-13	2017-12-13			-8.00	EUR	free time	sport	\N	t
54330	db	2017-12-14	2017-12-14			-3.65	EUR	living	food	\N	t
54329	db	2017-12-14	2017-12-14			-1.67	EUR	free time	entertainment	\N	t
54370	db	2017-12-15	2017-12-15			-16.40	EUR	living	household	\N	t
54358	db	2017-12-15	2017-12-15			-5.27	EUR	living	food	\N	t
54357	db	2017-12-15	2017-12-15			-1.88	EUR	free time	going out	\N	t
54356	db	2017-12-15	2017-12-15			-8.05	EUR	mobility	gas	\N	t
54350	db	2017-12-15	2017-12-15			-20.00	EUR	other	cash	\N	t
54385	db	2017-12-16	2017-12-16			-18.30	EUR	health	wellness	\N	t
54384	db	2017-12-16	2017-12-16			-17.80	EUR	free time	going out	\N	t
54426	db	2017-12-18	2017-12-18			-2.21	EUR	living	food	\N	t
54452	db	2017-12-19	2017-12-19			-1.91	EUR	free time	hobbies	\N	t
54499	db	2017-12-20	2017-12-20			-75.77	EUR	free time	presents	\N	t
54497	db	2017-12-20	2017-12-20			-51.55	EUR	free time	gadgets	\N	t
54496	db	2017-12-20	2017-12-20			-37.07	EUR	living	clothes	\N	t
54478	db	2017-12-20	2017-12-20			-3.12	EUR	free time	sport	\N	t
54505	db	2017-12-21	2017-12-21			-6.17	EUR	living	food	\N	t
54504	db	2017-12-21	2017-12-21			-8.82	EUR	free time	entertainment	\N	t
54533	db	2017-12-22	2017-12-22			-10.73	EUR	living	food	\N	t
54532	db	2017-12-22	2017-12-22			-0.78	EUR	free time	going out	\N	t
54531	db	2017-12-22	2017-12-22			-5.62	EUR	mobility	gas	\N	t
54525	db	2017-12-22	2017-12-22			-20.00	EUR	other	cash	\N	t
54560	db	2017-12-23	2017-12-23			-9.98	EUR	health	wellness	\N	t
54559	db	2017-12-23	2017-12-23			-5.52	EUR	free time	going out	\N	t
54601	db	2017-12-25	2017-12-25			-6.75	EUR	living	food	\N	t
54627	db	2017-12-26	2017-12-26			-0.05	EUR	free time	hobbies	\N	t
54653	db	2017-12-27	2017-12-27			-9.02	EUR	free time	sport	\N	t
54680	db	2017-12-28	2017-12-28			-0.85	EUR	living	food	\N	t
54679	db	2017-12-28	2017-12-28			-4.63	EUR	free time	entertainment	\N	t
54708	db	2017-12-29	2017-12-29			-0.45	EUR	living	food	\N	t
54707	db	2017-12-29	2017-12-29			-18.75	EUR	free time	going out	\N	t
54706	db	2017-12-29	2017-12-29			-12.54	EUR	mobility	gas	\N	t
54700	db	2017-12-29	2017-12-29			-20.00	EUR	other	cash	\N	t
54735	db	2017-12-30	2017-12-30			-4.44	EUR	health	wellness	\N	t
54734	db	2017-12-30	2017-12-30			-19.84	EUR	free time	going out	\N	t
54786	db	2018-01-01	2018-01-01			-10.00	EUR	house	phone	\N	t
54776	db	2018-01-01	2018-01-01			-6.51	EUR	living	food	\N	t
54812	db	2018-01-02	2018-01-02			-10.00	EUR	house	electricity	\N	t
54802	db	2018-01-02	2018-01-02			-8.29	EUR	free time	hobbies	\N	t
54838	db	2018-01-03	2018-01-03			-10.00	EUR	house	internet	\N	t
54828	db	2018-01-03	2018-01-03			-9.76	EUR	free time	sport	\N	t
54864	db	2018-01-04	2018-01-04			-250.00	EUR	house	rent	\N	t
54855	db	2018-01-04	2018-01-04			-6.93	EUR	living	food	\N	t
54854	db	2018-01-04	2018-01-04			-7.71	EUR	free time	entertainment	\N	t
54890	db	2018-01-05	2018-01-05			-10.00	EUR	finance	costs and fees	\N	t
54883	db	2018-01-05	2018-01-05			-18.72	EUR	living	food	\N	t
54882	db	2018-01-05	2018-01-05			-2.83	EUR	free time	going out	\N	t
54881	db	2018-01-05	2018-01-05			-18.17	EUR	mobility	gas	\N	t
54875	db	2018-01-05	2018-01-05			-20.00	EUR	other	cash	\N	t
54916	db	2018-01-06	2018-01-06			-50.00	EUR	finance	insurance	\N	t
54910	db	2018-01-06	2018-01-06			-18.74	EUR	health	wellness	\N	t
54909	db	2018-01-06	2018-01-06			-11.69	EUR	free time	going out	\N	t
54942	db	2018-01-07	2018-01-07			-20.80	EUR	health	doctor visits	\N	t
54968	db	2018-01-08	2018-01-08			1000.00	EUR	work and training	salary	\N	t
54951	db	2018-01-08	2018-01-08			-4.64	EUR	living	food	\N	t
54977	db	2018-01-09	2018-01-09			-1.72	EUR	free time	hobbies	\N	t
55019	db	2018-01-10	2018-01-10			-37.41	EUR	living	pets	\N	t
55003	db	2018-01-10	2018-01-10			-7.72	EUR	free time	sport	\N	t
55030	db	2018-01-11	2018-01-11			-0.35	EUR	living	food	\N	t
55029	db	2018-01-11	2018-01-11			-3.35	EUR	free time	entertainment	\N	t
55058	db	2018-01-12	2018-01-12			-2.64	EUR	living	food	\N	t
55057	db	2018-01-12	2018-01-12			-7.65	EUR	free time	going out	\N	t
55056	db	2018-01-12	2018-01-12			-7.24	EUR	mobility	gas	\N	t
55050	db	2018-01-12	2018-01-12			-20.00	EUR	other	cash	\N	t
55085	db	2018-01-13	2018-01-13			-0.47	EUR	health	wellness	\N	t
55084	db	2018-01-13	2018-01-13			-15.78	EUR	free time	going out	\N	t
55145	db	2018-01-15	2018-01-15			-35.54	EUR	living	household	\N	t
55126	db	2018-01-15	2018-01-15			-4.11	EUR	living	food	\N	t
55152	db	2018-01-16	2018-01-16			-1.54	EUR	free time	hobbies	\N	t
55178	db	2018-01-17	2018-01-17			-2.16	EUR	free time	sport	\N	t
55205	db	2018-01-18	2018-01-18			-3.12	EUR	living	food	\N	t
55204	db	2018-01-18	2018-01-18			-0.32	EUR	free time	entertainment	\N	t
55233	db	2018-01-19	2018-01-19			-16.71	EUR	living	food	\N	t
55232	db	2018-01-19	2018-01-19			-7.20	EUR	free time	going out	\N	t
55231	db	2018-01-19	2018-01-19			-14.67	EUR	mobility	gas	\N	t
55225	db	2018-01-19	2018-01-19			-20.00	EUR	other	cash	\N	t
55272	db	2018-01-20	2018-01-20			-77.25	EUR	free time	gadgets	\N	t
55271	db	2018-01-20	2018-01-20			-76.94	EUR	living	clothes	\N	t
55260	db	2018-01-20	2018-01-20			-8.71	EUR	health	wellness	\N	t
55259	db	2018-01-20	2018-01-20			-12.77	EUR	free time	going out	\N	t
55301	db	2018-01-22	2018-01-22			-2.22	EUR	living	food	\N	t
55327	db	2018-01-23	2018-01-23			-5.62	EUR	free time	hobbies	\N	t
55353	db	2018-01-24	2018-01-24			-2.81	EUR	free time	sport	\N	t
55380	db	2018-01-25	2018-01-25			-5.56	EUR	living	food	\N	t
55379	db	2018-01-25	2018-01-25			-1.88	EUR	free time	entertainment	\N	t
55408	db	2018-01-26	2018-01-26			-6.33	EUR	living	food	\N	t
55407	db	2018-01-26	2018-01-26			-0.97	EUR	free time	going out	\N	t
55406	db	2018-01-26	2018-01-26			-13.92	EUR	mobility	gas	\N	t
55400	db	2018-01-26	2018-01-26			-20.00	EUR	other	cash	\N	t
55435	db	2018-01-27	2018-01-27			-12.92	EUR	health	wellness	\N	t
55434	db	2018-01-27	2018-01-27			-16.67	EUR	free time	going out	\N	t
55476	db	2018-01-29	2018-01-29			-2.92	EUR	living	food	\N	t
55502	db	2018-01-30	2018-01-30			-7.94	EUR	free time	hobbies	\N	t
55528	db	2018-01-31	2018-01-31			-6.59	EUR	free time	sport	\N	t
55561	db	2018-02-01	2018-02-01			-10.00	EUR	house	phone	\N	t
55555	db	2018-02-01	2018-02-01			-1.56	EUR	living	food	\N	t
55554	db	2018-02-01	2018-02-01			-8.67	EUR	free time	entertainment	\N	t
55587	db	2018-02-02	2018-02-02			-10.00	EUR	house	electricity	\N	t
55583	db	2018-02-02	2018-02-02			-19.63	EUR	living	food	\N	t
55582	db	2018-02-02	2018-02-02			-15.85	EUR	free time	going out	\N	t
55581	db	2018-02-02	2018-02-02			-14.72	EUR	mobility	gas	\N	t
55575	db	2018-02-02	2018-02-02			-20.00	EUR	other	cash	\N	t
55613	db	2018-02-03	2018-02-03			-10.00	EUR	house	internet	\N	t
55610	db	2018-02-03	2018-02-03			-17.51	EUR	health	wellness	\N	t
55609	db	2018-02-03	2018-02-03			-14.01	EUR	free time	going out	\N	t
55639	db	2018-02-04	2018-02-04			-250.00	EUR	house	rent	\N	t
55665	db	2018-02-05	2018-02-05			-10.00	EUR	finance	costs and fees	\N	t
55651	db	2018-02-05	2018-02-05			-9.14	EUR	living	food	\N	t
55691	db	2018-02-06	2018-02-06			-50.00	EUR	finance	insurance	\N	t
55677	db	2018-02-06	2018-02-06			-2.52	EUR	free time	hobbies	\N	t
55717	db	2018-02-07	2018-02-07			-43.04	EUR	health	doctor visits	\N	t
55703	db	2018-02-07	2018-02-07			-0.85	EUR	free time	sport	\N	t
55743	db	2018-02-08	2018-02-08			1000.00	EUR	work and training	salary	\N	t
55730	db	2018-02-08	2018-02-08			-1.06	EUR	living	food	\N	t
55729	db	2018-02-08	2018-02-08			-7.74	EUR	free time	entertainment	\N	t
55758	db	2018-02-09	2018-02-09			-5.81	EUR	living	food	\N	t
55757	db	2018-02-09	2018-02-09			-1.78	EUR	free time	going out	\N	t
55756	db	2018-02-09	2018-02-09			-3.41	EUR	mobility	gas	\N	t
55750	db	2018-02-09	2018-02-09			-20.00	EUR	other	cash	\N	t
55794	db	2018-02-10	2018-02-10			-77.79	EUR	living	pets	\N	t
55785	db	2018-02-10	2018-02-10			-11.58	EUR	health	wellness	\N	t
55784	db	2018-02-10	2018-02-10			-2.27	EUR	free time	going out	\N	t
55826	db	2018-02-12	2018-02-12			-1.35	EUR	living	food	\N	t
55852	db	2018-02-13	2018-02-13			-1.37	EUR	free time	hobbies	\N	t
55878	db	2018-02-14	2018-02-14			-4.42	EUR	free time	sport	\N	t
55920	db	2018-02-15	2018-02-15			-57.67	EUR	living	household	\N	t
55905	db	2018-02-15	2018-02-15			-0.82	EUR	living	food	\N	t
55904	db	2018-02-15	2018-02-15			-6.60	EUR	free time	entertainment	\N	t
55933	db	2018-02-16	2018-02-16			-19.00	EUR	living	food	\N	t
55932	db	2018-02-16	2018-02-16			-1.74	EUR	free time	going out	\N	t
55931	db	2018-02-16	2018-02-16			-12.16	EUR	mobility	gas	\N	t
55925	db	2018-02-16	2018-02-16			-20.00	EUR	other	cash	\N	t
55960	db	2018-02-17	2018-02-17			-17.55	EUR	health	wellness	\N	t
55959	db	2018-02-17	2018-02-17			-3.57	EUR	free time	going out	\N	t
56001	db	2018-02-19	2018-02-19			-4.28	EUR	living	food	\N	t
56047	db	2018-02-20	2018-02-20			-72.04	EUR	free time	gadgets	\N	t
56046	db	2018-02-20	2018-02-20			-19.49	EUR	living	clothes	\N	t
56027	db	2018-02-20	2018-02-20			-2.51	EUR	free time	hobbies	\N	t
56053	db	2018-02-21	2018-02-21			-8.48	EUR	free time	sport	\N	t
56080	db	2018-02-22	2018-02-22			-6.04	EUR	living	food	\N	t
56079	db	2018-02-22	2018-02-22			-7.86	EUR	free time	entertainment	\N	t
56108	db	2018-02-23	2018-02-23			-5.53	EUR	living	food	\N	t
56107	db	2018-02-23	2018-02-23			-7.46	EUR	free time	going out	\N	t
56106	db	2018-02-23	2018-02-23			-14.88	EUR	mobility	gas	\N	t
56100	db	2018-02-23	2018-02-23			-20.00	EUR	other	cash	\N	t
56135	db	2018-02-24	2018-02-24			-15.38	EUR	health	wellness	\N	t
56134	db	2018-02-24	2018-02-24			-2.22	EUR	free time	going out	\N	t
56176	db	2018-02-26	2018-02-26			-9.82	EUR	living	food	\N	t
56202	db	2018-02-27	2018-02-27			-8.04	EUR	free time	hobbies	\N	t
56228	db	2018-02-28	2018-02-28			-9.65	EUR	free time	sport	\N	t
56261	db	2018-03-01	2018-03-01			-10.00	EUR	house	phone	\N	t
56255	db	2018-03-01	2018-03-01			-4.27	EUR	living	food	\N	t
56254	db	2018-03-01	2018-03-01			-3.92	EUR	free time	entertainment	\N	t
56287	db	2018-03-02	2018-03-02			-10.00	EUR	house	electricity	\N	t
56283	db	2018-03-02	2018-03-02			-9.89	EUR	living	food	\N	t
56282	db	2018-03-02	2018-03-02			-14.45	EUR	free time	going out	\N	t
56281	db	2018-03-02	2018-03-02			-4.62	EUR	mobility	gas	\N	t
56275	db	2018-03-02	2018-03-02			-20.00	EUR	other	cash	\N	t
56313	db	2018-03-03	2018-03-03			-10.00	EUR	house	internet	\N	t
56310	db	2018-03-03	2018-03-03			-1.01	EUR	health	wellness	\N	t
56309	db	2018-03-03	2018-03-03			-4.28	EUR	free time	going out	\N	t
56339	db	2018-03-04	2018-03-04			-250.00	EUR	house	rent	\N	t
56365	db	2018-03-05	2018-03-05			-10.00	EUR	finance	costs and fees	\N	t
56351	db	2018-03-05	2018-03-05			-5.36	EUR	living	food	\N	t
56391	db	2018-03-06	2018-03-06			-50.00	EUR	finance	insurance	\N	t
56377	db	2018-03-06	2018-03-06			-7.41	EUR	free time	hobbies	\N	t
56417	db	2018-03-07	2018-03-07			-5.07	EUR	health	doctor visits	\N	t
56403	db	2018-03-07	2018-03-07			-6.53	EUR	free time	sport	\N	t
56443	db	2018-03-08	2018-03-08			1000.00	EUR	work and training	salary	\N	t
56430	db	2018-03-08	2018-03-08			-8.27	EUR	living	food	\N	t
56429	db	2018-03-08	2018-03-08			-6.39	EUR	free time	entertainment	\N	t
56458	db	2018-03-09	2018-03-09			-14.80	EUR	living	food	\N	t
56457	db	2018-03-09	2018-03-09			-0.38	EUR	free time	going out	\N	t
56456	db	2018-03-09	2018-03-09			-17.03	EUR	mobility	gas	\N	t
56450	db	2018-03-09	2018-03-09			-20.00	EUR	other	cash	\N	t
56494	db	2018-03-10	2018-03-10			-18.48	EUR	living	pets	\N	t
56485	db	2018-03-10	2018-03-10			-1.88	EUR	health	wellness	\N	t
56484	db	2018-03-10	2018-03-10			-14.61	EUR	free time	going out	\N	t
56526	db	2018-03-12	2018-03-12			-6.23	EUR	living	food	\N	t
56552	db	2018-03-13	2018-03-13			-3.68	EUR	free time	hobbies	\N	t
56578	db	2018-03-14	2018-03-14			-0.47	EUR	free time	sport	\N	t
56620	db	2018-03-15	2018-03-15			-52.34	EUR	living	household	\N	t
56605	db	2018-03-15	2018-03-15			-9.73	EUR	living	food	\N	t
56604	db	2018-03-15	2018-03-15			-8.43	EUR	free time	entertainment	\N	t
56633	db	2018-03-16	2018-03-16			-3.51	EUR	living	food	\N	t
56632	db	2018-03-16	2018-03-16			-8.27	EUR	free time	going out	\N	t
56631	db	2018-03-16	2018-03-16			-17.50	EUR	mobility	gas	\N	t
56625	db	2018-03-16	2018-03-16			-20.00	EUR	other	cash	\N	t
56660	db	2018-03-17	2018-03-17			-8.61	EUR	health	wellness	\N	t
56659	db	2018-03-17	2018-03-17			-17.77	EUR	free time	going out	\N	t
56701	db	2018-03-19	2018-03-19			-7.07	EUR	living	food	\N	t
56747	db	2018-03-20	2018-03-20			-27.90	EUR	free time	gadgets	\N	t
56746	db	2018-03-20	2018-03-20			-41.70	EUR	living	clothes	\N	t
56727	db	2018-03-20	2018-03-20			-5.64	EUR	free time	hobbies	\N	t
56753	db	2018-03-21	2018-03-21			-5.90	EUR	free time	sport	\N	t
56780	db	2018-03-22	2018-03-22			-8.47	EUR	living	food	\N	t
56779	db	2018-03-22	2018-03-22			-4.31	EUR	free time	entertainment	\N	t
56808	db	2018-03-23	2018-03-23			-17.71	EUR	living	food	\N	t
56807	db	2018-03-23	2018-03-23			-6.76	EUR	free time	going out	\N	t
56806	db	2018-03-23	2018-03-23			-1.04	EUR	mobility	gas	\N	t
56800	db	2018-03-23	2018-03-23			-20.00	EUR	other	cash	\N	t
56835	db	2018-03-24	2018-03-24			-7.65	EUR	health	wellness	\N	t
56834	db	2018-03-24	2018-03-24			-17.46	EUR	free time	going out	\N	t
56876	db	2018-03-26	2018-03-26			-8.94	EUR	living	food	\N	t
56902	db	2018-03-27	2018-03-27			-5.43	EUR	free time	hobbies	\N	t
56928	db	2018-03-28	2018-03-28			-6.61	EUR	free time	sport	\N	t
56955	db	2018-03-29	2018-03-29			-6.57	EUR	living	food	\N	t
56954	db	2018-03-29	2018-03-29			-8.29	EUR	free time	entertainment	\N	t
56983	db	2018-03-30	2018-03-30			-1.51	EUR	living	food	\N	t
56982	db	2018-03-30	2018-03-30			-14.07	EUR	free time	going out	\N	t
56981	db	2018-03-30	2018-03-30			-17.39	EUR	mobility	gas	\N	t
56975	db	2018-03-30	2018-03-30			-20.00	EUR	other	cash	\N	t
57010	db	2018-03-31	2018-03-31			-19.10	EUR	health	wellness	\N	t
57009	db	2018-03-31	2018-03-31			-4.13	EUR	free time	going out	\N	t
57036	db	2018-04-01	2018-04-01			-10.00	EUR	house	phone	\N	t
57062	db	2018-04-02	2018-04-02			-10.00	EUR	house	electricity	\N	t
57051	db	2018-04-02	2018-04-02			-5.09	EUR	living	food	\N	t
57088	db	2018-04-03	2018-04-03			-10.00	EUR	house	internet	\N	t
57077	db	2018-04-03	2018-04-03			-9.31	EUR	free time	hobbies	\N	t
57114	db	2018-04-04	2018-04-04			-250.00	EUR	house	rent	\N	t
57103	db	2018-04-04	2018-04-04			-9.49	EUR	free time	sport	\N	t
57140	db	2018-04-05	2018-04-05			-10.00	EUR	finance	costs and fees	\N	t
57130	db	2018-04-05	2018-04-05			-4.00	EUR	living	food	\N	t
57129	db	2018-04-05	2018-04-05			-4.24	EUR	free time	entertainment	\N	t
57166	db	2018-04-06	2018-04-06			-50.00	EUR	finance	insurance	\N	t
57158	db	2018-04-06	2018-04-06			-3.11	EUR	living	food	\N	t
57157	db	2018-04-06	2018-04-06			-0.88	EUR	free time	going out	\N	t
57156	db	2018-04-06	2018-04-06			-9.83	EUR	mobility	gas	\N	t
57150	db	2018-04-06	2018-04-06			-20.00	EUR	other	cash	\N	t
57192	db	2018-04-07	2018-04-07			-15.32	EUR	health	doctor visits	\N	t
57185	db	2018-04-07	2018-04-07			-16.24	EUR	health	wellness	\N	t
57184	db	2018-04-07	2018-04-07			-13.93	EUR	free time	going out	\N	t
57218	db	2018-04-08	2018-04-08			1000.00	EUR	work and training	salary	\N	t
57226	db	2018-04-09	2018-04-09			-5.16	EUR	living	food	\N	t
57269	db	2018-04-10	2018-04-10			-16.95	EUR	living	pets	\N	t
57252	db	2018-04-10	2018-04-10			-8.58	EUR	free time	hobbies	\N	t
57278	db	2018-04-11	2018-04-11			-4.53	EUR	free time	sport	\N	t
57305	db	2018-04-12	2018-04-12			-8.76	EUR	living	food	\N	t
57304	db	2018-04-12	2018-04-12			-8.30	EUR	free time	entertainment	\N	t
57333	db	2018-04-13	2018-04-13			-18.12	EUR	living	food	\N	t
57332	db	2018-04-13	2018-04-13			-2.18	EUR	free time	going out	\N	t
57331	db	2018-04-13	2018-04-13			-16.11	EUR	mobility	gas	\N	t
57325	db	2018-04-13	2018-04-13			-20.00	EUR	other	cash	\N	t
57360	db	2018-04-14	2018-04-14			-15.69	EUR	health	wellness	\N	t
57359	db	2018-04-14	2018-04-14			-3.76	EUR	free time	going out	\N	t
57395	db	2018-04-15	2018-04-15			-70.87	EUR	living	household	\N	t
57401	db	2018-04-16	2018-04-16			-5.08	EUR	living	food	\N	t
57427	db	2018-04-17	2018-04-17			-6.52	EUR	free time	hobbies	\N	t
57453	db	2018-04-18	2018-04-18			-4.98	EUR	free time	sport	\N	t
57480	db	2018-04-19	2018-04-19			-8.20	EUR	living	food	\N	t
57479	db	2018-04-19	2018-04-19			-8.63	EUR	free time	entertainment	\N	t
57522	db	2018-04-20	2018-04-20			-28.52	EUR	free time	gadgets	\N	t
57521	db	2018-04-20	2018-04-20			-9.00	EUR	living	clothes	\N	t
57508	db	2018-04-20	2018-04-20			-5.55	EUR	living	food	\N	t
57507	db	2018-04-20	2018-04-20			-7.47	EUR	free time	going out	\N	t
57506	db	2018-04-20	2018-04-20			-13.32	EUR	mobility	gas	\N	t
57500	db	2018-04-20	2018-04-20			-20.00	EUR	other	cash	\N	t
57535	db	2018-04-21	2018-04-21			-7.65	EUR	health	wellness	\N	t
57534	db	2018-04-21	2018-04-21			-6.11	EUR	free time	going out	\N	t
57576	db	2018-04-23	2018-04-23			-0.17	EUR	living	food	\N	t
57602	db	2018-04-24	2018-04-24			-8.48	EUR	free time	hobbies	\N	t
57628	db	2018-04-25	2018-04-25			-1.92	EUR	free time	sport	\N	t
57655	db	2018-04-26	2018-04-26			-0.15	EUR	living	food	\N	t
57654	db	2018-04-26	2018-04-26			-7.98	EUR	free time	entertainment	\N	t
57683	db	2018-04-27	2018-04-27			-5.61	EUR	living	food	\N	t
57682	db	2018-04-27	2018-04-27			-19.13	EUR	free time	going out	\N	t
57681	db	2018-04-27	2018-04-27			-0.82	EUR	mobility	gas	\N	t
57675	db	2018-04-27	2018-04-27			-20.00	EUR	other	cash	\N	t
57710	db	2018-04-28	2018-04-28			-19.92	EUR	health	wellness	\N	t
57709	db	2018-04-28	2018-04-28			-1.17	EUR	free time	going out	\N	t
57751	db	2018-04-30	2018-04-30			-5.13	EUR	living	food	\N	t
57786	db	2018-05-01	2018-05-01			-10.00	EUR	house	phone	\N	t
57777	db	2018-05-01	2018-05-01			-10.00	EUR	free time	hobbies	\N	t
57812	db	2018-05-02	2018-05-02			-10.00	EUR	house	electricity	\N	t
57803	db	2018-05-02	2018-05-02			-4.88	EUR	free time	sport	\N	t
57838	db	2018-05-03	2018-05-03			-10.00	EUR	house	internet	\N	t
57830	db	2018-05-03	2018-05-03			-8.14	EUR	living	food	\N	t
57829	db	2018-05-03	2018-05-03			-9.45	EUR	free time	entertainment	\N	t
57864	db	2018-05-04	2018-05-04			-250.00	EUR	house	rent	\N	t
57858	db	2018-05-04	2018-05-04			-4.79	EUR	living	food	\N	t
57857	db	2018-05-04	2018-05-04			-14.73	EUR	free time	going out	\N	t
57856	db	2018-05-04	2018-05-04			-7.64	EUR	mobility	gas	\N	t
57850	db	2018-05-04	2018-05-04			-20.00	EUR	other	cash	\N	t
57890	db	2018-05-05	2018-05-05			-10.00	EUR	finance	costs and fees	\N	t
57885	db	2018-05-05	2018-05-05			-6.83	EUR	health	wellness	\N	t
57884	db	2018-05-05	2018-05-05			-7.06	EUR	free time	going out	\N	t
57916	db	2018-05-06	2018-05-06			-50.00	EUR	finance	insurance	\N	t
57942	db	2018-05-07	2018-05-07			-0.58	EUR	health	doctor visits	\N	t
57926	db	2018-05-07	2018-05-07			-6.93	EUR	living	food	\N	t
57968	db	2018-05-08	2018-05-08			1000.00	EUR	work and training	salary	\N	t
57952	db	2018-05-08	2018-05-08			-2.27	EUR	free time	hobbies	\N	t
57978	db	2018-05-09	2018-05-09			-2.50	EUR	free time	sport	\N	t
58019	db	2018-05-10	2018-05-10			-9.08	EUR	living	pets	\N	t
58005	db	2018-05-10	2018-05-10			-1.22	EUR	living	food	\N	t
58004	db	2018-05-10	2018-05-10			-9.46	EUR	free time	entertainment	\N	t
58033	db	2018-05-11	2018-05-11			-3.47	EUR	living	food	\N	t
58032	db	2018-05-11	2018-05-11			-11.18	EUR	free time	going out	\N	t
58031	db	2018-05-11	2018-05-11			-5.95	EUR	mobility	gas	\N	t
58025	db	2018-05-11	2018-05-11			-20.00	EUR	other	cash	\N	t
58060	db	2018-05-12	2018-05-12			-0.13	EUR	health	wellness	\N	t
58059	db	2018-05-12	2018-05-12			-7.44	EUR	free time	going out	\N	t
58101	db	2018-05-14	2018-05-14			-4.89	EUR	living	food	\N	t
58145	db	2018-05-15	2018-05-15			-61.66	EUR	living	household	\N	t
58127	db	2018-05-15	2018-05-15			-4.42	EUR	free time	hobbies	\N	t
58153	db	2018-05-16	2018-05-16			-5.35	EUR	free time	sport	\N	t
58180	db	2018-05-17	2018-05-17			-5.76	EUR	living	food	\N	t
58179	db	2018-05-17	2018-05-17			-2.00	EUR	free time	entertainment	\N	t
58208	db	2018-05-18	2018-05-18			-11.51	EUR	living	food	\N	t
58207	db	2018-05-18	2018-05-18			-0.92	EUR	free time	going out	\N	t
58206	db	2018-05-18	2018-05-18			-4.79	EUR	mobility	gas	\N	t
58200	db	2018-05-18	2018-05-18			-20.00	EUR	other	cash	\N	t
58235	db	2018-05-19	2018-05-19			-8.40	EUR	health	wellness	\N	t
58234	db	2018-05-19	2018-05-19			-11.33	EUR	free time	going out	\N	t
58272	db	2018-05-20	2018-05-20			-59.56	EUR	free time	gadgets	\N	t
58271	db	2018-05-20	2018-05-20			-70.72	EUR	living	clothes	\N	t
58276	db	2018-05-21	2018-05-21			-8.17	EUR	living	food	\N	t
58302	db	2018-05-22	2018-05-22			-7.49	EUR	free time	hobbies	\N	t
58328	db	2018-05-23	2018-05-23			-4.98	EUR	free time	sport	\N	t
58355	db	2018-05-24	2018-05-24			-5.97	EUR	living	food	\N	t
58354	db	2018-05-24	2018-05-24			-0.13	EUR	free time	entertainment	\N	t
58383	db	2018-05-25	2018-05-25			-14.13	EUR	living	food	\N	t
58382	db	2018-05-25	2018-05-25			-1.22	EUR	free time	going out	\N	t
58381	db	2018-05-25	2018-05-25			-4.82	EUR	mobility	gas	\N	t
58375	db	2018-05-25	2018-05-25			-20.00	EUR	other	cash	\N	t
58410	db	2018-05-26	2018-05-26			-2.99	EUR	health	wellness	\N	t
58409	db	2018-05-26	2018-05-26			-18.81	EUR	free time	going out	\N	t
58451	db	2018-05-28	2018-05-28			-5.23	EUR	living	food	\N	t
58477	db	2018-05-29	2018-05-29			-3.48	EUR	free time	hobbies	\N	t
58503	db	2018-05-30	2018-05-30			-0.79	EUR	free time	sport	\N	t
58530	db	2018-05-31	2018-05-31			-3.80	EUR	living	food	\N	t
58529	db	2018-05-31	2018-05-31			-2.03	EUR	free time	entertainment	\N	t
58561	db	2018-06-01	2018-06-01			-10.00	EUR	house	phone	\N	t
58558	db	2018-06-01	2018-06-01			-3.33	EUR	living	food	\N	t
58557	db	2018-06-01	2018-06-01			-17.04	EUR	free time	going out	\N	t
58556	db	2018-06-01	2018-06-01			-5.42	EUR	mobility	gas	\N	t
58550	db	2018-06-01	2018-06-01			-20.00	EUR	other	cash	\N	t
58587	db	2018-06-02	2018-06-02			-10.00	EUR	house	electricity	\N	t
58585	db	2018-06-02	2018-06-02			-9.18	EUR	health	wellness	\N	t
58584	db	2018-06-02	2018-06-02			-16.14	EUR	free time	going out	\N	t
58613	db	2018-06-03	2018-06-03			-10.00	EUR	house	internet	\N	t
58639	db	2018-06-04	2018-06-04			-250.00	EUR	house	rent	\N	t
58626	db	2018-06-04	2018-06-04			-1.39	EUR	living	food	\N	t
58665	db	2018-06-05	2018-06-05			-10.00	EUR	finance	costs and fees	\N	t
58652	db	2018-06-05	2018-06-05			-0.74	EUR	free time	hobbies	\N	t
58691	db	2018-06-06	2018-06-06			-50.00	EUR	finance	insurance	\N	t
58678	db	2018-06-06	2018-06-06			-9.20	EUR	free time	sport	\N	t
58717	db	2018-06-07	2018-06-07			-58.16	EUR	health	doctor visits	\N	t
58705	db	2018-06-07	2018-06-07			-2.24	EUR	living	food	\N	t
58704	db	2018-06-07	2018-06-07			-1.32	EUR	free time	entertainment	\N	t
58743	db	2018-06-08	2018-06-08			1000.00	EUR	work and training	salary	\N	t
58733	db	2018-06-08	2018-06-08			-4.66	EUR	living	food	\N	t
58732	db	2018-06-08	2018-06-08			-7.17	EUR	free time	going out	\N	t
58731	db	2018-06-08	2018-06-08			-16.63	EUR	mobility	gas	\N	t
58725	db	2018-06-08	2018-06-08			-20.00	EUR	other	cash	\N	t
58760	db	2018-06-09	2018-06-09			-17.40	EUR	health	wellness	\N	t
58759	db	2018-06-09	2018-06-09			-11.12	EUR	free time	going out	\N	t
58794	db	2018-06-10	2018-06-10			-60.73	EUR	living	pets	\N	t
58801	db	2018-06-11	2018-06-11			-1.75	EUR	living	food	\N	t
58827	db	2018-06-12	2018-06-12			-1.84	EUR	free time	hobbies	\N	t
58853	db	2018-06-13	2018-06-13			-7.85	EUR	free time	sport	\N	t
58880	db	2018-06-14	2018-06-14			-8.97	EUR	living	food	\N	t
58879	db	2018-06-14	2018-06-14			-2.02	EUR	free time	entertainment	\N	t
58920	db	2018-06-15	2018-06-15			-20.99	EUR	living	household	\N	t
58908	db	2018-06-15	2018-06-15			-4.31	EUR	living	food	\N	t
58907	db	2018-06-15	2018-06-15			-0.51	EUR	free time	going out	\N	t
58906	db	2018-06-15	2018-06-15			-12.02	EUR	mobility	gas	\N	t
58900	db	2018-06-15	2018-06-15			-20.00	EUR	other	cash	\N	t
58935	db	2018-06-16	2018-06-16			-4.04	EUR	health	wellness	\N	t
58934	db	2018-06-16	2018-06-16			-5.72	EUR	free time	going out	\N	t
58976	db	2018-06-18	2018-06-18			-7.65	EUR	living	food	\N	t
59002	db	2018-06-19	2018-06-19			-1.66	EUR	free time	hobbies	\N	t
59047	db	2018-06-20	2018-06-20			-73.14	EUR	free time	gadgets	\N	t
59046	db	2018-06-20	2018-06-20			-52.75	EUR	living	clothes	\N	t
59028	db	2018-06-20	2018-06-20			-2.37	EUR	free time	sport	\N	t
59055	db	2018-06-21	2018-06-21			-2.49	EUR	living	food	\N	t
59054	db	2018-06-21	2018-06-21			-5.64	EUR	free time	entertainment	\N	t
59083	db	2018-06-22	2018-06-22			-11.65	EUR	living	food	\N	t
59082	db	2018-06-22	2018-06-22			-17.67	EUR	free time	going out	\N	t
59081	db	2018-06-22	2018-06-22			-13.68	EUR	mobility	gas	\N	t
59075	db	2018-06-22	2018-06-22			-20.00	EUR	other	cash	\N	t
59110	db	2018-06-23	2018-06-23			-4.79	EUR	health	wellness	\N	t
59109	db	2018-06-23	2018-06-23			-9.24	EUR	free time	going out	\N	t
59151	db	2018-06-25	2018-06-25			-9.40	EUR	living	food	\N	t
59177	db	2018-06-26	2018-06-26			-8.88	EUR	free time	hobbies	\N	t
59203	db	2018-06-27	2018-06-27			-7.01	EUR	free time	sport	\N	t
59248	db	2018-06-28	2018-06-28			-466.83	EUR	free time	travel	\N	t
59230	db	2018-06-28	2018-06-28			-6.25	EUR	living	food	\N	t
59229	db	2018-06-28	2018-06-28			-2.93	EUR	free time	entertainment	\N	t
59258	db	2018-06-29	2018-06-29			-16.18	EUR	living	food	\N	t
59257	db	2018-06-29	2018-06-29			-14.30	EUR	free time	going out	\N	t
59256	db	2018-06-29	2018-06-29			-0.60	EUR	mobility	gas	\N	t
59250	db	2018-06-29	2018-06-29			-20.00	EUR	other	cash	\N	t
59285	db	2018-06-30	2018-06-30			-8.00	EUR	health	wellness	\N	t
59284	db	2018-06-30	2018-06-30			-8.06	EUR	free time	going out	\N	t
59311	db	2018-07-01	2018-07-01			-10.00	EUR	house	phone	\N	t
59337	db	2018-07-02	2018-07-02			-10.00	EUR	house	electricity	\N	t
59326	db	2018-07-02	2018-07-02			-4.76	EUR	living	food	\N	t
59363	db	2018-07-03	2018-07-03			-10.00	EUR	house	internet	\N	t
59352	db	2018-07-03	2018-07-03			-1.75	EUR	free time	hobbies	\N	t
59389	db	2018-07-04	2018-07-04			-250.00	EUR	house	rent	\N	t
59378	db	2018-07-04	2018-07-04			-1.50	EUR	free time	sport	\N	t
59415	db	2018-07-05	2018-07-05			-10.00	EUR	finance	costs and fees	\N	t
59405	db	2018-07-05	2018-07-05			-3.47	EUR	living	food	\N	t
59404	db	2018-07-05	2018-07-05			-1.83	EUR	free time	entertainment	\N	t
59441	db	2018-07-06	2018-07-06			-50.00	EUR	finance	insurance	\N	t
59433	db	2018-07-06	2018-07-06			-18.51	EUR	living	food	\N	t
59432	db	2018-07-06	2018-07-06			-4.22	EUR	free time	going out	\N	t
59431	db	2018-07-06	2018-07-06			-16.10	EUR	mobility	gas	\N	t
59425	db	2018-07-06	2018-07-06			-20.00	EUR	other	cash	\N	t
59467	db	2018-07-07	2018-07-07			-0.39	EUR	health	doctor visits	\N	t
59460	db	2018-07-07	2018-07-07			-14.20	EUR	health	wellness	\N	t
59459	db	2018-07-07	2018-07-07			-12.09	EUR	free time	going out	\N	t
59493	db	2018-07-08	2018-07-08			1000.00	EUR	work and training	salary	\N	t
59501	db	2018-07-09	2018-07-09			-6.58	EUR	living	food	\N	t
59544	db	2018-07-10	2018-07-10			-21.20	EUR	living	pets	\N	t
59527	db	2018-07-10	2018-07-10			-3.00	EUR	free time	hobbies	\N	t
59553	db	2018-07-11	2018-07-11			-6.59	EUR	free time	sport	\N	t
59580	db	2018-07-12	2018-07-12			-4.91	EUR	living	food	\N	t
59579	db	2018-07-12	2018-07-12			-6.39	EUR	free time	entertainment	\N	t
59608	db	2018-07-13	2018-07-13			-10.66	EUR	living	food	\N	t
59607	db	2018-07-13	2018-07-13			-10.79	EUR	free time	going out	\N	t
59606	db	2018-07-13	2018-07-13			-15.16	EUR	mobility	gas	\N	t
59600	db	2018-07-13	2018-07-13			-20.00	EUR	other	cash	\N	t
59635	db	2018-07-14	2018-07-14			-8.87	EUR	health	wellness	\N	t
59634	db	2018-07-14	2018-07-14			-9.52	EUR	free time	going out	\N	t
59670	db	2018-07-15	2018-07-15			-33.10	EUR	living	household	\N	t
59676	db	2018-07-16	2018-07-16			-6.11	EUR	living	food	\N	t
59702	db	2018-07-17	2018-07-17			-4.64	EUR	free time	hobbies	\N	t
59728	db	2018-07-18	2018-07-18			-7.86	EUR	free time	sport	\N	t
59755	db	2018-07-19	2018-07-19			-7.19	EUR	living	food	\N	t
59754	db	2018-07-19	2018-07-19			-3.75	EUR	free time	entertainment	\N	t
59797	db	2018-07-20	2018-07-20			-69.46	EUR	free time	gadgets	\N	t
59796	db	2018-07-20	2018-07-20			-36.28	EUR	living	clothes	\N	t
59783	db	2018-07-20	2018-07-20			-12.11	EUR	living	food	\N	t
59782	db	2018-07-20	2018-07-20			-16.72	EUR	free time	going out	\N	t
59781	db	2018-07-20	2018-07-20			-6.06	EUR	mobility	gas	\N	t
59775	db	2018-07-20	2018-07-20			-20.00	EUR	other	cash	\N	t
59810	db	2018-07-21	2018-07-21			-5.96	EUR	health	wellness	\N	t
59809	db	2018-07-21	2018-07-21			-0.77	EUR	free time	going out	\N	t
59851	db	2018-07-23	2018-07-23			-1.76	EUR	living	food	\N	t
59877	db	2018-07-24	2018-07-24			-4.59	EUR	free time	hobbies	\N	t
59903	db	2018-07-25	2018-07-25			-0.90	EUR	free time	sport	\N	t
59930	db	2018-07-26	2018-07-26			-2.48	EUR	living	food	\N	t
59929	db	2018-07-26	2018-07-26			-5.42	EUR	free time	entertainment	\N	t
59958	db	2018-07-27	2018-07-27			-16.39	EUR	living	food	\N	t
59957	db	2018-07-27	2018-07-27			-17.40	EUR	free time	going out	\N	t
59956	db	2018-07-27	2018-07-27			-1.40	EUR	mobility	gas	\N	t
59950	db	2018-07-27	2018-07-27			-20.00	EUR	other	cash	\N	t
59985	db	2018-07-28	2018-07-28			-15.05	EUR	health	wellness	\N	t
59984	db	2018-07-28	2018-07-28			-3.25	EUR	free time	going out	\N	t
60026	db	2018-07-30	2018-07-30			-8.82	EUR	living	food	\N	t
60052	db	2018-07-31	2018-07-31			-8.14	EUR	free time	hobbies	\N	t
60086	db	2018-08-01	2018-08-01			-10.00	EUR	house	phone	\N	t
60078	db	2018-08-01	2018-08-01			-0.08	EUR	free time	sport	\N	t
60112	db	2018-08-02	2018-08-02			-10.00	EUR	house	electricity	\N	t
60105	db	2018-08-02	2018-08-02			-0.72	EUR	living	food	\N	t
60104	db	2018-08-02	2018-08-02			-3.26	EUR	free time	entertainment	\N	t
60138	db	2018-08-03	2018-08-03			-10.00	EUR	house	internet	\N	t
60133	db	2018-08-03	2018-08-03			-12.58	EUR	living	food	\N	t
60132	db	2018-08-03	2018-08-03			-1.85	EUR	free time	going out	\N	t
60131	db	2018-08-03	2018-08-03			-11.56	EUR	mobility	gas	\N	t
60125	db	2018-08-03	2018-08-03			-20.00	EUR	other	cash	\N	t
60164	db	2018-08-04	2018-08-04			-250.00	EUR	house	rent	\N	t
60160	db	2018-08-04	2018-08-04			-16.03	EUR	health	wellness	\N	t
60159	db	2018-08-04	2018-08-04			-7.83	EUR	free time	going out	\N	t
60190	db	2018-08-05	2018-08-05			-10.00	EUR	finance	costs and fees	\N	t
60216	db	2018-08-06	2018-08-06			-50.00	EUR	finance	insurance	\N	t
60201	db	2018-08-06	2018-08-06			-3.77	EUR	living	food	\N	t
60242	db	2018-08-07	2018-08-07			-96.09	EUR	health	doctor visits	\N	t
60227	db	2018-08-07	2018-08-07			-1.10	EUR	free time	hobbies	\N	t
60268	db	2018-08-08	2018-08-08			1000.00	EUR	work and training	salary	\N	t
60253	db	2018-08-08	2018-08-08			-7.71	EUR	free time	sport	\N	t
60280	db	2018-08-09	2018-08-09			-0.29	EUR	living	food	\N	t
60279	db	2018-08-09	2018-08-09			-8.01	EUR	free time	entertainment	\N	t
60319	db	2018-08-10	2018-08-10			-59.57	EUR	living	pets	\N	t
60308	db	2018-08-10	2018-08-10			-9.79	EUR	living	food	\N	t
60307	db	2018-08-10	2018-08-10			-17.64	EUR	free time	going out	\N	t
60306	db	2018-08-10	2018-08-10			-4.93	EUR	mobility	gas	\N	t
60300	db	2018-08-10	2018-08-10			-20.00	EUR	other	cash	\N	t
60335	db	2018-08-11	2018-08-11			-0.35	EUR	health	wellness	\N	t
60334	db	2018-08-11	2018-08-11			-4.36	EUR	free time	going out	\N	t
60376	db	2018-08-13	2018-08-13			-3.05	EUR	living	food	\N	t
60402	db	2018-08-14	2018-08-14			-5.68	EUR	free time	hobbies	\N	t
60445	db	2018-08-15	2018-08-15			-69.04	EUR	living	household	\N	t
60428	db	2018-08-15	2018-08-15			-0.74	EUR	free time	sport	\N	t
60455	db	2018-08-16	2018-08-16			-4.39	EUR	living	food	\N	t
60454	db	2018-08-16	2018-08-16			-2.01	EUR	free time	entertainment	\N	t
60483	db	2018-08-17	2018-08-17			-7.12	EUR	living	food	\N	t
60482	db	2018-08-17	2018-08-17			-6.33	EUR	free time	going out	\N	t
60481	db	2018-08-17	2018-08-17			-14.81	EUR	mobility	gas	\N	t
60475	db	2018-08-17	2018-08-17			-20.00	EUR	other	cash	\N	t
60510	db	2018-08-18	2018-08-18			-0.59	EUR	health	wellness	\N	t
60509	db	2018-08-18	2018-08-18			-5.28	EUR	free time	going out	\N	t
60572	db	2018-08-20	2018-08-20			-5.67	EUR	free time	gadgets	\N	t
60571	db	2018-08-20	2018-08-20			-9.23	EUR	living	clothes	\N	t
60551	db	2018-08-20	2018-08-20			-4.34	EUR	living	food	\N	t
60577	db	2018-08-21	2018-08-21			-0.15	EUR	free time	hobbies	\N	t
60603	db	2018-08-22	2018-08-22			-9.98	EUR	free time	sport	\N	t
60630	db	2018-08-23	2018-08-23			-2.85	EUR	living	food	\N	t
60629	db	2018-08-23	2018-08-23			-3.71	EUR	free time	entertainment	\N	t
60658	db	2018-08-24	2018-08-24			-2.24	EUR	living	food	\N	t
60657	db	2018-08-24	2018-08-24			-13.32	EUR	free time	going out	\N	t
60656	db	2018-08-24	2018-08-24			-18.91	EUR	mobility	gas	\N	t
60650	db	2018-08-24	2018-08-24			-20.00	EUR	other	cash	\N	t
60685	db	2018-08-25	2018-08-25			-14.94	EUR	health	wellness	\N	t
60684	db	2018-08-25	2018-08-25			-6.56	EUR	free time	going out	\N	t
60726	db	2018-08-27	2018-08-27			-8.43	EUR	living	food	\N	t
60752	db	2018-08-28	2018-08-28			-5.38	EUR	free time	hobbies	\N	t
60778	db	2018-08-29	2018-08-29			-4.33	EUR	free time	sport	\N	t
60805	db	2018-08-30	2018-08-30			-8.56	EUR	living	food	\N	t
60804	db	2018-08-30	2018-08-30			-9.58	EUR	free time	entertainment	\N	t
60833	db	2018-08-31	2018-08-31			-15.58	EUR	living	food	\N	t
60832	db	2018-08-31	2018-08-31			-0.69	EUR	free time	going out	\N	t
60831	db	2018-08-31	2018-08-31			-6.07	EUR	mobility	gas	\N	t
60825	db	2018-08-31	2018-08-31			-20.00	EUR	other	cash	\N	t
60861	db	2018-09-01	2018-09-01			-10.00	EUR	house	phone	\N	t
60860	db	2018-09-01	2018-09-01			-3.51	EUR	health	wellness	\N	t
60859	db	2018-09-01	2018-09-01			-15.54	EUR	free time	going out	\N	t
60887	db	2018-09-02	2018-09-02			-10.00	EUR	house	electricity	\N	t
60913	db	2018-09-03	2018-09-03			-10.00	EUR	house	internet	\N	t
60901	db	2018-09-03	2018-09-03			-3.47	EUR	living	food	\N	t
60939	db	2018-09-04	2018-09-04			-250.00	EUR	house	rent	\N	t
60927	db	2018-09-04	2018-09-04			-7.60	EUR	free time	hobbies	\N	t
60965	db	2018-09-05	2018-09-05			-10.00	EUR	finance	costs and fees	\N	t
60953	db	2018-09-05	2018-09-05			-2.27	EUR	free time	sport	\N	t
60991	db	2018-09-06	2018-09-06			-50.00	EUR	finance	insurance	\N	t
60980	db	2018-09-06	2018-09-06			-7.79	EUR	living	food	\N	t
60979	db	2018-09-06	2018-09-06			-6.27	EUR	free time	entertainment	\N	t
61017	db	2018-09-07	2018-09-07			-63.80	EUR	health	doctor visits	\N	t
61008	db	2018-09-07	2018-09-07			-13.26	EUR	living	food	\N	t
61007	db	2018-09-07	2018-09-07			-15.84	EUR	free time	going out	\N	t
61006	db	2018-09-07	2018-09-07			-10.45	EUR	mobility	gas	\N	t
61000	db	2018-09-07	2018-09-07			-20.00	EUR	other	cash	\N	t
61043	db	2018-09-08	2018-09-08			1000.00	EUR	work and training	salary	\N	t
61035	db	2018-09-08	2018-09-08			-6.01	EUR	health	wellness	\N	t
61034	db	2018-09-08	2018-09-08			-17.05	EUR	free time	going out	\N	t
61094	db	2018-09-10	2018-09-10			-14.52	EUR	living	pets	\N	t
61076	db	2018-09-10	2018-09-10			-4.97	EUR	living	food	\N	t
61102	db	2018-09-11	2018-09-11			-4.27	EUR	free time	hobbies	\N	t
61128	db	2018-09-12	2018-09-12			-0.11	EUR	free time	sport	\N	t
61155	db	2018-09-13	2018-09-13			-4.40	EUR	living	food	\N	t
61154	db	2018-09-13	2018-09-13			-4.98	EUR	free time	entertainment	\N	t
61183	db	2018-09-14	2018-09-14			-4.60	EUR	living	food	\N	t
61182	db	2018-09-14	2018-09-14			-19.04	EUR	free time	going out	\N	t
61181	db	2018-09-14	2018-09-14			-8.33	EUR	mobility	gas	\N	t
61175	db	2018-09-14	2018-09-14			-20.00	EUR	other	cash	\N	t
61220	db	2018-09-15	2018-09-15			-4.63	EUR	living	household	\N	t
61210	db	2018-09-15	2018-09-15			-4.65	EUR	health	wellness	\N	t
61209	db	2018-09-15	2018-09-15			-8.03	EUR	free time	going out	\N	t
61251	db	2018-09-17	2018-09-17			-3.05	EUR	living	food	\N	t
61277	db	2018-09-18	2018-09-18			-0.84	EUR	free time	hobbies	\N	t
61303	db	2018-09-19	2018-09-19			-6.96	EUR	free time	sport	\N	t
61347	db	2018-09-20	2018-09-20			-1.06	EUR	free time	gadgets	\N	t
61346	db	2018-09-20	2018-09-20			-58.30	EUR	living	clothes	\N	t
61330	db	2018-09-20	2018-09-20			-1.57	EUR	living	food	\N	t
61329	db	2018-09-20	2018-09-20			-4.41	EUR	free time	entertainment	\N	t
61358	db	2018-09-21	2018-09-21			-17.64	EUR	living	food	\N	t
61357	db	2018-09-21	2018-09-21			-17.37	EUR	free time	going out	\N	t
61356	db	2018-09-21	2018-09-21			-2.83	EUR	mobility	gas	\N	t
61350	db	2018-09-21	2018-09-21			-20.00	EUR	other	cash	\N	t
61385	db	2018-09-22	2018-09-22			-19.18	EUR	health	wellness	\N	t
61384	db	2018-09-22	2018-09-22			-0.27	EUR	free time	going out	\N	t
61426	db	2018-09-24	2018-09-24			-6.36	EUR	living	food	\N	t
61452	db	2018-09-25	2018-09-25			-3.64	EUR	free time	hobbies	\N	t
61478	db	2018-09-26	2018-09-26			-2.59	EUR	free time	sport	\N	t
61505	db	2018-09-27	2018-09-27			-4.82	EUR	living	food	\N	t
61504	db	2018-09-27	2018-09-27			-5.07	EUR	free time	entertainment	\N	t
61533	db	2018-09-28	2018-09-28			-9.44	EUR	living	food	\N	t
61532	db	2018-09-28	2018-09-28			-15.92	EUR	free time	going out	\N	t
61531	db	2018-09-28	2018-09-28			-4.83	EUR	mobility	gas	\N	t
61525	db	2018-09-28	2018-09-28			-20.00	EUR	other	cash	\N	t
61560	db	2018-09-29	2018-09-29			-14.55	EUR	health	wellness	\N	t
61559	db	2018-09-29	2018-09-29			-8.09	EUR	free time	going out	\N	t
61611	db	2018-10-01	2018-10-01			-10.00	EUR	house	phone	\N	t
61601	db	2018-10-01	2018-10-01			-5.05	EUR	living	food	\N	t
61637	db	2018-10-02	2018-10-02			-10.00	EUR	house	electricity	\N	t
61627	db	2018-10-02	2018-10-02			-1.75	EUR	free time	hobbies	\N	t
61663	db	2018-10-03	2018-10-03			-10.00	EUR	house	internet	\N	t
61653	db	2018-10-03	2018-10-03			-2.15	EUR	free time	sport	\N	t
61689	db	2018-10-04	2018-10-04			-250.00	EUR	house	rent	\N	t
61680	db	2018-10-04	2018-10-04			-2.49	EUR	living	food	\N	t
61679	db	2018-10-04	2018-10-04			-5.70	EUR	free time	entertainment	\N	t
61715	db	2018-10-05	2018-10-05			-10.00	EUR	finance	costs and fees	\N	t
61708	db	2018-10-05	2018-10-05			-18.04	EUR	living	food	\N	t
61707	db	2018-10-05	2018-10-05			-18.95	EUR	free time	going out	\N	t
61706	db	2018-10-05	2018-10-05			-17.86	EUR	mobility	gas	\N	t
61700	db	2018-10-05	2018-10-05			-20.00	EUR	other	cash	\N	t
61741	db	2018-10-06	2018-10-06			-50.00	EUR	finance	insurance	\N	t
61735	db	2018-10-06	2018-10-06			-2.49	EUR	health	wellness	\N	t
61734	db	2018-10-06	2018-10-06			-5.30	EUR	free time	going out	\N	t
61767	db	2018-10-07	2018-10-07			-87.70	EUR	health	doctor visits	\N	t
61793	db	2018-10-08	2018-10-08			1000.00	EUR	work and training	salary	\N	t
61776	db	2018-10-08	2018-10-08			-7.11	EUR	living	food	\N	t
61802	db	2018-10-09	2018-10-09			-5.45	EUR	free time	hobbies	\N	t
61844	db	2018-10-10	2018-10-10			-67.02	EUR	living	pets	\N	t
61828	db	2018-10-10	2018-10-10			-8.75	EUR	free time	sport	\N	t
61855	db	2018-10-11	2018-10-11			-2.64	EUR	living	food	\N	t
61854	db	2018-10-11	2018-10-11			-0.49	EUR	free time	entertainment	\N	t
61883	db	2018-10-12	2018-10-12			-17.41	EUR	living	food	\N	t
61882	db	2018-10-12	2018-10-12			-15.65	EUR	free time	going out	\N	t
61881	db	2018-10-12	2018-10-12			-6.58	EUR	mobility	gas	\N	t
61875	db	2018-10-12	2018-10-12			-20.00	EUR	other	cash	\N	t
61910	db	2018-10-13	2018-10-13			-15.08	EUR	health	wellness	\N	t
61909	db	2018-10-13	2018-10-13			-13.36	EUR	free time	going out	\N	t
61970	db	2018-10-15	2018-10-15			-72.09	EUR	living	household	\N	t
61951	db	2018-10-15	2018-10-15			-2.38	EUR	living	food	\N	t
61977	db	2018-10-16	2018-10-16			-2.32	EUR	free time	hobbies	\N	t
62003	db	2018-10-17	2018-10-17			-3.01	EUR	free time	sport	\N	t
62030	db	2018-10-18	2018-10-18			-2.65	EUR	living	food	\N	t
62029	db	2018-10-18	2018-10-18			-5.96	EUR	free time	entertainment	\N	t
62058	db	2018-10-19	2018-10-19			-19.87	EUR	living	food	\N	t
62057	db	2018-10-19	2018-10-19			-8.62	EUR	free time	going out	\N	t
62056	db	2018-10-19	2018-10-19			-5.62	EUR	mobility	gas	\N	t
62050	db	2018-10-19	2018-10-19			-20.00	EUR	other	cash	\N	t
62097	db	2018-10-20	2018-10-20			-68.14	EUR	free time	gadgets	\N	t
62096	db	2018-10-20	2018-10-20			-5.53	EUR	living	clothes	\N	t
62085	db	2018-10-20	2018-10-20			-15.18	EUR	health	wellness	\N	t
62084	db	2018-10-20	2018-10-20			-13.65	EUR	free time	going out	\N	t
62126	db	2018-10-22	2018-10-22			-9.53	EUR	living	food	\N	t
62152	db	2018-10-23	2018-10-23			-2.57	EUR	free time	hobbies	\N	t
62178	db	2018-10-24	2018-10-24			-2.25	EUR	free time	sport	\N	t
62205	db	2018-10-25	2018-10-25			-0.42	EUR	living	food	\N	t
62204	db	2018-10-25	2018-10-25			-0.32	EUR	free time	entertainment	\N	t
62233	db	2018-10-26	2018-10-26			-19.14	EUR	living	food	\N	t
62232	db	2018-10-26	2018-10-26			-14.67	EUR	free time	going out	\N	t
62231	db	2018-10-26	2018-10-26			-19.37	EUR	mobility	gas	\N	t
62225	db	2018-10-26	2018-10-26			-20.00	EUR	other	cash	\N	t
62260	db	2018-10-27	2018-10-27			-14.86	EUR	health	wellness	\N	t
62259	db	2018-10-27	2018-10-27			-11.83	EUR	free time	going out	\N	t
62301	db	2018-10-29	2018-10-29			-9.88	EUR	living	food	\N	t
62327	db	2018-10-30	2018-10-30			-9.79	EUR	free time	hobbies	\N	t
62353	db	2018-10-31	2018-10-31			-8.56	EUR	free time	sport	\N	t
62386	db	2018-11-01	2018-11-01			-10.00	EUR	house	phone	\N	t
62380	db	2018-11-01	2018-11-01			-0.16	EUR	living	food	\N	t
62379	db	2018-11-01	2018-11-01			-0.04	EUR	free time	entertainment	\N	t
62412	db	2018-11-02	2018-11-02			-10.00	EUR	house	electricity	\N	t
62408	db	2018-11-02	2018-11-02			-17.77	EUR	living	food	\N	t
62407	db	2018-11-02	2018-11-02			-1.27	EUR	free time	going out	\N	t
62406	db	2018-11-02	2018-11-02			-14.64	EUR	mobility	gas	\N	t
62400	db	2018-11-02	2018-11-02			-20.00	EUR	other	cash	\N	t
62438	db	2018-11-03	2018-11-03			-10.00	EUR	house	internet	\N	t
62435	db	2018-11-03	2018-11-03			-4.20	EUR	health	wellness	\N	t
62434	db	2018-11-03	2018-11-03			-0.12	EUR	free time	going out	\N	t
62464	db	2018-11-04	2018-11-04			-250.00	EUR	house	rent	\N	t
62490	db	2018-11-05	2018-11-05			-10.00	EUR	finance	costs and fees	\N	t
62476	db	2018-11-05	2018-11-05			-0.09	EUR	living	food	\N	t
62516	db	2018-11-06	2018-11-06			-50.00	EUR	finance	insurance	\N	t
62502	db	2018-11-06	2018-11-06			-5.98	EUR	free time	hobbies	\N	t
62542	db	2018-11-07	2018-11-07			-82.35	EUR	health	doctor visits	\N	t
62528	db	2018-11-07	2018-11-07			-4.66	EUR	free time	sport	\N	t
62568	db	2018-11-08	2018-11-08			1000.00	EUR	work and training	salary	\N	t
62555	db	2018-11-08	2018-11-08			-6.25	EUR	living	food	\N	t
62554	db	2018-11-08	2018-11-08			-2.28	EUR	free time	entertainment	\N	t
62583	db	2018-11-09	2018-11-09			-9.30	EUR	living	food	\N	t
62582	db	2018-11-09	2018-11-09			-15.23	EUR	free time	going out	\N	t
62581	db	2018-11-09	2018-11-09			-9.70	EUR	mobility	gas	\N	t
62575	db	2018-11-09	2018-11-09			-20.00	EUR	other	cash	\N	t
62619	db	2018-11-10	2018-11-10			-43.56	EUR	living	pets	\N	t
62610	db	2018-11-10	2018-11-10			-4.62	EUR	health	wellness	\N	t
62609	db	2018-11-10	2018-11-10			-4.22	EUR	free time	going out	\N	t
62651	db	2018-11-12	2018-11-12			-2.40	EUR	living	food	\N	t
62677	db	2018-11-13	2018-11-13			-1.10	EUR	free time	hobbies	\N	t
62703	db	2018-11-14	2018-11-14			-6.48	EUR	free time	sport	\N	t
62745	db	2018-11-15	2018-11-15			-40.69	EUR	living	household	\N	t
62730	db	2018-11-15	2018-11-15			-2.74	EUR	living	food	\N	t
62729	db	2018-11-15	2018-11-15			-8.06	EUR	free time	entertainment	\N	t
62758	db	2018-11-16	2018-11-16			-3.63	EUR	living	food	\N	t
62757	db	2018-11-16	2018-11-16			-19.21	EUR	free time	going out	\N	t
62756	db	2018-11-16	2018-11-16			-11.04	EUR	mobility	gas	\N	t
62750	db	2018-11-16	2018-11-16			-20.00	EUR	other	cash	\N	t
62785	db	2018-11-17	2018-11-17			-14.55	EUR	health	wellness	\N	t
62784	db	2018-11-17	2018-11-17			-14.60	EUR	free time	going out	\N	t
62826	db	2018-11-19	2018-11-19			-6.17	EUR	living	food	\N	t
62872	db	2018-11-20	2018-11-20			-31.27	EUR	free time	gadgets	\N	t
62871	db	2018-11-20	2018-11-20			-13.60	EUR	living	clothes	\N	t
62852	db	2018-11-20	2018-11-20			-3.22	EUR	free time	hobbies	\N	t
62878	db	2018-11-21	2018-11-21			-2.91	EUR	free time	sport	\N	t
62905	db	2018-11-22	2018-11-22			-7.82	EUR	living	food	\N	t
62904	db	2018-11-22	2018-11-22			-9.67	EUR	free time	entertainment	\N	t
62933	db	2018-11-23	2018-11-23			-18.82	EUR	living	food	\N	t
62932	db	2018-11-23	2018-11-23			-4.61	EUR	free time	going out	\N	t
62931	db	2018-11-23	2018-11-23			-7.94	EUR	mobility	gas	\N	t
62925	db	2018-11-23	2018-11-23			-20.00	EUR	other	cash	\N	t
62960	db	2018-11-24	2018-11-24			-17.12	EUR	health	wellness	\N	t
62959	db	2018-11-24	2018-11-24			-5.72	EUR	free time	going out	\N	t
63001	db	2018-11-26	2018-11-26			-9.35	EUR	living	food	\N	t
63027	db	2018-11-27	2018-11-27			-7.45	EUR	free time	hobbies	\N	t
63053	db	2018-11-28	2018-11-28			-2.17	EUR	free time	sport	\N	t
63080	db	2018-11-29	2018-11-29			-2.38	EUR	living	food	\N	t
63079	db	2018-11-29	2018-11-29			-4.17	EUR	free time	entertainment	\N	t
63108	db	2018-11-30	2018-11-30			-6.60	EUR	living	food	\N	t
63107	db	2018-11-30	2018-11-30			-17.06	EUR	free time	going out	\N	t
63106	db	2018-11-30	2018-11-30			-14.52	EUR	mobility	gas	\N	t
63100	db	2018-11-30	2018-11-30			-20.00	EUR	other	cash	\N	t
63136	db	2018-12-01	2018-12-01			-10.00	EUR	house	phone	\N	t
63135	db	2018-12-01	2018-12-01			-5.51	EUR	health	wellness	\N	t
63134	db	2018-12-01	2018-12-01			-14.04	EUR	free time	going out	\N	t
63162	db	2018-12-02	2018-12-02			-10.00	EUR	house	electricity	\N	t
63188	db	2018-12-03	2018-12-03			-10.00	EUR	house	internet	\N	t
63176	db	2018-12-03	2018-12-03			-0.67	EUR	living	food	\N	t
63214	db	2018-12-04	2018-12-04			-250.00	EUR	house	rent	\N	t
63202	db	2018-12-04	2018-12-04			-5.37	EUR	free time	hobbies	\N	t
63240	db	2018-12-05	2018-12-05			-10.00	EUR	finance	costs and fees	\N	t
63228	db	2018-12-05	2018-12-05			-3.96	EUR	free time	sport	\N	t
63266	db	2018-12-06	2018-12-06			-50.00	EUR	finance	insurance	\N	t
63255	db	2018-12-06	2018-12-06			-1.11	EUR	living	food	\N	t
63254	db	2018-12-06	2018-12-06			-1.52	EUR	free time	entertainment	\N	t
63292	db	2018-12-07	2018-12-07			-44.78	EUR	health	doctor visits	\N	t
63283	db	2018-12-07	2018-12-07			-0.02	EUR	living	food	\N	t
63282	db	2018-12-07	2018-12-07			-0.94	EUR	free time	going out	\N	t
63281	db	2018-12-07	2018-12-07			-9.37	EUR	mobility	gas	\N	t
63275	db	2018-12-07	2018-12-07			-20.00	EUR	other	cash	\N	t
63318	db	2018-12-08	2018-12-08			1000.00	EUR	work and training	salary	\N	t
63310	db	2018-12-08	2018-12-08			-0.12	EUR	health	wellness	\N	t
63309	db	2018-12-08	2018-12-08			-18.70	EUR	free time	going out	\N	t
63369	db	2018-12-10	2018-12-10			-58.90	EUR	living	pets	\N	t
63351	db	2018-12-10	2018-12-10			-8.40	EUR	living	food	\N	t
63377	db	2018-12-11	2018-12-11			-4.66	EUR	free time	hobbies	\N	t
63403	db	2018-12-12	2018-12-12			-3.84	EUR	free time	sport	\N	t
63430	db	2018-12-13	2018-12-13			-2.57	EUR	living	food	\N	t
63429	db	2018-12-13	2018-12-13			-7.83	EUR	free time	entertainment	\N	t
63458	db	2018-12-14	2018-12-14			-11.41	EUR	living	food	\N	t
63457	db	2018-12-14	2018-12-14			-5.01	EUR	free time	going out	\N	t
63456	db	2018-12-14	2018-12-14			-14.72	EUR	mobility	gas	\N	t
63450	db	2018-12-14	2018-12-14			-20.00	EUR	other	cash	\N	t
63495	db	2018-12-15	2018-12-15			-63.98	EUR	living	household	\N	t
63485	db	2018-12-15	2018-12-15			-5.29	EUR	health	wellness	\N	t
63484	db	2018-12-15	2018-12-15			-2.71	EUR	free time	going out	\N	t
63526	db	2018-12-17	2018-12-17			-5.25	EUR	living	food	\N	t
63552	db	2018-12-18	2018-12-18			-9.37	EUR	free time	hobbies	\N	t
63578	db	2018-12-19	2018-12-19			-3.82	EUR	free time	sport	\N	t
63624	db	2018-12-20	2018-12-20			-145.85	EUR	free time	presents	\N	t
63622	db	2018-12-20	2018-12-20			-48.34	EUR	free time	gadgets	\N	t
63621	db	2018-12-20	2018-12-20			-28.00	EUR	living	clothes	\N	t
63605	db	2018-12-20	2018-12-20			-3.92	EUR	living	food	\N	t
63604	db	2018-12-20	2018-12-20			-9.20	EUR	free time	entertainment	\N	t
63633	db	2018-12-21	2018-12-21			-18.08	EUR	living	food	\N	t
63632	db	2018-12-21	2018-12-21			-19.22	EUR	free time	going out	\N	t
63631	db	2018-12-21	2018-12-21			-3.40	EUR	mobility	gas	\N	t
63625	db	2018-12-21	2018-12-21			-20.00	EUR	other	cash	\N	t
63660	db	2018-12-22	2018-12-22			-8.46	EUR	health	wellness	\N	t
63659	db	2018-12-22	2018-12-22			-4.65	EUR	free time	going out	\N	t
63701	db	2018-12-24	2018-12-24			-3.27	EUR	living	food	\N	t
63727	db	2018-12-25	2018-12-25			-0.83	EUR	free time	hobbies	\N	t
63753	db	2018-12-26	2018-12-26			-4.02	EUR	free time	sport	\N	t
63780	db	2018-12-27	2018-12-27			-8.87	EUR	living	food	\N	t
63779	db	2018-12-27	2018-12-27			-7.68	EUR	free time	entertainment	\N	t
63808	db	2018-12-28	2018-12-28			-3.81	EUR	living	food	\N	t
63807	db	2018-12-28	2018-12-28			-13.70	EUR	free time	going out	\N	t
63806	db	2018-12-28	2018-12-28			-7.37	EUR	mobility	gas	\N	t
63800	db	2018-12-28	2018-12-28			-20.00	EUR	other	cash	\N	t
63835	db	2018-12-29	2018-12-29			-12.49	EUR	health	wellness	\N	t
63834	db	2018-12-29	2018-12-29			-10.94	EUR	free time	going out	\N	t
