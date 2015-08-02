COPY transactions (id, account_number, transaction_date, exchange_date, receiver, purpose, amount, currency, category, sub_category, comment, approved) FROM stdin;
12	db	2014-01-02	2014-01-02			-10.00	EUR	house	electricity	\N	t
1	db	2014-01-02	2014-01-02			-3.94	EUR	living	food	\N	t
38	db	2014-01-03	2014-01-03			-10.00	EUR	house	internet	\N	t
27	db	2014-01-03	2014-01-03			-5.76	EUR	free time	hobbies	\N	t
64	db	2014-01-04	2014-01-04			-250.00	EUR	house	rent	\N	t
53	db	2014-01-04	2014-01-04			-4.75	EUR	free time	sport	\N	t
90	db	2014-01-05	2014-01-05			-10.00	EUR	finance	costs and fees	\N	t
80	db	2014-01-05	2014-01-05			-7.27	EUR	living	food	\N	t
79	db	2014-01-05	2014-01-05			-1.81	EUR	free time	entertainment	\N	t
116	db	2014-01-06	2014-01-06			-50.00	EUR	finance	insurance	\N	t
108	db	2014-01-06	2014-01-06			-7.24	EUR	living	food	\N	t
107	db	2014-01-06	2014-01-06			-11.88	EUR	free time	going out	\N	t
106	db	2014-01-06	2014-01-06			-2.05	EUR	mobility	gas	\N	t
100	db	2014-01-06	2014-01-06			-20.00	EUR	other	cash	\N	t
142	db	2014-01-07	2014-01-07			-26.42	EUR	health	doctor visits	\N	t
135	db	2014-01-07	2014-01-07			-16.99	EUR	health	wellness	\N	t
134	db	2014-01-07	2014-01-07			-10.25	EUR	free time	going out	\N	t
168	db	2014-01-08	2014-01-08			1000.00	EUR	work and training	salary	\N	t
176	db	2014-01-09	2014-01-09			-2.34	EUR	living	food	\N	t
219	db	2014-01-10	2014-01-10			-63.03	EUR	living	pets	\N	t
202	db	2014-01-10	2014-01-10			-6.99	EUR	free time	hobbies	\N	t
228	db	2014-01-11	2014-01-11			-1.97	EUR	free time	sport	\N	t
255	db	2014-01-12	2014-01-12			-8.81	EUR	living	food	\N	t
254	db	2014-01-12	2014-01-12			-7.10	EUR	free time	entertainment	\N	t
283	db	2014-01-13	2014-01-13			-0.08	EUR	living	food	\N	t
282	db	2014-01-13	2014-01-13			-7.58	EUR	free time	going out	\N	t
281	db	2014-01-13	2014-01-13			-5.54	EUR	mobility	gas	\N	t
275	db	2014-01-13	2014-01-13			-20.00	EUR	other	cash	\N	t
310	db	2014-01-14	2014-01-14			-4.12	EUR	health	wellness	\N	t
309	db	2014-01-14	2014-01-14			-16.31	EUR	free time	going out	\N	t
345	db	2014-01-15	2014-01-15			-30.09	EUR	living	household	\N	t
351	db	2014-01-16	2014-01-16			-6.89	EUR	living	food	\N	t
377	db	2014-01-17	2014-01-17			-5.67	EUR	free time	hobbies	\N	t
403	db	2014-01-18	2014-01-18			-6.78	EUR	free time	sport	\N	t
430	db	2014-01-19	2014-01-19			-3.90	EUR	living	food	\N	t
429	db	2014-01-19	2014-01-19			-7.78	EUR	free time	entertainment	\N	t
472	db	2014-01-20	2014-01-20			-18.44	EUR	free time	gadgets	\N	t
471	db	2014-01-20	2014-01-20			-13.29	EUR	living	clothes	\N	t
458	db	2014-01-20	2014-01-20			-1.86	EUR	living	food	\N	t
457	db	2014-01-20	2014-01-20			-10.07	EUR	free time	going out	\N	t
456	db	2014-01-20	2014-01-20			-14.12	EUR	mobility	gas	\N	t
450	db	2014-01-20	2014-01-20			-20.00	EUR	other	cash	\N	t
485	db	2014-01-21	2014-01-21			-4.41	EUR	health	wellness	\N	t
484	db	2014-01-21	2014-01-21			-8.01	EUR	free time	going out	\N	t
526	db	2014-01-23	2014-01-23			-9.86	EUR	living	food	\N	t
552	db	2014-01-24	2014-01-24			-5.25	EUR	free time	hobbies	\N	t
578	db	2014-01-25	2014-01-25			-0.71	EUR	free time	sport	\N	t
605	db	2014-01-26	2014-01-26			-1.39	EUR	living	food	\N	t
604	db	2014-01-26	2014-01-26			-3.58	EUR	free time	entertainment	\N	t
633	db	2014-01-27	2014-01-27			-16.13	EUR	living	food	\N	t
632	db	2014-01-27	2014-01-27			-5.17	EUR	free time	going out	\N	t
631	db	2014-01-27	2014-01-27			-14.38	EUR	mobility	gas	\N	t
625	db	2014-01-27	2014-01-27			-20.00	EUR	other	cash	\N	t
660	db	2014-01-28	2014-01-28			-5.44	EUR	health	wellness	\N	t
659	db	2014-01-28	2014-01-28			-2.26	EUR	free time	going out	\N	t
701	db	2014-01-30	2014-01-30			-4.82	EUR	living	food	\N	t
727	db	2014-01-31	2014-01-31			-7.20	EUR	free time	hobbies	\N	t
761	db	2014-02-01	2014-02-01			-10.00	EUR	house	phone	\N	t
753	db	2014-02-01	2014-02-01			-2.31	EUR	free time	sport	\N	t
787	db	2014-02-02	2014-02-02			-10.00	EUR	house	electricity	\N	t
780	db	2014-02-02	2014-02-02			-3.92	EUR	living	food	\N	t
779	db	2014-02-02	2014-02-02			-4.71	EUR	free time	entertainment	\N	t
813	db	2014-02-03	2014-02-03			-10.00	EUR	house	internet	\N	t
808	db	2014-02-03	2014-02-03			-15.87	EUR	living	food	\N	t
807	db	2014-02-03	2014-02-03			-5.76	EUR	free time	going out	\N	t
806	db	2014-02-03	2014-02-03			-4.46	EUR	mobility	gas	\N	t
800	db	2014-02-03	2014-02-03			-20.00	EUR	other	cash	\N	t
839	db	2014-02-04	2014-02-04			-250.00	EUR	house	rent	\N	t
835	db	2014-02-04	2014-02-04			-14.78	EUR	health	wellness	\N	t
834	db	2014-02-04	2014-02-04			-12.03	EUR	free time	going out	\N	t
865	db	2014-02-05	2014-02-05			-10.00	EUR	finance	costs and fees	\N	t
891	db	2014-02-06	2014-02-06			-50.00	EUR	finance	insurance	\N	t
876	db	2014-02-06	2014-02-06			-5.60	EUR	living	food	\N	t
917	db	2014-02-07	2014-02-07			-37.89	EUR	health	doctor visits	\N	t
902	db	2014-02-07	2014-02-07			-7.84	EUR	free time	hobbies	\N	t
943	db	2014-02-08	2014-02-08			1000.00	EUR	work and training	salary	\N	t
928	db	2014-02-08	2014-02-08			-5.63	EUR	free time	sport	\N	t
955	db	2014-02-09	2014-02-09			-1.42	EUR	living	food	\N	t
954	db	2014-02-09	2014-02-09			-7.96	EUR	free time	entertainment	\N	t
994	db	2014-02-10	2014-02-10			-19.69	EUR	living	pets	\N	t
983	db	2014-02-10	2014-02-10			-4.65	EUR	living	food	\N	t
982	db	2014-02-10	2014-02-10			-18.51	EUR	free time	going out	\N	t
981	db	2014-02-10	2014-02-10			-16.99	EUR	mobility	gas	\N	t
975	db	2014-02-10	2014-02-10			-20.00	EUR	other	cash	\N	t
1010	db	2014-02-11	2014-02-11			-16.46	EUR	health	wellness	\N	t
1009	db	2014-02-11	2014-02-11			-3.63	EUR	free time	going out	\N	t
1051	db	2014-02-13	2014-02-13			-2.48	EUR	living	food	\N	t
1077	db	2014-02-14	2014-02-14			-2.13	EUR	free time	hobbies	\N	t
1120	db	2014-02-15	2014-02-15			-71.15	EUR	living	household	\N	t
1103	db	2014-02-15	2014-02-15			-7.90	EUR	free time	sport	\N	t
1130	db	2014-02-16	2014-02-16			-8.78	EUR	living	food	\N	t
1129	db	2014-02-16	2014-02-16			-9.98	EUR	free time	entertainment	\N	t
1158	db	2014-02-17	2014-02-17			-5.36	EUR	living	food	\N	t
1157	db	2014-02-17	2014-02-17			-9.00	EUR	free time	going out	\N	t
1156	db	2014-02-17	2014-02-17			-15.20	EUR	mobility	gas	\N	t
1150	db	2014-02-17	2014-02-17			-20.00	EUR	other	cash	\N	t
1185	db	2014-02-18	2014-02-18			-10.74	EUR	health	wellness	\N	t
1184	db	2014-02-18	2014-02-18			-16.87	EUR	free time	going out	\N	t
1247	db	2014-02-20	2014-02-20			-62.87	EUR	free time	gadgets	\N	t
1246	db	2014-02-20	2014-02-20			-65.73	EUR	living	clothes	\N	t
1226	db	2014-02-20	2014-02-20			-6.87	EUR	living	food	\N	t
1252	db	2014-02-21	2014-02-21			-4.37	EUR	free time	hobbies	\N	t
1278	db	2014-02-22	2014-02-22			-5.46	EUR	free time	sport	\N	t
1305	db	2014-02-23	2014-02-23			-7.93	EUR	living	food	\N	t
1304	db	2014-02-23	2014-02-23			-7.13	EUR	free time	entertainment	\N	t
1333	db	2014-02-24	2014-02-24			-8.17	EUR	living	food	\N	t
1332	db	2014-02-24	2014-02-24			-11.97	EUR	free time	going out	\N	t
1331	db	2014-02-24	2014-02-24			-13.20	EUR	mobility	gas	\N	t
1325	db	2014-02-24	2014-02-24			-20.00	EUR	other	cash	\N	t
1360	db	2014-02-25	2014-02-25			-6.73	EUR	health	wellness	\N	t
1359	db	2014-02-25	2014-02-25			-7.79	EUR	free time	going out	\N	t
1401	db	2014-02-27	2014-02-27			-5.96	EUR	living	food	\N	t
1427	db	2014-02-28	2014-02-28			-0.59	EUR	free time	hobbies	\N	t
1461	db	2014-03-01	2014-03-01			-10.00	EUR	house	phone	\N	t
1453	db	2014-03-01	2014-03-01			-2.77	EUR	free time	sport	\N	t
1487	db	2014-03-02	2014-03-02			-10.00	EUR	house	electricity	\N	t
1480	db	2014-03-02	2014-03-02			-8.38	EUR	living	food	\N	t
1479	db	2014-03-02	2014-03-02			-5.58	EUR	free time	entertainment	\N	t
1513	db	2014-03-03	2014-03-03			-10.00	EUR	house	internet	\N	t
1508	db	2014-03-03	2014-03-03			-9.95	EUR	living	food	\N	t
1507	db	2014-03-03	2014-03-03			-10.09	EUR	free time	going out	\N	t
1506	db	2014-03-03	2014-03-03			-18.62	EUR	mobility	gas	\N	t
1500	db	2014-03-03	2014-03-03			-20.00	EUR	other	cash	\N	t
1539	db	2014-03-04	2014-03-04			-250.00	EUR	house	rent	\N	t
1535	db	2014-03-04	2014-03-04			-17.12	EUR	health	wellness	\N	t
1534	db	2014-03-04	2014-03-04			-16.67	EUR	free time	going out	\N	t
1565	db	2014-03-05	2014-03-05			-10.00	EUR	finance	costs and fees	\N	t
1591	db	2014-03-06	2014-03-06			-50.00	EUR	finance	insurance	\N	t
1576	db	2014-03-06	2014-03-06			-9.96	EUR	living	food	\N	t
1617	db	2014-03-07	2014-03-07			-91.17	EUR	health	doctor visits	\N	t
1602	db	2014-03-07	2014-03-07			-5.07	EUR	free time	hobbies	\N	t
1643	db	2014-03-08	2014-03-08			1000.00	EUR	work and training	salary	\N	t
1628	db	2014-03-08	2014-03-08			-4.94	EUR	free time	sport	\N	t
1655	db	2014-03-09	2014-03-09			-4.68	EUR	living	food	\N	t
1654	db	2014-03-09	2014-03-09			-8.47	EUR	free time	entertainment	\N	t
1694	db	2014-03-10	2014-03-10			-66.85	EUR	living	pets	\N	t
1683	db	2014-03-10	2014-03-10			-16.30	EUR	living	food	\N	t
1682	db	2014-03-10	2014-03-10			-7.93	EUR	free time	going out	\N	t
1681	db	2014-03-10	2014-03-10			-12.08	EUR	mobility	gas	\N	t
1675	db	2014-03-10	2014-03-10			-20.00	EUR	other	cash	\N	t
1710	db	2014-03-11	2014-03-11			-2.03	EUR	health	wellness	\N	t
1709	db	2014-03-11	2014-03-11			-12.79	EUR	free time	going out	\N	t
1751	db	2014-03-13	2014-03-13			-7.54	EUR	living	food	\N	t
1777	db	2014-03-14	2014-03-14			-4.87	EUR	free time	hobbies	\N	t
1820	db	2014-03-15	2014-03-15			-78.54	EUR	living	household	\N	t
1803	db	2014-03-15	2014-03-15			-3.40	EUR	free time	sport	\N	t
1830	db	2014-03-16	2014-03-16			-9.42	EUR	living	food	\N	t
1829	db	2014-03-16	2014-03-16			-5.37	EUR	free time	entertainment	\N	t
1858	db	2014-03-17	2014-03-17			-3.49	EUR	living	food	\N	t
1857	db	2014-03-17	2014-03-17			-2.85	EUR	free time	going out	\N	t
1856	db	2014-03-17	2014-03-17			-1.03	EUR	mobility	gas	\N	t
1850	db	2014-03-17	2014-03-17			-20.00	EUR	other	cash	\N	t
1885	db	2014-03-18	2014-03-18			-0.20	EUR	health	wellness	\N	t
1884	db	2014-03-18	2014-03-18			-11.39	EUR	free time	going out	\N	t
1947	db	2014-03-20	2014-03-20			-7.33	EUR	free time	gadgets	\N	t
1946	db	2014-03-20	2014-03-20			-34.53	EUR	living	clothes	\N	t
1926	db	2014-03-20	2014-03-20			-4.48	EUR	living	food	\N	t
1952	db	2014-03-21	2014-03-21			-6.74	EUR	free time	hobbies	\N	t
1978	db	2014-03-22	2014-03-22			-6.70	EUR	free time	sport	\N	t
2005	db	2014-03-23	2014-03-23			-0.89	EUR	living	food	\N	t
2004	db	2014-03-23	2014-03-23			-2.22	EUR	free time	entertainment	\N	t
2033	db	2014-03-24	2014-03-24			-9.17	EUR	living	food	\N	t
2032	db	2014-03-24	2014-03-24			-16.47	EUR	free time	going out	\N	t
2031	db	2014-03-24	2014-03-24			-3.35	EUR	mobility	gas	\N	t
2025	db	2014-03-24	2014-03-24			-20.00	EUR	other	cash	\N	t
2060	db	2014-03-25	2014-03-25			-18.31	EUR	health	wellness	\N	t
2059	db	2014-03-25	2014-03-25			-4.73	EUR	free time	going out	\N	t
2101	db	2014-03-27	2014-03-27			-9.87	EUR	living	food	\N	t
2127	db	2014-03-28	2014-03-28			-8.54	EUR	free time	hobbies	\N	t
2153	db	2014-03-29	2014-03-29			-6.75	EUR	free time	sport	\N	t
2180	db	2014-03-30	2014-03-30			-2.92	EUR	living	food	\N	t
2179	db	2014-03-30	2014-03-30			-9.37	EUR	free time	entertainment	\N	t
2208	db	2014-03-31	2014-03-31			-11.44	EUR	living	food	\N	t
2207	db	2014-03-31	2014-03-31			-5.41	EUR	free time	going out	\N	t
2206	db	2014-03-31	2014-03-31			-6.93	EUR	mobility	gas	\N	t
2200	db	2014-03-31	2014-03-31			-20.00	EUR	other	cash	\N	t
2236	db	2014-04-01	2014-04-01			-10.00	EUR	house	phone	\N	t
2235	db	2014-04-01	2014-04-01			-9.35	EUR	health	wellness	\N	t
2234	db	2014-04-01	2014-04-01			-6.37	EUR	free time	going out	\N	t
2262	db	2014-04-02	2014-04-02			-10.00	EUR	house	electricity	\N	t
2288	db	2014-04-03	2014-04-03			-10.00	EUR	house	internet	\N	t
2276	db	2014-04-03	2014-04-03			-5.18	EUR	living	food	\N	t
2314	db	2014-04-04	2014-04-04			-250.00	EUR	house	rent	\N	t
2302	db	2014-04-04	2014-04-04			-5.78	EUR	free time	hobbies	\N	t
2340	db	2014-04-05	2014-04-05			-10.00	EUR	finance	costs and fees	\N	t
2328	db	2014-04-05	2014-04-05			-8.22	EUR	free time	sport	\N	t
2366	db	2014-04-06	2014-04-06			-50.00	EUR	finance	insurance	\N	t
2355	db	2014-04-06	2014-04-06			-4.67	EUR	living	food	\N	t
2354	db	2014-04-06	2014-04-06			-9.70	EUR	free time	entertainment	\N	t
2392	db	2014-04-07	2014-04-07			-41.75	EUR	health	doctor visits	\N	t
2383	db	2014-04-07	2014-04-07			-9.38	EUR	living	food	\N	t
2382	db	2014-04-07	2014-04-07			-11.52	EUR	free time	going out	\N	t
2381	db	2014-04-07	2014-04-07			-13.18	EUR	mobility	gas	\N	t
2375	db	2014-04-07	2014-04-07			-20.00	EUR	other	cash	\N	t
2418	db	2014-04-08	2014-04-08			1000.00	EUR	work and training	salary	\N	t
2410	db	2014-04-08	2014-04-08			-2.74	EUR	health	wellness	\N	t
2409	db	2014-04-08	2014-04-08			-9.42	EUR	free time	going out	\N	t
2469	db	2014-04-10	2014-04-10			-2.07	EUR	living	pets	\N	t
2451	db	2014-04-10	2014-04-10			-6.85	EUR	living	food	\N	t
2477	db	2014-04-11	2014-04-11			-0.80	EUR	free time	hobbies	\N	t
2503	db	2014-04-12	2014-04-12			-4.95	EUR	free time	sport	\N	t
2530	db	2014-04-13	2014-04-13			-1.44	EUR	living	food	\N	t
2529	db	2014-04-13	2014-04-13			-1.10	EUR	free time	entertainment	\N	t
2558	db	2014-04-14	2014-04-14			-11.20	EUR	living	food	\N	t
2557	db	2014-04-14	2014-04-14			-18.01	EUR	free time	going out	\N	t
2556	db	2014-04-14	2014-04-14			-12.96	EUR	mobility	gas	\N	t
2550	db	2014-04-14	2014-04-14			-20.00	EUR	other	cash	\N	t
2595	db	2014-04-15	2014-04-15			-52.62	EUR	living	household	\N	t
2585	db	2014-04-15	2014-04-15			-17.22	EUR	health	wellness	\N	t
2584	db	2014-04-15	2014-04-15			-19.18	EUR	free time	going out	\N	t
2626	db	2014-04-17	2014-04-17			-1.52	EUR	living	food	\N	t
2652	db	2014-04-18	2014-04-18			-9.49	EUR	free time	hobbies	\N	t
2678	db	2014-04-19	2014-04-19			-2.31	EUR	free time	sport	\N	t
2722	db	2014-04-20	2014-04-20			-75.56	EUR	free time	gadgets	\N	t
2721	db	2014-04-20	2014-04-20			-60.24	EUR	living	clothes	\N	t
2705	db	2014-04-20	2014-04-20			-6.68	EUR	living	food	\N	t
2704	db	2014-04-20	2014-04-20			-2.72	EUR	free time	entertainment	\N	t
2733	db	2014-04-21	2014-04-21			-6.29	EUR	living	food	\N	t
2732	db	2014-04-21	2014-04-21			-3.06	EUR	free time	going out	\N	t
2731	db	2014-04-21	2014-04-21			-3.65	EUR	mobility	gas	\N	t
2725	db	2014-04-21	2014-04-21			-20.00	EUR	other	cash	\N	t
2760	db	2014-04-22	2014-04-22			-4.46	EUR	health	wellness	\N	t
2759	db	2014-04-22	2014-04-22			-7.69	EUR	free time	going out	\N	t
2801	db	2014-04-24	2014-04-24			-8.77	EUR	living	food	\N	t
2827	db	2014-04-25	2014-04-25			-5.34	EUR	free time	hobbies	\N	t
2853	db	2014-04-26	2014-04-26			-7.71	EUR	free time	sport	\N	t
2880	db	2014-04-27	2014-04-27			-4.24	EUR	living	food	\N	t
2879	db	2014-04-27	2014-04-27			-0.77	EUR	free time	entertainment	\N	t
2908	db	2014-04-28	2014-04-28			-5.16	EUR	living	food	\N	t
2907	db	2014-04-28	2014-04-28			-13.10	EUR	free time	going out	\N	t
2906	db	2014-04-28	2014-04-28			-5.33	EUR	mobility	gas	\N	t
2900	db	2014-04-28	2014-04-28			-20.00	EUR	other	cash	\N	t
2935	db	2014-04-29	2014-04-29			-13.46	EUR	health	wellness	\N	t
2934	db	2014-04-29	2014-04-29			-16.15	EUR	free time	going out	\N	t
2986	db	2014-05-01	2014-05-01			-10.00	EUR	house	phone	\N	t
2976	db	2014-05-01	2014-05-01			-1.46	EUR	living	food	\N	t
3012	db	2014-05-02	2014-05-02			-10.00	EUR	house	electricity	\N	t
3002	db	2014-05-02	2014-05-02			-5.51	EUR	free time	hobbies	\N	t
3038	db	2014-05-03	2014-05-03			-10.00	EUR	house	internet	\N	t
3028	db	2014-05-03	2014-05-03			-9.64	EUR	free time	sport	\N	t
3064	db	2014-05-04	2014-05-04			-250.00	EUR	house	rent	\N	t
3055	db	2014-05-04	2014-05-04			-8.02	EUR	living	food	\N	t
3054	db	2014-05-04	2014-05-04			-8.34	EUR	free time	entertainment	\N	t
3090	db	2014-05-05	2014-05-05			-10.00	EUR	finance	costs and fees	\N	t
3083	db	2014-05-05	2014-05-05			-1.14	EUR	living	food	\N	t
3082	db	2014-05-05	2014-05-05			-17.60	EUR	free time	going out	\N	t
3081	db	2014-05-05	2014-05-05			-8.81	EUR	mobility	gas	\N	t
3075	db	2014-05-05	2014-05-05			-20.00	EUR	other	cash	\N	t
3116	db	2014-05-06	2014-05-06			-50.00	EUR	finance	insurance	\N	t
3110	db	2014-05-06	2014-05-06			-15.70	EUR	health	wellness	\N	t
3109	db	2014-05-06	2014-05-06			-2.64	EUR	free time	going out	\N	t
3142	db	2014-05-07	2014-05-07			-92.28	EUR	health	doctor visits	\N	t
3168	db	2014-05-08	2014-05-08			1000.00	EUR	work and training	salary	\N	t
3151	db	2014-05-08	2014-05-08			-4.86	EUR	living	food	\N	t
3177	db	2014-05-09	2014-05-09			-4.89	EUR	free time	hobbies	\N	t
3219	db	2014-05-10	2014-05-10			-50.92	EUR	living	pets	\N	t
3203	db	2014-05-10	2014-05-10			-8.57	EUR	free time	sport	\N	t
3230	db	2014-05-11	2014-05-11			-9.46	EUR	living	food	\N	t
3229	db	2014-05-11	2014-05-11			-4.68	EUR	free time	entertainment	\N	t
3258	db	2014-05-12	2014-05-12			-12.64	EUR	living	food	\N	t
3257	db	2014-05-12	2014-05-12			-7.72	EUR	free time	going out	\N	t
3256	db	2014-05-12	2014-05-12			-18.99	EUR	mobility	gas	\N	t
3250	db	2014-05-12	2014-05-12			-20.00	EUR	other	cash	\N	t
3285	db	2014-05-13	2014-05-13			-18.57	EUR	health	wellness	\N	t
3284	db	2014-05-13	2014-05-13			-8.97	EUR	free time	going out	\N	t
3345	db	2014-05-15	2014-05-15			-62.68	EUR	living	household	\N	t
3326	db	2014-05-15	2014-05-15			-7.58	EUR	living	food	\N	t
3352	db	2014-05-16	2014-05-16			-1.01	EUR	free time	hobbies	\N	t
3378	db	2014-05-17	2014-05-17			-4.63	EUR	free time	sport	\N	t
3405	db	2014-05-18	2014-05-18			-5.21	EUR	living	food	\N	t
3404	db	2014-05-18	2014-05-18			-5.39	EUR	free time	entertainment	\N	t
3433	db	2014-05-19	2014-05-19			-8.93	EUR	living	food	\N	t
3432	db	2014-05-19	2014-05-19			-3.99	EUR	free time	going out	\N	t
3431	db	2014-05-19	2014-05-19			-19.63	EUR	mobility	gas	\N	t
3425	db	2014-05-19	2014-05-19			-20.00	EUR	other	cash	\N	t
3472	db	2014-05-20	2014-05-20			-40.45	EUR	free time	gadgets	\N	t
3471	db	2014-05-20	2014-05-20			-62.92	EUR	living	clothes	\N	t
3460	db	2014-05-20	2014-05-20			-5.74	EUR	health	wellness	\N	t
3459	db	2014-05-20	2014-05-20			-19.28	EUR	free time	going out	\N	t
3501	db	2014-05-22	2014-05-22			-1.01	EUR	living	food	\N	t
3527	db	2014-05-23	2014-05-23			-9.00	EUR	free time	hobbies	\N	t
3553	db	2014-05-24	2014-05-24			-5.11	EUR	free time	sport	\N	t
3580	db	2014-05-25	2014-05-25			-0.10	EUR	living	food	\N	t
3579	db	2014-05-25	2014-05-25			-1.18	EUR	free time	entertainment	\N	t
3608	db	2014-05-26	2014-05-26			-8.56	EUR	living	food	\N	t
3607	db	2014-05-26	2014-05-26			-5.21	EUR	free time	going out	\N	t
3606	db	2014-05-26	2014-05-26			-14.61	EUR	mobility	gas	\N	t
3600	db	2014-05-26	2014-05-26			-20.00	EUR	other	cash	\N	t
3635	db	2014-05-27	2014-05-27			-5.82	EUR	health	wellness	\N	t
3634	db	2014-05-27	2014-05-27			-14.07	EUR	free time	going out	\N	t
3676	db	2014-05-29	2014-05-29			-6.92	EUR	living	food	\N	t
3702	db	2014-05-30	2014-05-30			-5.50	EUR	free time	hobbies	\N	t
3728	db	2014-05-31	2014-05-31			-3.75	EUR	free time	sport	\N	t
3761	db	2014-06-01	2014-06-01			-10.00	EUR	house	phone	\N	t
3755	db	2014-06-01	2014-06-01			-7.53	EUR	living	food	\N	t
3754	db	2014-06-01	2014-06-01			-0.06	EUR	free time	entertainment	\N	t
3787	db	2014-06-02	2014-06-02			-10.00	EUR	house	electricity	\N	t
3783	db	2014-06-02	2014-06-02			-13.96	EUR	living	food	\N	t
3782	db	2014-06-02	2014-06-02			-12.16	EUR	free time	going out	\N	t
3781	db	2014-06-02	2014-06-02			-11.14	EUR	mobility	gas	\N	t
3775	db	2014-06-02	2014-06-02			-20.00	EUR	other	cash	\N	t
3813	db	2014-06-03	2014-06-03			-10.00	EUR	house	internet	\N	t
3810	db	2014-06-03	2014-06-03			-18.93	EUR	health	wellness	\N	t
3809	db	2014-06-03	2014-06-03			-3.45	EUR	free time	going out	\N	t
3839	db	2014-06-04	2014-06-04			-250.00	EUR	house	rent	\N	t
3865	db	2014-06-05	2014-06-05			-10.00	EUR	finance	costs and fees	\N	t
3851	db	2014-06-05	2014-06-05			-5.20	EUR	living	food	\N	t
3891	db	2014-06-06	2014-06-06			-50.00	EUR	finance	insurance	\N	t
3877	db	2014-06-06	2014-06-06			-5.53	EUR	free time	hobbies	\N	t
3917	db	2014-06-07	2014-06-07			-43.81	EUR	health	doctor visits	\N	t
3903	db	2014-06-07	2014-06-07			-1.44	EUR	free time	sport	\N	t
3943	db	2014-06-08	2014-06-08			1000.00	EUR	work and training	salary	\N	t
3930	db	2014-06-08	2014-06-08			-5.94	EUR	living	food	\N	t
3929	db	2014-06-08	2014-06-08			-8.25	EUR	free time	entertainment	\N	t
3958	db	2014-06-09	2014-06-09			-11.59	EUR	living	food	\N	t
3957	db	2014-06-09	2014-06-09			-11.24	EUR	free time	going out	\N	t
3956	db	2014-06-09	2014-06-09			-3.17	EUR	mobility	gas	\N	t
3950	db	2014-06-09	2014-06-09			-20.00	EUR	other	cash	\N	t
3994	db	2014-06-10	2014-06-10			-37.87	EUR	living	pets	\N	t
3985	db	2014-06-10	2014-06-10			-18.32	EUR	health	wellness	\N	t
3984	db	2014-06-10	2014-06-10			-7.76	EUR	free time	going out	\N	t
4026	db	2014-06-12	2014-06-12			-6.91	EUR	living	food	\N	t
4052	db	2014-06-13	2014-06-13			-2.56	EUR	free time	hobbies	\N	t
4078	db	2014-06-14	2014-06-14			-2.61	EUR	free time	sport	\N	t
4120	db	2014-06-15	2014-06-15			-58.48	EUR	living	household	\N	t
4105	db	2014-06-15	2014-06-15			-3.37	EUR	living	food	\N	t
4104	db	2014-06-15	2014-06-15			-8.37	EUR	free time	entertainment	\N	t
4133	db	2014-06-16	2014-06-16			-1.91	EUR	living	food	\N	t
4132	db	2014-06-16	2014-06-16			-8.28	EUR	free time	going out	\N	t
4131	db	2014-06-16	2014-06-16			-7.23	EUR	mobility	gas	\N	t
4125	db	2014-06-16	2014-06-16			-20.00	EUR	other	cash	\N	t
4160	db	2014-06-17	2014-06-17			-14.54	EUR	health	wellness	\N	t
4159	db	2014-06-17	2014-06-17			-8.07	EUR	free time	going out	\N	t
4201	db	2014-06-19	2014-06-19			-2.02	EUR	living	food	\N	t
4247	db	2014-06-20	2014-06-20			-14.78	EUR	free time	gadgets	\N	t
4246	db	2014-06-20	2014-06-20			-44.55	EUR	living	clothes	\N	t
4227	db	2014-06-20	2014-06-20			-9.69	EUR	free time	hobbies	\N	t
4253	db	2014-06-21	2014-06-21			-5.86	EUR	free time	sport	\N	t
4280	db	2014-06-22	2014-06-22			-2.16	EUR	living	food	\N	t
4279	db	2014-06-22	2014-06-22			-4.22	EUR	free time	entertainment	\N	t
4308	db	2014-06-23	2014-06-23			-5.47	EUR	living	food	\N	t
4307	db	2014-06-23	2014-06-23			-19.74	EUR	free time	going out	\N	t
4306	db	2014-06-23	2014-06-23			-13.44	EUR	mobility	gas	\N	t
4300	db	2014-06-23	2014-06-23			-20.00	EUR	other	cash	\N	t
4335	db	2014-06-24	2014-06-24			-10.39	EUR	health	wellness	\N	t
4334	db	2014-06-24	2014-06-24			-5.96	EUR	free time	going out	\N	t
4376	db	2014-06-26	2014-06-26			-9.04	EUR	living	food	\N	t
4402	db	2014-06-27	2014-06-27			-5.43	EUR	free time	hobbies	\N	t
4428	db	2014-06-28	2014-06-28			-5.93	EUR	free time	sport	\N	t
4455	db	2014-06-29	2014-06-29			-1.10	EUR	living	food	\N	t
4454	db	2014-06-29	2014-06-29			-9.45	EUR	free time	entertainment	\N	t
4498	db	2014-06-30	2014-06-30			-480.93	EUR	free time	travel	\N	t
4483	db	2014-06-30	2014-06-30			-12.46	EUR	living	food	\N	t
4482	db	2014-06-30	2014-06-30			-3.72	EUR	free time	going out	\N	t
4481	db	2014-06-30	2014-06-30			-6.56	EUR	mobility	gas	\N	t
4475	db	2014-06-30	2014-06-30			-20.00	EUR	other	cash	\N	t
4511	db	2014-07-01	2014-07-01			-10.00	EUR	house	phone	\N	t
4510	db	2014-07-01	2014-07-01			-15.32	EUR	health	wellness	\N	t
4509	db	2014-07-01	2014-07-01			-8.92	EUR	free time	going out	\N	t
4537	db	2014-07-02	2014-07-02			-10.00	EUR	house	electricity	\N	t
4563	db	2014-07-03	2014-07-03			-10.00	EUR	house	internet	\N	t
4551	db	2014-07-03	2014-07-03			-5.33	EUR	living	food	\N	t
4589	db	2014-07-04	2014-07-04			-250.00	EUR	house	rent	\N	t
4577	db	2014-07-04	2014-07-04			-4.66	EUR	free time	hobbies	\N	t
4615	db	2014-07-05	2014-07-05			-10.00	EUR	finance	costs and fees	\N	t
4603	db	2014-07-05	2014-07-05			-7.87	EUR	free time	sport	\N	t
4641	db	2014-07-06	2014-07-06			-50.00	EUR	finance	insurance	\N	t
4630	db	2014-07-06	2014-07-06			-7.73	EUR	living	food	\N	t
4629	db	2014-07-06	2014-07-06			-9.79	EUR	free time	entertainment	\N	t
4667	db	2014-07-07	2014-07-07			-64.34	EUR	health	doctor visits	\N	t
4658	db	2014-07-07	2014-07-07			-12.61	EUR	living	food	\N	t
4657	db	2014-07-07	2014-07-07			-6.48	EUR	free time	going out	\N	t
4656	db	2014-07-07	2014-07-07			-15.29	EUR	mobility	gas	\N	t
4650	db	2014-07-07	2014-07-07			-20.00	EUR	other	cash	\N	t
4693	db	2014-07-08	2014-07-08			1000.00	EUR	work and training	salary	\N	t
4685	db	2014-07-08	2014-07-08			-5.62	EUR	health	wellness	\N	t
4684	db	2014-07-08	2014-07-08			-3.86	EUR	free time	going out	\N	t
4744	db	2014-07-10	2014-07-10			-10.84	EUR	living	pets	\N	t
4726	db	2014-07-10	2014-07-10			-0.51	EUR	living	food	\N	t
4752	db	2014-07-11	2014-07-11			-8.91	EUR	free time	hobbies	\N	t
4778	db	2014-07-12	2014-07-12			-2.07	EUR	free time	sport	\N	t
4805	db	2014-07-13	2014-07-13			-8.63	EUR	living	food	\N	t
4804	db	2014-07-13	2014-07-13			-4.11	EUR	free time	entertainment	\N	t
4833	db	2014-07-14	2014-07-14			-1.88	EUR	living	food	\N	t
4832	db	2014-07-14	2014-07-14			-12.49	EUR	free time	going out	\N	t
4831	db	2014-07-14	2014-07-14			-5.04	EUR	mobility	gas	\N	t
4825	db	2014-07-14	2014-07-14			-20.00	EUR	other	cash	\N	t
4870	db	2014-07-15	2014-07-15			-37.94	EUR	living	household	\N	t
4860	db	2014-07-15	2014-07-15			-2.99	EUR	health	wellness	\N	t
4859	db	2014-07-15	2014-07-15			-12.52	EUR	free time	going out	\N	t
4901	db	2014-07-17	2014-07-17			-5.16	EUR	living	food	\N	t
4927	db	2014-07-18	2014-07-18			-0.31	EUR	free time	hobbies	\N	t
4953	db	2014-07-19	2014-07-19			-9.78	EUR	free time	sport	\N	t
4997	db	2014-07-20	2014-07-20			-1.17	EUR	free time	gadgets	\N	t
4996	db	2014-07-20	2014-07-20			-1.54	EUR	living	clothes	\N	t
4980	db	2014-07-20	2014-07-20			-9.10	EUR	living	food	\N	t
4979	db	2014-07-20	2014-07-20			-7.78	EUR	free time	entertainment	\N	t
5008	db	2014-07-21	2014-07-21			-14.60	EUR	living	food	\N	t
5007	db	2014-07-21	2014-07-21			-14.08	EUR	free time	going out	\N	t
5006	db	2014-07-21	2014-07-21			-16.65	EUR	mobility	gas	\N	t
5000	db	2014-07-21	2014-07-21			-20.00	EUR	other	cash	\N	t
5035	db	2014-07-22	2014-07-22			-15.68	EUR	health	wellness	\N	t
5034	db	2014-07-22	2014-07-22			-10.81	EUR	free time	going out	\N	t
5076	db	2014-07-24	2014-07-24			-0.41	EUR	living	food	\N	t
5102	db	2014-07-25	2014-07-25			-8.54	EUR	free time	hobbies	\N	t
5128	db	2014-07-26	2014-07-26			-4.05	EUR	free time	sport	\N	t
5155	db	2014-07-27	2014-07-27			-9.25	EUR	living	food	\N	t
5154	db	2014-07-27	2014-07-27			-5.73	EUR	free time	entertainment	\N	t
5183	db	2014-07-28	2014-07-28			-2.71	EUR	living	food	\N	t
5182	db	2014-07-28	2014-07-28			-9.85	EUR	free time	going out	\N	t
5181	db	2014-07-28	2014-07-28			-10.61	EUR	mobility	gas	\N	t
5175	db	2014-07-28	2014-07-28			-20.00	EUR	other	cash	\N	t
5210	db	2014-07-29	2014-07-29			-17.40	EUR	health	wellness	\N	t
5209	db	2014-07-29	2014-07-29			-4.34	EUR	free time	going out	\N	t
5251	db	2014-07-31	2014-07-31			-6.01	EUR	living	food	\N	t
5286	db	2014-08-01	2014-08-01			-10.00	EUR	house	phone	\N	t
5277	db	2014-08-01	2014-08-01			-2.12	EUR	free time	hobbies	\N	t
5312	db	2014-08-02	2014-08-02			-10.00	EUR	house	electricity	\N	t
5303	db	2014-08-02	2014-08-02			-4.34	EUR	free time	sport	\N	t
5338	db	2014-08-03	2014-08-03			-10.00	EUR	house	internet	\N	t
5330	db	2014-08-03	2014-08-03			-8.17	EUR	living	food	\N	t
5329	db	2014-08-03	2014-08-03			-3.91	EUR	free time	entertainment	\N	t
5364	db	2014-08-04	2014-08-04			-250.00	EUR	house	rent	\N	t
5358	db	2014-08-04	2014-08-04			-0.56	EUR	living	food	\N	t
5357	db	2014-08-04	2014-08-04			-17.31	EUR	free time	going out	\N	t
5356	db	2014-08-04	2014-08-04			-5.28	EUR	mobility	gas	\N	t
5350	db	2014-08-04	2014-08-04			-20.00	EUR	other	cash	\N	t
5390	db	2014-08-05	2014-08-05			-10.00	EUR	finance	costs and fees	\N	t
5385	db	2014-08-05	2014-08-05			-16.73	EUR	health	wellness	\N	t
5384	db	2014-08-05	2014-08-05			-7.00	EUR	free time	going out	\N	t
5416	db	2014-08-06	2014-08-06			-50.00	EUR	finance	insurance	\N	t
5442	db	2014-08-07	2014-08-07			-85.29	EUR	health	doctor visits	\N	t
5426	db	2014-08-07	2014-08-07			-0.67	EUR	living	food	\N	t
5468	db	2014-08-08	2014-08-08			1000.00	EUR	work and training	salary	\N	t
5452	db	2014-08-08	2014-08-08			-1.66	EUR	free time	hobbies	\N	t
5478	db	2014-08-09	2014-08-09			-1.34	EUR	free time	sport	\N	t
5519	db	2014-08-10	2014-08-10			-37.08	EUR	living	pets	\N	t
5505	db	2014-08-10	2014-08-10			-3.57	EUR	living	food	\N	t
5504	db	2014-08-10	2014-08-10			-1.68	EUR	free time	entertainment	\N	t
5533	db	2014-08-11	2014-08-11			-18.52	EUR	living	food	\N	t
5532	db	2014-08-11	2014-08-11			-15.35	EUR	free time	going out	\N	t
5531	db	2014-08-11	2014-08-11			-14.67	EUR	mobility	gas	\N	t
5525	db	2014-08-11	2014-08-11			-20.00	EUR	other	cash	\N	t
5560	db	2014-08-12	2014-08-12			-2.39	EUR	health	wellness	\N	t
5559	db	2014-08-12	2014-08-12			-4.11	EUR	free time	going out	\N	t
5601	db	2014-08-14	2014-08-14			-4.06	EUR	living	food	\N	t
5645	db	2014-08-15	2014-08-15			-36.47	EUR	living	household	\N	t
5627	db	2014-08-15	2014-08-15			-1.63	EUR	free time	hobbies	\N	t
5653	db	2014-08-16	2014-08-16			-1.44	EUR	free time	sport	\N	t
5680	db	2014-08-17	2014-08-17			-8.11	EUR	living	food	\N	t
5679	db	2014-08-17	2014-08-17			-7.42	EUR	free time	entertainment	\N	t
5708	db	2014-08-18	2014-08-18			-11.54	EUR	living	food	\N	t
5707	db	2014-08-18	2014-08-18			-13.05	EUR	free time	going out	\N	t
5706	db	2014-08-18	2014-08-18			-4.89	EUR	mobility	gas	\N	t
5700	db	2014-08-18	2014-08-18			-20.00	EUR	other	cash	\N	t
5735	db	2014-08-19	2014-08-19			-0.48	EUR	health	wellness	\N	t
5734	db	2014-08-19	2014-08-19			-7.25	EUR	free time	going out	\N	t
5772	db	2014-08-20	2014-08-20			-68.04	EUR	free time	gadgets	\N	t
5771	db	2014-08-20	2014-08-20			-16.98	EUR	living	clothes	\N	t
5776	db	2014-08-21	2014-08-21			-8.52	EUR	living	food	\N	t
5802	db	2014-08-22	2014-08-22			-5.82	EUR	free time	hobbies	\N	t
5828	db	2014-08-23	2014-08-23			-3.17	EUR	free time	sport	\N	t
5855	db	2014-08-24	2014-08-24			-9.68	EUR	living	food	\N	t
5854	db	2014-08-24	2014-08-24			-5.28	EUR	free time	entertainment	\N	t
5883	db	2014-08-25	2014-08-25			-2.09	EUR	living	food	\N	t
5882	db	2014-08-25	2014-08-25			-9.59	EUR	free time	going out	\N	t
5881	db	2014-08-25	2014-08-25			-8.41	EUR	mobility	gas	\N	t
5875	db	2014-08-25	2014-08-25			-20.00	EUR	other	cash	\N	t
5910	db	2014-08-26	2014-08-26			-4.57	EUR	health	wellness	\N	t
5909	db	2014-08-26	2014-08-26			-7.30	EUR	free time	going out	\N	t
5951	db	2014-08-28	2014-08-28			-3.70	EUR	living	food	\N	t
5977	db	2014-08-29	2014-08-29			-0.86	EUR	free time	hobbies	\N	t
6003	db	2014-08-30	2014-08-30			-9.81	EUR	free time	sport	\N	t
6030	db	2014-08-31	2014-08-31			-4.83	EUR	living	food	\N	t
6029	db	2014-08-31	2014-08-31			-0.21	EUR	free time	entertainment	\N	t
6061	db	2014-09-01	2014-09-01			-10.00	EUR	house	phone	\N	t
6058	db	2014-09-01	2014-09-01			-19.16	EUR	living	food	\N	t
6057	db	2014-09-01	2014-09-01			-4.67	EUR	free time	going out	\N	t
6056	db	2014-09-01	2014-09-01			-7.36	EUR	mobility	gas	\N	t
6050	db	2014-09-01	2014-09-01			-20.00	EUR	other	cash	\N	t
6087	db	2014-09-02	2014-09-02			-10.00	EUR	house	electricity	\N	t
6085	db	2014-09-02	2014-09-02			-18.68	EUR	health	wellness	\N	t
6084	db	2014-09-02	2014-09-02			-17.82	EUR	free time	going out	\N	t
6113	db	2014-09-03	2014-09-03			-10.00	EUR	house	internet	\N	t
6139	db	2014-09-04	2014-09-04			-250.00	EUR	house	rent	\N	t
6126	db	2014-09-04	2014-09-04			-2.24	EUR	living	food	\N	t
6165	db	2014-09-05	2014-09-05			-10.00	EUR	finance	costs and fees	\N	t
6152	db	2014-09-05	2014-09-05			-6.35	EUR	free time	hobbies	\N	t
6191	db	2014-09-06	2014-09-06			-50.00	EUR	finance	insurance	\N	t
6178	db	2014-09-06	2014-09-06			-3.07	EUR	free time	sport	\N	t
6217	db	2014-09-07	2014-09-07			-83.04	EUR	health	doctor visits	\N	t
6205	db	2014-09-07	2014-09-07			-4.19	EUR	living	food	\N	t
6204	db	2014-09-07	2014-09-07			-6.46	EUR	free time	entertainment	\N	t
6243	db	2014-09-08	2014-09-08			1000.00	EUR	work and training	salary	\N	t
6233	db	2014-09-08	2014-09-08			-17.63	EUR	living	food	\N	t
6232	db	2014-09-08	2014-09-08			-4.14	EUR	free time	going out	\N	t
6231	db	2014-09-08	2014-09-08			-0.09	EUR	mobility	gas	\N	t
6225	db	2014-09-08	2014-09-08			-20.00	EUR	other	cash	\N	t
6260	db	2014-09-09	2014-09-09			-3.42	EUR	health	wellness	\N	t
6259	db	2014-09-09	2014-09-09			-7.22	EUR	free time	going out	\N	t
6294	db	2014-09-10	2014-09-10			-44.55	EUR	living	pets	\N	t
6301	db	2014-09-11	2014-09-11			-7.78	EUR	living	food	\N	t
6327	db	2014-09-12	2014-09-12			-6.41	EUR	free time	hobbies	\N	t
6353	db	2014-09-13	2014-09-13			-9.03	EUR	free time	sport	\N	t
6380	db	2014-09-14	2014-09-14			-7.59	EUR	living	food	\N	t
6379	db	2014-09-14	2014-09-14			-0.62	EUR	free time	entertainment	\N	t
6420	db	2014-09-15	2014-09-15			-67.09	EUR	living	household	\N	t
6408	db	2014-09-15	2014-09-15			-17.33	EUR	living	food	\N	t
6407	db	2014-09-15	2014-09-15			-7.33	EUR	free time	going out	\N	t
6406	db	2014-09-15	2014-09-15			-0.88	EUR	mobility	gas	\N	t
6400	db	2014-09-15	2014-09-15			-20.00	EUR	other	cash	\N	t
6435	db	2014-09-16	2014-09-16			-12.20	EUR	health	wellness	\N	t
6434	db	2014-09-16	2014-09-16			-19.03	EUR	free time	going out	\N	t
6476	db	2014-09-18	2014-09-18			-6.95	EUR	living	food	\N	t
6502	db	2014-09-19	2014-09-19			-5.40	EUR	free time	hobbies	\N	t
6547	db	2014-09-20	2014-09-20			-14.30	EUR	free time	gadgets	\N	t
6546	db	2014-09-20	2014-09-20			-11.82	EUR	living	clothes	\N	t
6528	db	2014-09-20	2014-09-20			-6.19	EUR	free time	sport	\N	t
6555	db	2014-09-21	2014-09-21			-6.48	EUR	living	food	\N	t
6554	db	2014-09-21	2014-09-21			-4.17	EUR	free time	entertainment	\N	t
6583	db	2014-09-22	2014-09-22			-11.02	EUR	living	food	\N	t
6582	db	2014-09-22	2014-09-22			-11.15	EUR	free time	going out	\N	t
6581	db	2014-09-22	2014-09-22			-13.96	EUR	mobility	gas	\N	t
6575	db	2014-09-22	2014-09-22			-20.00	EUR	other	cash	\N	t
6610	db	2014-09-23	2014-09-23			-7.96	EUR	health	wellness	\N	t
6609	db	2014-09-23	2014-09-23			-18.17	EUR	free time	going out	\N	t
6651	db	2014-09-25	2014-09-25			-1.69	EUR	living	food	\N	t
6677	db	2014-09-26	2014-09-26			-2.26	EUR	free time	hobbies	\N	t
6703	db	2014-09-27	2014-09-27			-1.77	EUR	free time	sport	\N	t
6730	db	2014-09-28	2014-09-28			-7.51	EUR	living	food	\N	t
6729	db	2014-09-28	2014-09-28			-4.22	EUR	free time	entertainment	\N	t
6758	db	2014-09-29	2014-09-29			-2.97	EUR	living	food	\N	t
6757	db	2014-09-29	2014-09-29			-13.47	EUR	free time	going out	\N	t
6756	db	2014-09-29	2014-09-29			-16.43	EUR	mobility	gas	\N	t
6750	db	2014-09-29	2014-09-29			-20.00	EUR	other	cash	\N	t
6785	db	2014-09-30	2014-09-30			-17.59	EUR	health	wellness	\N	t
6784	db	2014-09-30	2014-09-30			-19.00	EUR	free time	going out	\N	t
6811	db	2014-10-01	2014-10-01			-10.00	EUR	house	phone	\N	t
6837	db	2014-10-02	2014-10-02			-10.00	EUR	house	electricity	\N	t
6826	db	2014-10-02	2014-10-02			-9.09	EUR	living	food	\N	t
6863	db	2014-10-03	2014-10-03			-10.00	EUR	house	internet	\N	t
6852	db	2014-10-03	2014-10-03			-9.62	EUR	free time	hobbies	\N	t
6889	db	2014-10-04	2014-10-04			-250.00	EUR	house	rent	\N	t
6878	db	2014-10-04	2014-10-04			-8.38	EUR	free time	sport	\N	t
6915	db	2014-10-05	2014-10-05			-10.00	EUR	finance	costs and fees	\N	t
6905	db	2014-10-05	2014-10-05			-9.51	EUR	living	food	\N	t
6904	db	2014-10-05	2014-10-05			-4.32	EUR	free time	entertainment	\N	t
6941	db	2014-10-06	2014-10-06			-50.00	EUR	finance	insurance	\N	t
6933	db	2014-10-06	2014-10-06			-18.32	EUR	living	food	\N	t
6932	db	2014-10-06	2014-10-06			-9.06	EUR	free time	going out	\N	t
6931	db	2014-10-06	2014-10-06			-5.86	EUR	mobility	gas	\N	t
6925	db	2014-10-06	2014-10-06			-20.00	EUR	other	cash	\N	t
6967	db	2014-10-07	2014-10-07			-56.53	EUR	health	doctor visits	\N	t
6960	db	2014-10-07	2014-10-07			-15.06	EUR	health	wellness	\N	t
6959	db	2014-10-07	2014-10-07			-5.82	EUR	free time	going out	\N	t
6993	db	2014-10-08	2014-10-08			1000.00	EUR	work and training	salary	\N	t
7001	db	2014-10-09	2014-10-09			-4.44	EUR	living	food	\N	t
7044	db	2014-10-10	2014-10-10			-5.85	EUR	living	pets	\N	t
7027	db	2014-10-10	2014-10-10			-10.00	EUR	free time	hobbies	\N	t
7053	db	2014-10-11	2014-10-11			-9.26	EUR	free time	sport	\N	t
7080	db	2014-10-12	2014-10-12			-7.22	EUR	living	food	\N	t
7079	db	2014-10-12	2014-10-12			-7.55	EUR	free time	entertainment	\N	t
7108	db	2014-10-13	2014-10-13			-18.31	EUR	living	food	\N	t
7107	db	2014-10-13	2014-10-13			-4.61	EUR	free time	going out	\N	t
7106	db	2014-10-13	2014-10-13			-1.68	EUR	mobility	gas	\N	t
7100	db	2014-10-13	2014-10-13			-20.00	EUR	other	cash	\N	t
7135	db	2014-10-14	2014-10-14			-3.34	EUR	health	wellness	\N	t
7134	db	2014-10-14	2014-10-14			-8.03	EUR	free time	going out	\N	t
7170	db	2014-10-15	2014-10-15			-73.23	EUR	living	household	\N	t
7176	db	2014-10-16	2014-10-16			-7.21	EUR	living	food	\N	t
7202	db	2014-10-17	2014-10-17			-3.15	EUR	free time	hobbies	\N	t
7228	db	2014-10-18	2014-10-18			-4.45	EUR	free time	sport	\N	t
7255	db	2014-10-19	2014-10-19			-7.86	EUR	living	food	\N	t
7254	db	2014-10-19	2014-10-19			-6.83	EUR	free time	entertainment	\N	t
7297	db	2014-10-20	2014-10-20			-79.19	EUR	free time	gadgets	\N	t
7296	db	2014-10-20	2014-10-20			-42.75	EUR	living	clothes	\N	t
7283	db	2014-10-20	2014-10-20			-6.93	EUR	living	food	\N	t
7282	db	2014-10-20	2014-10-20			-9.30	EUR	free time	going out	\N	t
7281	db	2014-10-20	2014-10-20			-1.95	EUR	mobility	gas	\N	t
7275	db	2014-10-20	2014-10-20			-20.00	EUR	other	cash	\N	t
7310	db	2014-10-21	2014-10-21			-3.91	EUR	health	wellness	\N	t
7309	db	2014-10-21	2014-10-21			-6.29	EUR	free time	going out	\N	t
7351	db	2014-10-23	2014-10-23			-6.30	EUR	living	food	\N	t
7377	db	2014-10-24	2014-10-24			-4.44	EUR	free time	hobbies	\N	t
7403	db	2014-10-25	2014-10-25			-8.64	EUR	free time	sport	\N	t
7430	db	2014-10-26	2014-10-26			-9.10	EUR	living	food	\N	t
7429	db	2014-10-26	2014-10-26			-5.61	EUR	free time	entertainment	\N	t
7458	db	2014-10-27	2014-10-27			-14.06	EUR	living	food	\N	t
7457	db	2014-10-27	2014-10-27			-7.17	EUR	free time	going out	\N	t
7456	db	2014-10-27	2014-10-27			-11.14	EUR	mobility	gas	\N	t
7450	db	2014-10-27	2014-10-27			-20.00	EUR	other	cash	\N	t
7485	db	2014-10-28	2014-10-28			-11.24	EUR	health	wellness	\N	t
7484	db	2014-10-28	2014-10-28			-11.46	EUR	free time	going out	\N	t
7526	db	2014-10-30	2014-10-30			-6.60	EUR	living	food	\N	t
7552	db	2014-10-31	2014-10-31			-4.34	EUR	free time	hobbies	\N	t
7586	db	2014-11-01	2014-11-01			-10.00	EUR	house	phone	\N	t
7578	db	2014-11-01	2014-11-01			-1.57	EUR	free time	sport	\N	t
7612	db	2014-11-02	2014-11-02			-10.00	EUR	house	electricity	\N	t
7605	db	2014-11-02	2014-11-02			-2.28	EUR	living	food	\N	t
7604	db	2014-11-02	2014-11-02			-7.22	EUR	free time	entertainment	\N	t
7638	db	2014-11-03	2014-11-03			-10.00	EUR	house	internet	\N	t
7633	db	2014-11-03	2014-11-03			-10.88	EUR	living	food	\N	t
7632	db	2014-11-03	2014-11-03			-17.37	EUR	free time	going out	\N	t
7631	db	2014-11-03	2014-11-03			-2.62	EUR	mobility	gas	\N	t
7625	db	2014-11-03	2014-11-03			-20.00	EUR	other	cash	\N	t
7664	db	2014-11-04	2014-11-04			-250.00	EUR	house	rent	\N	t
7660	db	2014-11-04	2014-11-04			-18.36	EUR	health	wellness	\N	t
7659	db	2014-11-04	2014-11-04			-7.56	EUR	free time	going out	\N	t
7690	db	2014-11-05	2014-11-05			-10.00	EUR	finance	costs and fees	\N	t
7716	db	2014-11-06	2014-11-06			-50.00	EUR	finance	insurance	\N	t
7701	db	2014-11-06	2014-11-06			-9.30	EUR	living	food	\N	t
7742	db	2014-11-07	2014-11-07			-43.10	EUR	health	doctor visits	\N	t
7727	db	2014-11-07	2014-11-07			-1.91	EUR	free time	hobbies	\N	t
7768	db	2014-11-08	2014-11-08			1000.00	EUR	work and training	salary	\N	t
7753	db	2014-11-08	2014-11-08			-8.19	EUR	free time	sport	\N	t
7780	db	2014-11-09	2014-11-09			-3.11	EUR	living	food	\N	t
7779	db	2014-11-09	2014-11-09			-9.19	EUR	free time	entertainment	\N	t
7819	db	2014-11-10	2014-11-10			-24.11	EUR	living	pets	\N	t
7808	db	2014-11-10	2014-11-10			-10.51	EUR	living	food	\N	t
7807	db	2014-11-10	2014-11-10			-13.02	EUR	free time	going out	\N	t
7806	db	2014-11-10	2014-11-10			-2.25	EUR	mobility	gas	\N	t
7800	db	2014-11-10	2014-11-10			-20.00	EUR	other	cash	\N	t
7835	db	2014-11-11	2014-11-11			-5.25	EUR	health	wellness	\N	t
7834	db	2014-11-11	2014-11-11			-19.64	EUR	free time	going out	\N	t
7876	db	2014-11-13	2014-11-13			-7.54	EUR	living	food	\N	t
7902	db	2014-11-14	2014-11-14			-1.83	EUR	free time	hobbies	\N	t
7945	db	2014-11-15	2014-11-15			-36.96	EUR	living	household	\N	t
7928	db	2014-11-15	2014-11-15			-7.14	EUR	free time	sport	\N	t
7955	db	2014-11-16	2014-11-16			-8.47	EUR	living	food	\N	t
7954	db	2014-11-16	2014-11-16			-3.59	EUR	free time	entertainment	\N	t
7983	db	2014-11-17	2014-11-17			-4.68	EUR	living	food	\N	t
7982	db	2014-11-17	2014-11-17			-13.55	EUR	free time	going out	\N	t
7981	db	2014-11-17	2014-11-17			-15.43	EUR	mobility	gas	\N	t
7975	db	2014-11-17	2014-11-17			-20.00	EUR	other	cash	\N	t
8010	db	2014-11-18	2014-11-18			-8.07	EUR	health	wellness	\N	t
8009	db	2014-11-18	2014-11-18			-8.87	EUR	free time	going out	\N	t
8072	db	2014-11-20	2014-11-20			-2.56	EUR	free time	gadgets	\N	t
8071	db	2014-11-20	2014-11-20			-42.18	EUR	living	clothes	\N	t
8051	db	2014-11-20	2014-11-20			-9.17	EUR	living	food	\N	t
8077	db	2014-11-21	2014-11-21			-8.85	EUR	free time	hobbies	\N	t
8103	db	2014-11-22	2014-11-22			-1.09	EUR	free time	sport	\N	t
8130	db	2014-11-23	2014-11-23			-4.78	EUR	living	food	\N	t
8129	db	2014-11-23	2014-11-23			-5.11	EUR	free time	entertainment	\N	t
8158	db	2014-11-24	2014-11-24			-12.03	EUR	living	food	\N	t
8157	db	2014-11-24	2014-11-24			-4.91	EUR	free time	going out	\N	t
8156	db	2014-11-24	2014-11-24			-13.13	EUR	mobility	gas	\N	t
8150	db	2014-11-24	2014-11-24			-20.00	EUR	other	cash	\N	t
8185	db	2014-11-25	2014-11-25			-6.23	EUR	health	wellness	\N	t
8184	db	2014-11-25	2014-11-25			-14.52	EUR	free time	going out	\N	t
8226	db	2014-11-27	2014-11-27			-0.81	EUR	living	food	\N	t
8252	db	2014-11-28	2014-11-28			-4.93	EUR	free time	hobbies	\N	t
8278	db	2014-11-29	2014-11-29			-2.50	EUR	free time	sport	\N	t
8305	db	2014-11-30	2014-11-30			-2.77	EUR	living	food	\N	t
8304	db	2014-11-30	2014-11-30			-4.14	EUR	free time	entertainment	\N	t
8336	db	2014-12-01	2014-12-01			-10.00	EUR	house	phone	\N	t
8333	db	2014-12-01	2014-12-01			-15.10	EUR	living	food	\N	t
8332	db	2014-12-01	2014-12-01			-8.89	EUR	free time	going out	\N	t
8331	db	2014-12-01	2014-12-01			-0.62	EUR	mobility	gas	\N	t
8325	db	2014-12-01	2014-12-01			-20.00	EUR	other	cash	\N	t
8362	db	2014-12-02	2014-12-02			-10.00	EUR	house	electricity	\N	t
8360	db	2014-12-02	2014-12-02			-7.16	EUR	health	wellness	\N	t
8359	db	2014-12-02	2014-12-02			-0.69	EUR	free time	going out	\N	t
8388	db	2014-12-03	2014-12-03			-10.00	EUR	house	internet	\N	t
8414	db	2014-12-04	2014-12-04			-250.00	EUR	house	rent	\N	t
8401	db	2014-12-04	2014-12-04			-2.05	EUR	living	food	\N	t
8440	db	2014-12-05	2014-12-05			-10.00	EUR	finance	costs and fees	\N	t
8427	db	2014-12-05	2014-12-05			-9.83	EUR	free time	hobbies	\N	t
8466	db	2014-12-06	2014-12-06			-50.00	EUR	finance	insurance	\N	t
8453	db	2014-12-06	2014-12-06			-2.36	EUR	free time	sport	\N	t
8492	db	2014-12-07	2014-12-07			-50.67	EUR	health	doctor visits	\N	t
8480	db	2014-12-07	2014-12-07			-7.32	EUR	living	food	\N	t
8479	db	2014-12-07	2014-12-07			-8.24	EUR	free time	entertainment	\N	t
8518	db	2014-12-08	2014-12-08			1000.00	EUR	work and training	salary	\N	t
8508	db	2014-12-08	2014-12-08			-17.33	EUR	living	food	\N	t
8507	db	2014-12-08	2014-12-08			-7.38	EUR	free time	going out	\N	t
8506	db	2014-12-08	2014-12-08			-0.31	EUR	mobility	gas	\N	t
8500	db	2014-12-08	2014-12-08			-20.00	EUR	other	cash	\N	t
8535	db	2014-12-09	2014-12-09			-10.57	EUR	health	wellness	\N	t
8534	db	2014-12-09	2014-12-09			-3.66	EUR	free time	going out	\N	t
8569	db	2014-12-10	2014-12-10			-30.30	EUR	living	pets	\N	t
8576	db	2014-12-11	2014-12-11			-8.77	EUR	living	food	\N	t
8602	db	2014-12-12	2014-12-12			-5.85	EUR	free time	hobbies	\N	t
8628	db	2014-12-13	2014-12-13			-3.85	EUR	free time	sport	\N	t
8655	db	2014-12-14	2014-12-14			-7.08	EUR	living	food	\N	t
8654	db	2014-12-14	2014-12-14			-5.12	EUR	free time	entertainment	\N	t
8695	db	2014-12-15	2014-12-15			-9.97	EUR	living	household	\N	t
8683	db	2014-12-15	2014-12-15			-12.51	EUR	living	food	\N	t
8682	db	2014-12-15	2014-12-15			-17.17	EUR	free time	going out	\N	t
8681	db	2014-12-15	2014-12-15			-11.76	EUR	mobility	gas	\N	t
8675	db	2014-12-15	2014-12-15			-20.00	EUR	other	cash	\N	t
8710	db	2014-12-16	2014-12-16			-10.22	EUR	health	wellness	\N	t
8709	db	2014-12-16	2014-12-16			-11.82	EUR	free time	going out	\N	t
8751	db	2014-12-18	2014-12-18			-7.34	EUR	living	food	\N	t
8777	db	2014-12-19	2014-12-19			-0.72	EUR	free time	hobbies	\N	t
8822	db	2014-12-20	2014-12-20			-69.09	EUR	free time	gadgets	\N	t
8821	db	2014-12-20	2014-12-20			-24.93	EUR	living	clothes	\N	t
8803	db	2014-12-20	2014-12-20			-9.36	EUR	free time	sport	\N	t
8830	db	2014-12-21	2014-12-21			-0.08	EUR	living	food	\N	t
8829	db	2014-12-21	2014-12-21			-8.27	EUR	free time	entertainment	\N	t
8874	db	2014-12-22	2014-12-22			-8.17	EUR	free time	presents	\N	t
8858	db	2014-12-22	2014-12-22			-4.19	EUR	living	food	\N	t
8857	db	2014-12-22	2014-12-22			-15.95	EUR	free time	going out	\N	t
8856	db	2014-12-22	2014-12-22			-13.97	EUR	mobility	gas	\N	t
8850	db	2014-12-22	2014-12-22			-20.00	EUR	other	cash	\N	t
8885	db	2014-12-23	2014-12-23			-18.92	EUR	health	wellness	\N	t
8884	db	2014-12-23	2014-12-23			-5.01	EUR	free time	going out	\N	t
8926	db	2014-12-25	2014-12-25			-1.91	EUR	living	food	\N	t
8952	db	2014-12-26	2014-12-26			-8.76	EUR	free time	hobbies	\N	t
8978	db	2014-12-27	2014-12-27			-8.37	EUR	free time	sport	\N	t
9005	db	2014-12-28	2014-12-28			-7.29	EUR	living	food	\N	t
9004	db	2014-12-28	2014-12-28			-0.14	EUR	free time	entertainment	\N	t
9033	db	2014-12-29	2014-12-29			-13.93	EUR	living	food	\N	t
9032	db	2014-12-29	2014-12-29			-2.97	EUR	free time	going out	\N	t
9031	db	2014-12-29	2014-12-29			-15.85	EUR	mobility	gas	\N	t
9025	db	2014-12-29	2014-12-29			-20.00	EUR	other	cash	\N	t
9060	db	2014-12-30	2014-12-30			-1.31	EUR	health	wellness	\N	t
9059	db	2014-12-30	2014-12-30			-11.33	EUR	free time	going out	\N	t
9111	db	2015-01-01	2015-01-01			-10.00	EUR	house	phone	\N	t
9101	db	2015-01-01	2015-01-01			-5.06	EUR	living	food	\N	t
9137	db	2015-01-02	2015-01-02			-10.00	EUR	house	electricity	\N	t
9127	db	2015-01-02	2015-01-02			-3.84	EUR	free time	hobbies	\N	t
9163	db	2015-01-03	2015-01-03			-10.00	EUR	house	internet	\N	t
9153	db	2015-01-03	2015-01-03			-0.09	EUR	free time	sport	\N	t
9189	db	2015-01-04	2015-01-04			-250.00	EUR	house	rent	\N	t
9180	db	2015-01-04	2015-01-04			-7.17	EUR	living	food	\N	t
9179	db	2015-01-04	2015-01-04			-0.69	EUR	free time	entertainment	\N	t
9215	db	2015-01-05	2015-01-05			-10.00	EUR	finance	costs and fees	\N	t
9208	db	2015-01-05	2015-01-05			-12.13	EUR	living	food	\N	t
9207	db	2015-01-05	2015-01-05			-8.70	EUR	free time	going out	\N	t
9206	db	2015-01-05	2015-01-05			-14.32	EUR	mobility	gas	\N	t
9200	db	2015-01-05	2015-01-05			-20.00	EUR	other	cash	\N	t
9241	db	2015-01-06	2015-01-06			-50.00	EUR	finance	insurance	\N	t
9235	db	2015-01-06	2015-01-06			-18.26	EUR	health	wellness	\N	t
9234	db	2015-01-06	2015-01-06			-10.57	EUR	free time	going out	\N	t
9267	db	2015-01-07	2015-01-07			-37.35	EUR	health	doctor visits	\N	t
9293	db	2015-01-08	2015-01-08			1000.00	EUR	work and training	salary	\N	t
9276	db	2015-01-08	2015-01-08			-6.49	EUR	living	food	\N	t
9302	db	2015-01-09	2015-01-09			-9.42	EUR	free time	hobbies	\N	t
9344	db	2015-01-10	2015-01-10			-42.77	EUR	living	pets	\N	t
9328	db	2015-01-10	2015-01-10			-9.60	EUR	free time	sport	\N	t
9355	db	2015-01-11	2015-01-11			-2.09	EUR	living	food	\N	t
9354	db	2015-01-11	2015-01-11			-7.70	EUR	free time	entertainment	\N	t
9383	db	2015-01-12	2015-01-12			-9.18	EUR	living	food	\N	t
9382	db	2015-01-12	2015-01-12			-1.67	EUR	free time	going out	\N	t
9381	db	2015-01-12	2015-01-12			-2.40	EUR	mobility	gas	\N	t
9375	db	2015-01-12	2015-01-12			-20.00	EUR	other	cash	\N	t
9410	db	2015-01-13	2015-01-13			-14.85	EUR	health	wellness	\N	t
9409	db	2015-01-13	2015-01-13			-17.91	EUR	free time	going out	\N	t
9470	db	2015-01-15	2015-01-15			-69.34	EUR	living	household	\N	t
9451	db	2015-01-15	2015-01-15			-7.93	EUR	living	food	\N	t
9477	db	2015-01-16	2015-01-16			-7.43	EUR	free time	hobbies	\N	t
9503	db	2015-01-17	2015-01-17			-0.04	EUR	free time	sport	\N	t
9530	db	2015-01-18	2015-01-18			-7.32	EUR	living	food	\N	t
9529	db	2015-01-18	2015-01-18			-4.44	EUR	free time	entertainment	\N	t
9558	db	2015-01-19	2015-01-19			-19.88	EUR	living	food	\N	t
9557	db	2015-01-19	2015-01-19			-1.05	EUR	free time	going out	\N	t
9556	db	2015-01-19	2015-01-19			-8.64	EUR	mobility	gas	\N	t
9550	db	2015-01-19	2015-01-19			-20.00	EUR	other	cash	\N	t
9597	db	2015-01-20	2015-01-20			-46.03	EUR	free time	gadgets	\N	t
9596	db	2015-01-20	2015-01-20			-79.82	EUR	living	clothes	\N	t
9585	db	2015-01-20	2015-01-20			-10.82	EUR	health	wellness	\N	t
9584	db	2015-01-20	2015-01-20			-19.48	EUR	free time	going out	\N	t
9626	db	2015-01-22	2015-01-22			-9.01	EUR	living	food	\N	t
9652	db	2015-01-23	2015-01-23			-1.33	EUR	free time	hobbies	\N	t
9678	db	2015-01-24	2015-01-24			-3.34	EUR	free time	sport	\N	t
9705	db	2015-01-25	2015-01-25			-0.32	EUR	living	food	\N	t
9704	db	2015-01-25	2015-01-25			-3.58	EUR	free time	entertainment	\N	t
9733	db	2015-01-26	2015-01-26			-13.14	EUR	living	food	\N	t
9732	db	2015-01-26	2015-01-26			-13.47	EUR	free time	going out	\N	t
9731	db	2015-01-26	2015-01-26			-8.99	EUR	mobility	gas	\N	t
9725	db	2015-01-26	2015-01-26			-20.00	EUR	other	cash	\N	t
9760	db	2015-01-27	2015-01-27			-2.28	EUR	health	wellness	\N	t
9759	db	2015-01-27	2015-01-27			-6.74	EUR	free time	going out	\N	t
9801	db	2015-01-29	2015-01-29			-1.19	EUR	living	food	\N	t
9827	db	2015-01-30	2015-01-30			-4.57	EUR	free time	hobbies	\N	t
9853	db	2015-01-31	2015-01-31			-0.39	EUR	free time	sport	\N	t
9886	db	2015-02-01	2015-02-01			-10.00	EUR	house	phone	\N	t
9880	db	2015-02-01	2015-02-01			-2.15	EUR	living	food	\N	t
9879	db	2015-02-01	2015-02-01			-1.12	EUR	free time	entertainment	\N	t
9912	db	2015-02-02	2015-02-02			-10.00	EUR	house	electricity	\N	t
9908	db	2015-02-02	2015-02-02			-11.21	EUR	living	food	\N	t
9907	db	2015-02-02	2015-02-02			-4.69	EUR	free time	going out	\N	t
9906	db	2015-02-02	2015-02-02			-13.61	EUR	mobility	gas	\N	t
9900	db	2015-02-02	2015-02-02			-20.00	EUR	other	cash	\N	t
9938	db	2015-02-03	2015-02-03			-10.00	EUR	house	internet	\N	t
9935	db	2015-02-03	2015-02-03			-2.71	EUR	health	wellness	\N	t
9934	db	2015-02-03	2015-02-03			-3.26	EUR	free time	going out	\N	t
9964	db	2015-02-04	2015-02-04			-250.00	EUR	house	rent	\N	t
9990	db	2015-02-05	2015-02-05			-10.00	EUR	finance	costs and fees	\N	t
9976	db	2015-02-05	2015-02-05			-2.77	EUR	living	food	\N	t
10016	db	2015-02-06	2015-02-06			-50.00	EUR	finance	insurance	\N	t
10002	db	2015-02-06	2015-02-06			-9.53	EUR	free time	hobbies	\N	t
10042	db	2015-02-07	2015-02-07			-2.96	EUR	health	doctor visits	\N	t
10028	db	2015-02-07	2015-02-07			-9.37	EUR	free time	sport	\N	t
10068	db	2015-02-08	2015-02-08			1000.00	EUR	work and training	salary	\N	t
10055	db	2015-02-08	2015-02-08			-1.02	EUR	living	food	\N	t
10054	db	2015-02-08	2015-02-08			-2.37	EUR	free time	entertainment	\N	t
10083	db	2015-02-09	2015-02-09			-16.05	EUR	living	food	\N	t
10082	db	2015-02-09	2015-02-09			-7.67	EUR	free time	going out	\N	t
10081	db	2015-02-09	2015-02-09			-19.42	EUR	mobility	gas	\N	t
10075	db	2015-02-09	2015-02-09			-20.00	EUR	other	cash	\N	t
10119	db	2015-02-10	2015-02-10			-34.07	EUR	living	pets	\N	t
10110	db	2015-02-10	2015-02-10			-7.19	EUR	health	wellness	\N	t
10109	db	2015-02-10	2015-02-10			-10.62	EUR	free time	going out	\N	t
10151	db	2015-02-12	2015-02-12			-6.44	EUR	living	food	\N	t
10177	db	2015-02-13	2015-02-13			-3.83	EUR	free time	hobbies	\N	t
10203	db	2015-02-14	2015-02-14			-8.67	EUR	free time	sport	\N	t
10245	db	2015-02-15	2015-02-15			-19.51	EUR	living	household	\N	t
10230	db	2015-02-15	2015-02-15			-6.32	EUR	living	food	\N	t
10229	db	2015-02-15	2015-02-15			-3.08	EUR	free time	entertainment	\N	t
10258	db	2015-02-16	2015-02-16			-5.29	EUR	living	food	\N	t
10257	db	2015-02-16	2015-02-16			-0.87	EUR	free time	going out	\N	t
10256	db	2015-02-16	2015-02-16			-12.31	EUR	mobility	gas	\N	t
10250	db	2015-02-16	2015-02-16			-20.00	EUR	other	cash	\N	t
10285	db	2015-02-17	2015-02-17			-19.86	EUR	health	wellness	\N	t
10284	db	2015-02-17	2015-02-17			-9.22	EUR	free time	going out	\N	t
10326	db	2015-02-19	2015-02-19			-6.51	EUR	living	food	\N	t
10372	db	2015-02-20	2015-02-20			-16.45	EUR	free time	gadgets	\N	t
10371	db	2015-02-20	2015-02-20			-49.53	EUR	living	clothes	\N	t
10352	db	2015-02-20	2015-02-20			-3.50	EUR	free time	hobbies	\N	t
10378	db	2015-02-21	2015-02-21			-8.48	EUR	free time	sport	\N	t
10405	db	2015-02-22	2015-02-22			-8.71	EUR	living	food	\N	t
10404	db	2015-02-22	2015-02-22			-2.64	EUR	free time	entertainment	\N	t
10433	db	2015-02-23	2015-02-23			-1.79	EUR	living	food	\N	t
10432	db	2015-02-23	2015-02-23			-10.53	EUR	free time	going out	\N	t
10431	db	2015-02-23	2015-02-23			-17.77	EUR	mobility	gas	\N	t
10425	db	2015-02-23	2015-02-23			-20.00	EUR	other	cash	\N	t
10460	db	2015-02-24	2015-02-24			-7.50	EUR	health	wellness	\N	t
10459	db	2015-02-24	2015-02-24			-13.83	EUR	free time	going out	\N	t
10501	db	2015-02-26	2015-02-26			-4.54	EUR	living	food	\N	t
10527	db	2015-02-27	2015-02-27			-5.74	EUR	free time	hobbies	\N	t
10553	db	2015-02-28	2015-02-28			-4.91	EUR	free time	sport	\N	t
10586	db	2015-03-01	2015-03-01			-10.00	EUR	house	phone	\N	t
10580	db	2015-03-01	2015-03-01			-2.87	EUR	living	food	\N	t
10579	db	2015-03-01	2015-03-01			-5.41	EUR	free time	entertainment	\N	t
10612	db	2015-03-02	2015-03-02			-10.00	EUR	house	electricity	\N	t
10608	db	2015-03-02	2015-03-02			-12.47	EUR	living	food	\N	t
10607	db	2015-03-02	2015-03-02			-3.86	EUR	free time	going out	\N	t
10606	db	2015-03-02	2015-03-02			-1.68	EUR	mobility	gas	\N	t
10600	db	2015-03-02	2015-03-02			-20.00	EUR	other	cash	\N	t
10638	db	2015-03-03	2015-03-03			-10.00	EUR	house	internet	\N	t
10635	db	2015-03-03	2015-03-03			-14.27	EUR	health	wellness	\N	t
10634	db	2015-03-03	2015-03-03			-1.14	EUR	free time	going out	\N	t
10664	db	2015-03-04	2015-03-04			-250.00	EUR	house	rent	\N	t
10690	db	2015-03-05	2015-03-05			-10.00	EUR	finance	costs and fees	\N	t
10676	db	2015-03-05	2015-03-05			-5.61	EUR	living	food	\N	t
10716	db	2015-03-06	2015-03-06			-50.00	EUR	finance	insurance	\N	t
10702	db	2015-03-06	2015-03-06			-0.54	EUR	free time	hobbies	\N	t
10742	db	2015-03-07	2015-03-07			-26.51	EUR	health	doctor visits	\N	t
10728	db	2015-03-07	2015-03-07			-7.20	EUR	free time	sport	\N	t
10768	db	2015-03-08	2015-03-08			1000.00	EUR	work and training	salary	\N	t
10755	db	2015-03-08	2015-03-08			-1.30	EUR	living	food	\N	t
10754	db	2015-03-08	2015-03-08			-5.53	EUR	free time	entertainment	\N	t
10783	db	2015-03-09	2015-03-09			-9.33	EUR	living	food	\N	t
10782	db	2015-03-09	2015-03-09			-1.60	EUR	free time	going out	\N	t
10781	db	2015-03-09	2015-03-09			-4.84	EUR	mobility	gas	\N	t
10775	db	2015-03-09	2015-03-09			-20.00	EUR	other	cash	\N	t
10819	db	2015-03-10	2015-03-10			-47.62	EUR	living	pets	\N	t
10810	db	2015-03-10	2015-03-10			-19.49	EUR	health	wellness	\N	t
10809	db	2015-03-10	2015-03-10			-6.49	EUR	free time	going out	\N	t
10851	db	2015-03-12	2015-03-12			-9.39	EUR	living	food	\N	t
10877	db	2015-03-13	2015-03-13			-0.99	EUR	free time	hobbies	\N	t
10903	db	2015-03-14	2015-03-14			-7.07	EUR	free time	sport	\N	t
10945	db	2015-03-15	2015-03-15			-30.79	EUR	living	household	\N	t
10930	db	2015-03-15	2015-03-15			-1.64	EUR	living	food	\N	t
10929	db	2015-03-15	2015-03-15			-0.66	EUR	free time	entertainment	\N	t
10958	db	2015-03-16	2015-03-16			-16.60	EUR	living	food	\N	t
10957	db	2015-03-16	2015-03-16			-2.10	EUR	free time	going out	\N	t
10956	db	2015-03-16	2015-03-16			-18.39	EUR	mobility	gas	\N	t
10950	db	2015-03-16	2015-03-16			-20.00	EUR	other	cash	\N	t
10985	db	2015-03-17	2015-03-17			-4.38	EUR	health	wellness	\N	t
10984	db	2015-03-17	2015-03-17			-6.16	EUR	free time	going out	\N	t
11026	db	2015-03-19	2015-03-19			-5.68	EUR	living	food	\N	t
11072	db	2015-03-20	2015-03-20			-66.44	EUR	free time	gadgets	\N	t
11071	db	2015-03-20	2015-03-20			-22.53	EUR	living	clothes	\N	t
11052	db	2015-03-20	2015-03-20			-3.39	EUR	free time	hobbies	\N	t
11078	db	2015-03-21	2015-03-21			-8.35	EUR	free time	sport	\N	t
11105	db	2015-03-22	2015-03-22			-3.70	EUR	living	food	\N	t
11104	db	2015-03-22	2015-03-22			-8.66	EUR	free time	entertainment	\N	t
11133	db	2015-03-23	2015-03-23			-13.64	EUR	living	food	\N	t
11132	db	2015-03-23	2015-03-23			-14.56	EUR	free time	going out	\N	t
11131	db	2015-03-23	2015-03-23			-6.93	EUR	mobility	gas	\N	t
11125	db	2015-03-23	2015-03-23			-20.00	EUR	other	cash	\N	t
11160	db	2015-03-24	2015-03-24			-12.22	EUR	health	wellness	\N	t
11159	db	2015-03-24	2015-03-24			-13.22	EUR	free time	going out	\N	t
11201	db	2015-03-26	2015-03-26			-1.45	EUR	living	food	\N	t
11227	db	2015-03-27	2015-03-27			-9.48	EUR	free time	hobbies	\N	t
11253	db	2015-03-28	2015-03-28			-4.81	EUR	free time	sport	\N	t
11280	db	2015-03-29	2015-03-29			-9.83	EUR	living	food	\N	t
11279	db	2015-03-29	2015-03-29			-7.63	EUR	free time	entertainment	\N	t
11308	db	2015-03-30	2015-03-30			-18.97	EUR	living	food	\N	t
11307	db	2015-03-30	2015-03-30			-8.76	EUR	free time	going out	\N	t
11306	db	2015-03-30	2015-03-30			-17.73	EUR	mobility	gas	\N	t
11300	db	2015-03-30	2015-03-30			-20.00	EUR	other	cash	\N	t
11335	db	2015-03-31	2015-03-31			-16.85	EUR	health	wellness	\N	t
11334	db	2015-03-31	2015-03-31			-1.75	EUR	free time	going out	\N	t
11361	db	2015-04-01	2015-04-01			-10.00	EUR	house	phone	\N	t
11387	db	2015-04-02	2015-04-02			-10.00	EUR	house	electricity	\N	t
11376	db	2015-04-02	2015-04-02			-6.76	EUR	living	food	\N	t
11413	db	2015-04-03	2015-04-03			-10.00	EUR	house	internet	\N	t
11402	db	2015-04-03	2015-04-03			-1.79	EUR	free time	hobbies	\N	t
11439	db	2015-04-04	2015-04-04			-250.00	EUR	house	rent	\N	t
11428	db	2015-04-04	2015-04-04			-7.59	EUR	free time	sport	\N	t
11465	db	2015-04-05	2015-04-05			-10.00	EUR	finance	costs and fees	\N	t
11455	db	2015-04-05	2015-04-05			-2.04	EUR	living	food	\N	t
11454	db	2015-04-05	2015-04-05			-2.26	EUR	free time	entertainment	\N	t
11491	db	2015-04-06	2015-04-06			-50.00	EUR	finance	insurance	\N	t
11483	db	2015-04-06	2015-04-06			-15.39	EUR	living	food	\N	t
11482	db	2015-04-06	2015-04-06			-16.43	EUR	free time	going out	\N	t
11481	db	2015-04-06	2015-04-06			-1.97	EUR	mobility	gas	\N	t
11475	db	2015-04-06	2015-04-06			-20.00	EUR	other	cash	\N	t
11517	db	2015-04-07	2015-04-07			-39.25	EUR	health	doctor visits	\N	t
11510	db	2015-04-07	2015-04-07			-4.18	EUR	health	wellness	\N	t
11509	db	2015-04-07	2015-04-07			-17.14	EUR	free time	going out	\N	t
11543	db	2015-04-08	2015-04-08			1000.00	EUR	work and training	salary	\N	t
11551	db	2015-04-09	2015-04-09			-8.34	EUR	living	food	\N	t
11594	db	2015-04-10	2015-04-10			-17.01	EUR	living	pets	\N	t
11577	db	2015-04-10	2015-04-10			-2.57	EUR	free time	hobbies	\N	t
11603	db	2015-04-11	2015-04-11			-2.45	EUR	free time	sport	\N	t
11630	db	2015-04-12	2015-04-12			-1.19	EUR	living	food	\N	t
11629	db	2015-04-12	2015-04-12			-7.13	EUR	free time	entertainment	\N	t
11658	db	2015-04-13	2015-04-13			-0.91	EUR	living	food	\N	t
11657	db	2015-04-13	2015-04-13			-2.15	EUR	free time	going out	\N	t
11656	db	2015-04-13	2015-04-13			-14.11	EUR	mobility	gas	\N	t
11650	db	2015-04-13	2015-04-13			-20.00	EUR	other	cash	\N	t
11685	db	2015-04-14	2015-04-14			-7.83	EUR	health	wellness	\N	t
11684	db	2015-04-14	2015-04-14			-8.25	EUR	free time	going out	\N	t
11720	db	2015-04-15	2015-04-15			-26.85	EUR	living	household	\N	t
11726	db	2015-04-16	2015-04-16			-4.44	EUR	living	food	\N	t
11752	db	2015-04-17	2015-04-17			-1.38	EUR	free time	hobbies	\N	t
11778	db	2015-04-18	2015-04-18			-3.83	EUR	free time	sport	\N	t
11805	db	2015-04-19	2015-04-19			-4.16	EUR	living	food	\N	t
11804	db	2015-04-19	2015-04-19			-1.30	EUR	free time	entertainment	\N	t
11847	db	2015-04-20	2015-04-20			-51.26	EUR	free time	gadgets	\N	t
11846	db	2015-04-20	2015-04-20			-39.73	EUR	living	clothes	\N	t
11833	db	2015-04-20	2015-04-20			-17.60	EUR	living	food	\N	t
11832	db	2015-04-20	2015-04-20			-17.68	EUR	free time	going out	\N	t
11831	db	2015-04-20	2015-04-20			-19.53	EUR	mobility	gas	\N	t
11825	db	2015-04-20	2015-04-20			-20.00	EUR	other	cash	\N	t
11860	db	2015-04-21	2015-04-21			-5.58	EUR	health	wellness	\N	t
11859	db	2015-04-21	2015-04-21			-15.34	EUR	free time	going out	\N	t
11901	db	2015-04-23	2015-04-23			-2.68	EUR	living	food	\N	t
11927	db	2015-04-24	2015-04-24			-5.33	EUR	free time	hobbies	\N	t
11953	db	2015-04-25	2015-04-25			-1.13	EUR	free time	sport	\N	t
11980	db	2015-04-26	2015-04-26			-5.81	EUR	living	food	\N	t
11979	db	2015-04-26	2015-04-26			-5.63	EUR	free time	entertainment	\N	t
12008	db	2015-04-27	2015-04-27			-12.12	EUR	living	food	\N	t
12007	db	2015-04-27	2015-04-27			-15.52	EUR	free time	going out	\N	t
12006	db	2015-04-27	2015-04-27			-4.72	EUR	mobility	gas	\N	t
12000	db	2015-04-27	2015-04-27			-20.00	EUR	other	cash	\N	t
12035	db	2015-04-28	2015-04-28			-8.75	EUR	health	wellness	\N	t
12034	db	2015-04-28	2015-04-28			-18.15	EUR	free time	going out	\N	t
12076	db	2015-04-30	2015-04-30			-4.51	EUR	living	food	\N	t
12111	db	2015-05-01	2015-05-01			-10.00	EUR	house	phone	\N	t
12102	db	2015-05-01	2015-05-01			-6.22	EUR	free time	hobbies	\N	t
12137	db	2015-05-02	2015-05-02			-10.00	EUR	house	electricity	\N	t
12128	db	2015-05-02	2015-05-02			-1.72	EUR	free time	sport	\N	t
12163	db	2015-05-03	2015-05-03			-10.00	EUR	house	internet	\N	t
12155	db	2015-05-03	2015-05-03			-4.84	EUR	living	food	\N	t
12154	db	2015-05-03	2015-05-03			-1.08	EUR	free time	entertainment	\N	t
12189	db	2015-05-04	2015-05-04			-250.00	EUR	house	rent	\N	t
12183	db	2015-05-04	2015-05-04			-3.27	EUR	living	food	\N	t
12182	db	2015-05-04	2015-05-04			-16.73	EUR	free time	going out	\N	t
12181	db	2015-05-04	2015-05-04			-18.48	EUR	mobility	gas	\N	t
12175	db	2015-05-04	2015-05-04			-20.00	EUR	other	cash	\N	t
12215	db	2015-05-05	2015-05-05			-10.00	EUR	finance	costs and fees	\N	t
12210	db	2015-05-05	2015-05-05			-10.33	EUR	health	wellness	\N	t
12209	db	2015-05-05	2015-05-05			-18.42	EUR	free time	going out	\N	t
12241	db	2015-05-06	2015-05-06			-50.00	EUR	finance	insurance	\N	t
12267	db	2015-05-07	2015-05-07			-35.98	EUR	health	doctor visits	\N	t
12251	db	2015-05-07	2015-05-07			-2.65	EUR	living	food	\N	t
12293	db	2015-05-08	2015-05-08			1000.00	EUR	work and training	salary	\N	t
12277	db	2015-05-08	2015-05-08			-8.66	EUR	free time	hobbies	\N	t
12303	db	2015-05-09	2015-05-09			-3.02	EUR	free time	sport	\N	t
12344	db	2015-05-10	2015-05-10			-20.21	EUR	living	pets	\N	t
12330	db	2015-05-10	2015-05-10			-8.94	EUR	living	food	\N	t
12329	db	2015-05-10	2015-05-10			-6.08	EUR	free time	entertainment	\N	t
12358	db	2015-05-11	2015-05-11			-0.33	EUR	living	food	\N	t
12357	db	2015-05-11	2015-05-11			-10.73	EUR	free time	going out	\N	t
12356	db	2015-05-11	2015-05-11			-6.65	EUR	mobility	gas	\N	t
12350	db	2015-05-11	2015-05-11			-20.00	EUR	other	cash	\N	t
12385	db	2015-05-12	2015-05-12			-17.15	EUR	health	wellness	\N	t
12384	db	2015-05-12	2015-05-12			-11.62	EUR	free time	going out	\N	t
12426	db	2015-05-14	2015-05-14			-1.63	EUR	living	food	\N	t
12470	db	2015-05-15	2015-05-15			-76.77	EUR	living	household	\N	t
12452	db	2015-05-15	2015-05-15			-0.02	EUR	free time	hobbies	\N	t
12478	db	2015-05-16	2015-05-16			-8.62	EUR	free time	sport	\N	t
12505	db	2015-05-17	2015-05-17			-9.58	EUR	living	food	\N	t
12504	db	2015-05-17	2015-05-17			-3.94	EUR	free time	entertainment	\N	t
12533	db	2015-05-18	2015-05-18			-15.59	EUR	living	food	\N	t
12532	db	2015-05-18	2015-05-18			-8.72	EUR	free time	going out	\N	t
12531	db	2015-05-18	2015-05-18			-1.66	EUR	mobility	gas	\N	t
12525	db	2015-05-18	2015-05-18			-20.00	EUR	other	cash	\N	t
12560	db	2015-05-19	2015-05-19			-7.52	EUR	health	wellness	\N	t
12559	db	2015-05-19	2015-05-19			-6.36	EUR	free time	going out	\N	t
12597	db	2015-05-20	2015-05-20			-52.42	EUR	free time	gadgets	\N	t
12596	db	2015-05-20	2015-05-20			-46.57	EUR	living	clothes	\N	t
12601	db	2015-05-21	2015-05-21			-3.06	EUR	living	food	\N	t
12627	db	2015-05-22	2015-05-22			-6.21	EUR	free time	hobbies	\N	t
12653	db	2015-05-23	2015-05-23			-9.99	EUR	free time	sport	\N	t
12680	db	2015-05-24	2015-05-24			-3.28	EUR	living	food	\N	t
12679	db	2015-05-24	2015-05-24			-9.84	EUR	free time	entertainment	\N	t
12708	db	2015-05-25	2015-05-25			-17.08	EUR	living	food	\N	t
12707	db	2015-05-25	2015-05-25			-19.60	EUR	free time	going out	\N	t
12706	db	2015-05-25	2015-05-25			-16.39	EUR	mobility	gas	\N	t
12700	db	2015-05-25	2015-05-25			-20.00	EUR	other	cash	\N	t
12735	db	2015-05-26	2015-05-26			-18.44	EUR	health	wellness	\N	t
12734	db	2015-05-26	2015-05-26			-0.57	EUR	free time	going out	\N	t
12776	db	2015-05-28	2015-05-28			-8.09	EUR	living	food	\N	t
12802	db	2015-05-29	2015-05-29			-0.46	EUR	free time	hobbies	\N	t
12828	db	2015-05-30	2015-05-30			-6.91	EUR	free time	sport	\N	t
12855	db	2015-05-31	2015-05-31			-9.30	EUR	living	food	\N	t
12854	db	2015-05-31	2015-05-31			-3.11	EUR	free time	entertainment	\N	t
12886	db	2015-06-01	2015-06-01			-10.00	EUR	house	phone	\N	t
12883	db	2015-06-01	2015-06-01			-12.33	EUR	living	food	\N	t
12882	db	2015-06-01	2015-06-01			-15.75	EUR	free time	going out	\N	t
12881	db	2015-06-01	2015-06-01			-7.77	EUR	mobility	gas	\N	t
12875	db	2015-06-01	2015-06-01			-20.00	EUR	other	cash	\N	t
12912	db	2015-06-02	2015-06-02			-10.00	EUR	house	electricity	\N	t
12910	db	2015-06-02	2015-06-02			-18.45	EUR	health	wellness	\N	t
12909	db	2015-06-02	2015-06-02			-14.86	EUR	free time	going out	\N	t
12938	db	2015-06-03	2015-06-03			-10.00	EUR	house	internet	\N	t
12964	db	2015-06-04	2015-06-04			-250.00	EUR	house	rent	\N	t
12951	db	2015-06-04	2015-06-04			-7.29	EUR	living	food	\N	t
12990	db	2015-06-05	2015-06-05			-10.00	EUR	finance	costs and fees	\N	t
12977	db	2015-06-05	2015-06-05			-5.23	EUR	free time	hobbies	\N	t
13016	db	2015-06-06	2015-06-06			-50.00	EUR	finance	insurance	\N	t
13003	db	2015-06-06	2015-06-06			-0.86	EUR	free time	sport	\N	t
13042	db	2015-06-07	2015-06-07			-69.40	EUR	health	doctor visits	\N	t
13030	db	2015-06-07	2015-06-07			-2.93	EUR	living	food	\N	t
13029	db	2015-06-07	2015-06-07			-0.29	EUR	free time	entertainment	\N	t
13068	db	2015-06-08	2015-06-08			1000.00	EUR	work and training	salary	\N	t
13058	db	2015-06-08	2015-06-08			-15.60	EUR	living	food	\N	t
13057	db	2015-06-08	2015-06-08			-14.99	EUR	free time	going out	\N	t
13056	db	2015-06-08	2015-06-08			-6.36	EUR	mobility	gas	\N	t
13050	db	2015-06-08	2015-06-08			-20.00	EUR	other	cash	\N	t
13085	db	2015-06-09	2015-06-09			-9.91	EUR	health	wellness	\N	t
13084	db	2015-06-09	2015-06-09			-17.71	EUR	free time	going out	\N	t
13119	db	2015-06-10	2015-06-10			-39.97	EUR	living	pets	\N	t
13126	db	2015-06-11	2015-06-11			-6.87	EUR	living	food	\N	t
13152	db	2015-06-12	2015-06-12			-5.52	EUR	free time	hobbies	\N	t
13178	db	2015-06-13	2015-06-13			-2.52	EUR	free time	sport	\N	t
13205	db	2015-06-14	2015-06-14			-5.57	EUR	living	food	\N	t
13204	db	2015-06-14	2015-06-14			-2.65	EUR	free time	entertainment	\N	t
13245	db	2015-06-15	2015-06-15			-58.38	EUR	living	household	\N	t
13233	db	2015-06-15	2015-06-15			-2.72	EUR	living	food	\N	t
13232	db	2015-06-15	2015-06-15			-17.78	EUR	free time	going out	\N	t
13231	db	2015-06-15	2015-06-15			-0.54	EUR	mobility	gas	\N	t
13225	db	2015-06-15	2015-06-15			-20.00	EUR	other	cash	\N	t
13260	db	2015-06-16	2015-06-16			-13.12	EUR	health	wellness	\N	t
13259	db	2015-06-16	2015-06-16			-8.57	EUR	free time	going out	\N	t
13301	db	2015-06-18	2015-06-18			-7.60	EUR	living	food	\N	t
13327	db	2015-06-19	2015-06-19			-9.08	EUR	free time	hobbies	\N	t
13372	db	2015-06-20	2015-06-20			-67.92	EUR	free time	gadgets	\N	t
13371	db	2015-06-20	2015-06-20			-27.79	EUR	living	clothes	\N	t
13353	db	2015-06-20	2015-06-20			-9.68	EUR	free time	sport	\N	t
13380	db	2015-06-21	2015-06-21			-2.85	EUR	living	food	\N	t
13379	db	2015-06-21	2015-06-21			-7.98	EUR	free time	entertainment	\N	t
13408	db	2015-06-22	2015-06-22			-12.56	EUR	living	food	\N	t
13407	db	2015-06-22	2015-06-22			-8.62	EUR	free time	going out	\N	t
13406	db	2015-06-22	2015-06-22			-3.52	EUR	mobility	gas	\N	t
13400	db	2015-06-22	2015-06-22			-20.00	EUR	other	cash	\N	t
13435	db	2015-06-23	2015-06-23			-6.37	EUR	health	wellness	\N	t
13434	db	2015-06-23	2015-06-23			-15.02	EUR	free time	going out	\N	t
13476	db	2015-06-25	2015-06-25			-8.94	EUR	living	food	\N	t
13502	db	2015-06-26	2015-06-26			-9.77	EUR	free time	hobbies	\N	t
13528	db	2015-06-27	2015-06-27			-4.16	EUR	free time	sport	\N	t
13555	db	2015-06-28	2015-06-28			-2.44	EUR	living	food	\N	t
13554	db	2015-06-28	2015-06-28			-6.79	EUR	free time	entertainment	\N	t
13583	db	2015-06-29	2015-06-29			-3.50	EUR	living	food	\N	t
13582	db	2015-06-29	2015-06-29			-8.69	EUR	free time	going out	\N	t
13581	db	2015-06-29	2015-06-29			-4.12	EUR	mobility	gas	\N	t
13575	db	2015-06-29	2015-06-29			-20.00	EUR	other	cash	\N	t
13623	db	2015-06-30	2015-06-30			-178.92	EUR	free time	travel	\N	t
13610	db	2015-06-30	2015-06-30			-15.03	EUR	health	wellness	\N	t
13609	db	2015-06-30	2015-06-30			-3.33	EUR	free time	going out	\N	t
13636	db	2015-07-01	2015-07-01			-10.00	EUR	house	phone	\N	t
13662	db	2015-07-02	2015-07-02			-10.00	EUR	house	electricity	\N	t
13651	db	2015-07-02	2015-07-02			-3.00	EUR	living	food	\N	t
13688	db	2015-07-03	2015-07-03			-10.00	EUR	house	internet	\N	t
13677	db	2015-07-03	2015-07-03			-6.66	EUR	free time	hobbies	\N	t
13714	db	2015-07-04	2015-07-04			-250.00	EUR	house	rent	\N	t
13703	db	2015-07-04	2015-07-04			-6.62	EUR	free time	sport	\N	t
13740	db	2015-07-05	2015-07-05			-10.00	EUR	finance	costs and fees	\N	t
13730	db	2015-07-05	2015-07-05			-7.83	EUR	living	food	\N	t
13729	db	2015-07-05	2015-07-05			-6.14	EUR	free time	entertainment	\N	t
13766	db	2015-07-06	2015-07-06			-50.00	EUR	finance	insurance	\N	t
13758	db	2015-07-06	2015-07-06			-17.88	EUR	living	food	\N	t
13757	db	2015-07-06	2015-07-06			-1.76	EUR	free time	going out	\N	t
13756	db	2015-07-06	2015-07-06			-0.62	EUR	mobility	gas	\N	t
13750	db	2015-07-06	2015-07-06			-20.00	EUR	other	cash	\N	t
13792	db	2015-07-07	2015-07-07			-86.04	EUR	health	doctor visits	\N	t
13785	db	2015-07-07	2015-07-07			-17.86	EUR	health	wellness	\N	t
13784	db	2015-07-07	2015-07-07			-19.04	EUR	free time	going out	\N	t
13818	db	2015-07-08	2015-07-08			1000.00	EUR	work and training	salary	\N	t
13826	db	2015-07-09	2015-07-09			-9.12	EUR	living	food	\N	t
13869	db	2015-07-10	2015-07-10			-72.62	EUR	living	pets	\N	t
13852	db	2015-07-10	2015-07-10			-7.73	EUR	free time	hobbies	\N	t
13878	db	2015-07-11	2015-07-11			-8.97	EUR	free time	sport	\N	t
13905	db	2015-07-12	2015-07-12			-6.12	EUR	living	food	\N	t
13904	db	2015-07-12	2015-07-12			-1.90	EUR	free time	entertainment	\N	t
13933	db	2015-07-13	2015-07-13			-2.00	EUR	living	food	\N	t
13932	db	2015-07-13	2015-07-13			-19.10	EUR	free time	going out	\N	t
13931	db	2015-07-13	2015-07-13			-8.51	EUR	mobility	gas	\N	t
13925	db	2015-07-13	2015-07-13			-20.00	EUR	other	cash	\N	t
13960	db	2015-07-14	2015-07-14			-2.28	EUR	health	wellness	\N	t
13959	db	2015-07-14	2015-07-14			-9.84	EUR	free time	going out	\N	t
13995	db	2015-07-15	2015-07-15			-13.36	EUR	living	household	\N	t
14001	db	2015-07-16	2015-07-16			-3.86	EUR	living	food	\N	t
14027	db	2015-07-17	2015-07-17			-9.74	EUR	free time	hobbies	\N	t
14053	db	2015-07-18	2015-07-18			-1.06	EUR	free time	sport	\N	t
14080	db	2015-07-19	2015-07-19			-7.86	EUR	living	food	\N	t
14079	db	2015-07-19	2015-07-19			-8.44	EUR	free time	entertainment	\N	t
14122	db	2015-07-20	2015-07-20			-24.28	EUR	free time	gadgets	\N	t
14121	db	2015-07-20	2015-07-20			-13.83	EUR	living	clothes	\N	t
14108	db	2015-07-20	2015-07-20			-5.89	EUR	living	food	\N	t
14107	db	2015-07-20	2015-07-20			-13.85	EUR	free time	going out	\N	t
14106	db	2015-07-20	2015-07-20			-16.41	EUR	mobility	gas	\N	t
14100	db	2015-07-20	2015-07-20			-20.00	EUR	other	cash	\N	t
14135	db	2015-07-21	2015-07-21			-15.90	EUR	health	wellness	\N	t
14134	db	2015-07-21	2015-07-21			-19.67	EUR	free time	going out	\N	t
14176	db	2015-07-23	2015-07-23			-8.40	EUR	living	food	\N	t
14202	db	2015-07-24	2015-07-24			-3.28	EUR	free time	hobbies	\N	t
14228	db	2015-07-25	2015-07-25			-2.18	EUR	free time	sport	\N	t
14255	db	2015-07-26	2015-07-26			-1.73	EUR	living	food	\N	t
14254	db	2015-07-26	2015-07-26			-3.49	EUR	free time	entertainment	\N	t
14283	db	2015-07-27	2015-07-27			-12.64	EUR	living	food	\N	t
14282	db	2015-07-27	2015-07-27			-12.52	EUR	free time	going out	\N	t
14281	db	2015-07-27	2015-07-27			-11.42	EUR	mobility	gas	\N	t
14275	db	2015-07-27	2015-07-27			-20.00	EUR	other	cash	\N	t
14310	db	2015-07-28	2015-07-28			-9.34	EUR	health	wellness	\N	t
14309	db	2015-07-28	2015-07-28			-19.61	EUR	free time	going out	\N	t
14351	db	2015-07-30	2015-07-30			-8.23	EUR	living	food	\N	t
14377	db	2015-07-31	2015-07-31			-3.30	EUR	free time	hobbies	\N	t
14411	db	2015-08-01	2015-08-01			-10.00	EUR	house	phone	\N	t
14403	db	2015-08-01	2015-08-01			-1.57	EUR	free time	sport	\N	t
14437	db	2015-08-02	2015-08-02			-10.00	EUR	house	electricity	\N	t
14430	db	2015-08-02	2015-08-02			-7.29	EUR	living	food	\N	t
14429	db	2015-08-02	2015-08-02			-1.93	EUR	free time	entertainment	\N	t
14463	db	2015-08-03	2015-08-03			-10.00	EUR	house	internet	\N	t
14458	db	2015-08-03	2015-08-03			-15.26	EUR	living	food	\N	t
14457	db	2015-08-03	2015-08-03			-4.21	EUR	free time	going out	\N	t
14456	db	2015-08-03	2015-08-03			-2.27	EUR	mobility	gas	\N	t
14450	db	2015-08-03	2015-08-03			-20.00	EUR	other	cash	\N	t
14489	db	2015-08-04	2015-08-04			-250.00	EUR	house	rent	\N	t
14485	db	2015-08-04	2015-08-04			-13.12	EUR	health	wellness	\N	t
14484	db	2015-08-04	2015-08-04			-18.46	EUR	free time	going out	\N	t
14515	db	2015-08-05	2015-08-05			-10.00	EUR	finance	costs and fees	\N	t
14541	db	2015-08-06	2015-08-06			-50.00	EUR	finance	insurance	\N	t
14526	db	2015-08-06	2015-08-06			-4.18	EUR	living	food	\N	t
14567	db	2015-08-07	2015-08-07			-14.31	EUR	health	doctor visits	\N	t
14552	db	2015-08-07	2015-08-07			-9.74	EUR	free time	hobbies	\N	t
14593	db	2015-08-08	2015-08-08			1000.00	EUR	work and training	salary	\N	t
14578	db	2015-08-08	2015-08-08			-4.20	EUR	free time	sport	\N	t
14605	db	2015-08-09	2015-08-09			-2.12	EUR	living	food	\N	t
14604	db	2015-08-09	2015-08-09			-0.07	EUR	free time	entertainment	\N	t
14644	db	2015-08-10	2015-08-10			-5.63	EUR	living	pets	\N	t
14633	db	2015-08-10	2015-08-10			-16.67	EUR	living	food	\N	t
14632	db	2015-08-10	2015-08-10			-8.55	EUR	free time	going out	\N	t
14631	db	2015-08-10	2015-08-10			-7.77	EUR	mobility	gas	\N	t
14625	db	2015-08-10	2015-08-10			-20.00	EUR	other	cash	\N	t
14660	db	2015-08-11	2015-08-11			-17.49	EUR	health	wellness	\N	t
14659	db	2015-08-11	2015-08-11			-13.72	EUR	free time	going out	\N	t
14701	db	2015-08-13	2015-08-13			-4.61	EUR	living	food	\N	t
14727	db	2015-08-14	2015-08-14			-3.30	EUR	free time	hobbies	\N	t
14770	db	2015-08-15	2015-08-15			-16.97	EUR	living	household	\N	t
14753	db	2015-08-15	2015-08-15			-1.46	EUR	free time	sport	\N	t
14780	db	2015-08-16	2015-08-16			-0.65	EUR	living	food	\N	t
14779	db	2015-08-16	2015-08-16			-4.33	EUR	free time	entertainment	\N	t
14808	db	2015-08-17	2015-08-17			-15.64	EUR	living	food	\N	t
14807	db	2015-08-17	2015-08-17			-6.20	EUR	free time	going out	\N	t
14806	db	2015-08-17	2015-08-17			-6.86	EUR	mobility	gas	\N	t
14800	db	2015-08-17	2015-08-17			-20.00	EUR	other	cash	\N	t
14835	db	2015-08-18	2015-08-18			-8.93	EUR	health	wellness	\N	t
14834	db	2015-08-18	2015-08-18			-11.74	EUR	free time	going out	\N	t
14897	db	2015-08-20	2015-08-20			-38.09	EUR	free time	gadgets	\N	t
14896	db	2015-08-20	2015-08-20			-40.81	EUR	living	clothes	\N	t
14876	db	2015-08-20	2015-08-20			-3.92	EUR	living	food	\N	t
14902	db	2015-08-21	2015-08-21			-7.30	EUR	free time	hobbies	\N	t
14928	db	2015-08-22	2015-08-22			-7.06	EUR	free time	sport	\N	t
14955	db	2015-08-23	2015-08-23			-1.46	EUR	living	food	\N	t
14954	db	2015-08-23	2015-08-23			-8.47	EUR	free time	entertainment	\N	t
14983	db	2015-08-24	2015-08-24			-11.77	EUR	living	food	\N	t
14982	db	2015-08-24	2015-08-24			-6.45	EUR	free time	going out	\N	t
14981	db	2015-08-24	2015-08-24			-6.00	EUR	mobility	gas	\N	t
14975	db	2015-08-24	2015-08-24			-20.00	EUR	other	cash	\N	t
15010	db	2015-08-25	2015-08-25			-18.42	EUR	health	wellness	\N	t
15009	db	2015-08-25	2015-08-25			-6.03	EUR	free time	going out	\N	t
15051	db	2015-08-27	2015-08-27			-0.06	EUR	living	food	\N	t
15077	db	2015-08-28	2015-08-28			-7.16	EUR	free time	hobbies	\N	t
15103	db	2015-08-29	2015-08-29			-1.48	EUR	free time	sport	\N	t
15130	db	2015-08-30	2015-08-30			-8.49	EUR	living	food	\N	t
15129	db	2015-08-30	2015-08-30			-7.92	EUR	free time	entertainment	\N	t
15158	db	2015-08-31	2015-08-31			-0.33	EUR	living	food	\N	t
15157	db	2015-08-31	2015-08-31			-7.98	EUR	free time	going out	\N	t
15156	db	2015-08-31	2015-08-31			-15.67	EUR	mobility	gas	\N	t
15150	db	2015-08-31	2015-08-31			-20.00	EUR	other	cash	\N	t
15186	db	2015-09-01	2015-09-01			-10.00	EUR	house	phone	\N	t
15185	db	2015-09-01	2015-09-01			-5.89	EUR	health	wellness	\N	t
15184	db	2015-09-01	2015-09-01			-5.22	EUR	free time	going out	\N	t
15212	db	2015-09-02	2015-09-02			-10.00	EUR	house	electricity	\N	t
15238	db	2015-09-03	2015-09-03			-10.00	EUR	house	internet	\N	t
15226	db	2015-09-03	2015-09-03			-9.82	EUR	living	food	\N	t
15264	db	2015-09-04	2015-09-04			-250.00	EUR	house	rent	\N	t
15252	db	2015-09-04	2015-09-04			-2.95	EUR	free time	hobbies	\N	t
15290	db	2015-09-05	2015-09-05			-10.00	EUR	finance	costs and fees	\N	t
15278	db	2015-09-05	2015-09-05			-9.15	EUR	free time	sport	\N	t
15316	db	2015-09-06	2015-09-06			-50.00	EUR	finance	insurance	\N	t
15305	db	2015-09-06	2015-09-06			-8.21	EUR	living	food	\N	t
15304	db	2015-09-06	2015-09-06			-3.71	EUR	free time	entertainment	\N	t
15342	db	2015-09-07	2015-09-07			-25.07	EUR	health	doctor visits	\N	t
15333	db	2015-09-07	2015-09-07			-11.37	EUR	living	food	\N	t
15332	db	2015-09-07	2015-09-07			-9.57	EUR	free time	going out	\N	t
15331	db	2015-09-07	2015-09-07			-1.00	EUR	mobility	gas	\N	t
15325	db	2015-09-07	2015-09-07			-20.00	EUR	other	cash	\N	t
15368	db	2015-09-08	2015-09-08			1000.00	EUR	work and training	salary	\N	t
15360	db	2015-09-08	2015-09-08			-6.30	EUR	health	wellness	\N	t
15359	db	2015-09-08	2015-09-08			-16.02	EUR	free time	going out	\N	t
15419	db	2015-09-10	2015-09-10			-32.26	EUR	living	pets	\N	t
15401	db	2015-09-10	2015-09-10			-6.03	EUR	living	food	\N	t
15427	db	2015-09-11	2015-09-11			-1.15	EUR	free time	hobbies	\N	t
15453	db	2015-09-12	2015-09-12			-8.32	EUR	free time	sport	\N	t
15480	db	2015-09-13	2015-09-13			-3.90	EUR	living	food	\N	t
15479	db	2015-09-13	2015-09-13			-0.80	EUR	free time	entertainment	\N	t
15508	db	2015-09-14	2015-09-14			-1.61	EUR	living	food	\N	t
15507	db	2015-09-14	2015-09-14			-16.88	EUR	free time	going out	\N	t
15506	db	2015-09-14	2015-09-14			-17.16	EUR	mobility	gas	\N	t
15500	db	2015-09-14	2015-09-14			-20.00	EUR	other	cash	\N	t
15545	db	2015-09-15	2015-09-15			-10.54	EUR	living	household	\N	t
15535	db	2015-09-15	2015-09-15			-16.09	EUR	health	wellness	\N	t
15534	db	2015-09-15	2015-09-15			-4.28	EUR	free time	going out	\N	t
15576	db	2015-09-17	2015-09-17			-5.79	EUR	living	food	\N	t
15602	db	2015-09-18	2015-09-18			-1.45	EUR	free time	hobbies	\N	t
15628	db	2015-09-19	2015-09-19			-8.65	EUR	free time	sport	\N	t
15672	db	2015-09-20	2015-09-20			-27.94	EUR	free time	gadgets	\N	t
15671	db	2015-09-20	2015-09-20			-54.39	EUR	living	clothes	\N	t
15655	db	2015-09-20	2015-09-20			-2.29	EUR	living	food	\N	t
15654	db	2015-09-20	2015-09-20			-3.65	EUR	free time	entertainment	\N	t
15683	db	2015-09-21	2015-09-21			-7.43	EUR	living	food	\N	t
15682	db	2015-09-21	2015-09-21			-0.50	EUR	free time	going out	\N	t
15681	db	2015-09-21	2015-09-21			-13.70	EUR	mobility	gas	\N	t
15675	db	2015-09-21	2015-09-21			-20.00	EUR	other	cash	\N	t
15710	db	2015-09-22	2015-09-22			-11.26	EUR	health	wellness	\N	t
15709	db	2015-09-22	2015-09-22			-13.90	EUR	free time	going out	\N	t
15751	db	2015-09-24	2015-09-24			-6.78	EUR	living	food	\N	t
15777	db	2015-09-25	2015-09-25			-4.78	EUR	free time	hobbies	\N	t
15803	db	2015-09-26	2015-09-26			-0.45	EUR	free time	sport	\N	t
15830	db	2015-09-27	2015-09-27			-3.58	EUR	living	food	\N	t
15829	db	2015-09-27	2015-09-27			-9.54	EUR	free time	entertainment	\N	t
15858	db	2015-09-28	2015-09-28			-8.41	EUR	living	food	\N	t
15857	db	2015-09-28	2015-09-28			-18.03	EUR	free time	going out	\N	t
15856	db	2015-09-28	2015-09-28			-17.10	EUR	mobility	gas	\N	t
15850	db	2015-09-28	2015-09-28			-20.00	EUR	other	cash	\N	t
15885	db	2015-09-29	2015-09-29			-10.51	EUR	health	wellness	\N	t
15884	db	2015-09-29	2015-09-29			-11.86	EUR	free time	going out	\N	t
15936	db	2015-10-01	2015-10-01			-10.00	EUR	house	phone	\N	t
15926	db	2015-10-01	2015-10-01			-8.49	EUR	living	food	\N	t
15962	db	2015-10-02	2015-10-02			-10.00	EUR	house	electricity	\N	t
15952	db	2015-10-02	2015-10-02			-6.47	EUR	free time	hobbies	\N	t
15988	db	2015-10-03	2015-10-03			-10.00	EUR	house	internet	\N	t
15978	db	2015-10-03	2015-10-03			-7.21	EUR	free time	sport	\N	t
16014	db	2015-10-04	2015-10-04			-250.00	EUR	house	rent	\N	t
16005	db	2015-10-04	2015-10-04			-9.81	EUR	living	food	\N	t
16004	db	2015-10-04	2015-10-04			-1.10	EUR	free time	entertainment	\N	t
16040	db	2015-10-05	2015-10-05			-10.00	EUR	finance	costs and fees	\N	t
16033	db	2015-10-05	2015-10-05			-12.89	EUR	living	food	\N	t
16032	db	2015-10-05	2015-10-05			-5.44	EUR	free time	going out	\N	t
16031	db	2015-10-05	2015-10-05			-13.06	EUR	mobility	gas	\N	t
16025	db	2015-10-05	2015-10-05			-20.00	EUR	other	cash	\N	t
16066	db	2015-10-06	2015-10-06			-50.00	EUR	finance	insurance	\N	t
16060	db	2015-10-06	2015-10-06			-2.99	EUR	health	wellness	\N	t
16059	db	2015-10-06	2015-10-06			-5.08	EUR	free time	going out	\N	t
16092	db	2015-10-07	2015-10-07			-5.74	EUR	health	doctor visits	\N	t
16118	db	2015-10-08	2015-10-08			1000.00	EUR	work and training	salary	\N	t
16101	db	2015-10-08	2015-10-08			-3.73	EUR	living	food	\N	t
16127	db	2015-10-09	2015-10-09			-4.47	EUR	free time	hobbies	\N	t
16169	db	2015-10-10	2015-10-10			-43.14	EUR	living	pets	\N	t
16153	db	2015-10-10	2015-10-10			-6.57	EUR	free time	sport	\N	t
16180	db	2015-10-11	2015-10-11			-8.00	EUR	living	food	\N	t
16179	db	2015-10-11	2015-10-11			-7.44	EUR	free time	entertainment	\N	t
16208	db	2015-10-12	2015-10-12			-4.74	EUR	living	food	\N	t
16207	db	2015-10-12	2015-10-12			-5.25	EUR	free time	going out	\N	t
16206	db	2015-10-12	2015-10-12			-8.46	EUR	mobility	gas	\N	t
16200	db	2015-10-12	2015-10-12			-20.00	EUR	other	cash	\N	t
16235	db	2015-10-13	2015-10-13			-14.36	EUR	health	wellness	\N	t
16234	db	2015-10-13	2015-10-13			-13.64	EUR	free time	going out	\N	t
16295	db	2015-10-15	2015-10-15			-46.68	EUR	living	household	\N	t
16276	db	2015-10-15	2015-10-15			-7.55	EUR	living	food	\N	t
16302	db	2015-10-16	2015-10-16			-8.36	EUR	free time	hobbies	\N	t
16328	db	2015-10-17	2015-10-17			-7.76	EUR	free time	sport	\N	t
16355	db	2015-10-18	2015-10-18			-6.42	EUR	living	food	\N	t
16354	db	2015-10-18	2015-10-18			-3.05	EUR	free time	entertainment	\N	t
16383	db	2015-10-19	2015-10-19			-9.49	EUR	living	food	\N	t
16382	db	2015-10-19	2015-10-19			-10.20	EUR	free time	going out	\N	t
16381	db	2015-10-19	2015-10-19			-16.67	EUR	mobility	gas	\N	t
16375	db	2015-10-19	2015-10-19			-20.00	EUR	other	cash	\N	t
16422	db	2015-10-20	2015-10-20			-0.66	EUR	free time	gadgets	\N	t
16421	db	2015-10-20	2015-10-20			-12.48	EUR	living	clothes	\N	t
16410	db	2015-10-20	2015-10-20			-8.17	EUR	health	wellness	\N	t
16409	db	2015-10-20	2015-10-20			-9.53	EUR	free time	going out	\N	t
16451	db	2015-10-22	2015-10-22			-1.68	EUR	living	food	\N	t
16477	db	2015-10-23	2015-10-23			-2.11	EUR	free time	hobbies	\N	t
16503	db	2015-10-24	2015-10-24			-1.46	EUR	free time	sport	\N	t
16530	db	2015-10-25	2015-10-25			-4.84	EUR	living	food	\N	t
16529	db	2015-10-25	2015-10-25			-0.78	EUR	free time	entertainment	\N	t
16558	db	2015-10-26	2015-10-26			-8.14	EUR	living	food	\N	t
16557	db	2015-10-26	2015-10-26			-16.96	EUR	free time	going out	\N	t
16556	db	2015-10-26	2015-10-26			-7.36	EUR	mobility	gas	\N	t
16550	db	2015-10-26	2015-10-26			-20.00	EUR	other	cash	\N	t
16585	db	2015-10-27	2015-10-27			-19.00	EUR	health	wellness	\N	t
16584	db	2015-10-27	2015-10-27			-17.01	EUR	free time	going out	\N	t
16626	db	2015-10-29	2015-10-29			-3.08	EUR	living	food	\N	t
16652	db	2015-10-30	2015-10-30			-9.01	EUR	free time	hobbies	\N	t
16678	db	2015-10-31	2015-10-31			-9.59	EUR	free time	sport	\N	t
16711	db	2015-11-01	2015-11-01			-10.00	EUR	house	phone	\N	t
16705	db	2015-11-01	2015-11-01			-7.24	EUR	living	food	\N	t
16704	db	2015-11-01	2015-11-01			-0.75	EUR	free time	entertainment	\N	t
16737	db	2015-11-02	2015-11-02			-10.00	EUR	house	electricity	\N	t
16733	db	2015-11-02	2015-11-02			-18.28	EUR	living	food	\N	t
16732	db	2015-11-02	2015-11-02			-19.41	EUR	free time	going out	\N	t
16731	db	2015-11-02	2015-11-02			-17.13	EUR	mobility	gas	\N	t
16725	db	2015-11-02	2015-11-02			-20.00	EUR	other	cash	\N	t
16763	db	2015-11-03	2015-11-03			-10.00	EUR	house	internet	\N	t
16760	db	2015-11-03	2015-11-03			-13.58	EUR	health	wellness	\N	t
16759	db	2015-11-03	2015-11-03			-4.52	EUR	free time	going out	\N	t
16789	db	2015-11-04	2015-11-04			-250.00	EUR	house	rent	\N	t
16815	db	2015-11-05	2015-11-05			-10.00	EUR	finance	costs and fees	\N	t
16801	db	2015-11-05	2015-11-05			-5.07	EUR	living	food	\N	t
16841	db	2015-11-06	2015-11-06			-50.00	EUR	finance	insurance	\N	t
16827	db	2015-11-06	2015-11-06			-3.12	EUR	free time	hobbies	\N	t
16867	db	2015-11-07	2015-11-07			-32.53	EUR	health	doctor visits	\N	t
16853	db	2015-11-07	2015-11-07			-4.49	EUR	free time	sport	\N	t
16893	db	2015-11-08	2015-11-08			1000.00	EUR	work and training	salary	\N	t
16880	db	2015-11-08	2015-11-08			-0.78	EUR	living	food	\N	t
16879	db	2015-11-08	2015-11-08			-5.18	EUR	free time	entertainment	\N	t
16908	db	2015-11-09	2015-11-09			-13.96	EUR	living	food	\N	t
16907	db	2015-11-09	2015-11-09			-7.07	EUR	free time	going out	\N	t
16906	db	2015-11-09	2015-11-09			-10.24	EUR	mobility	gas	\N	t
16900	db	2015-11-09	2015-11-09			-20.00	EUR	other	cash	\N	t
16944	db	2015-11-10	2015-11-10			-43.32	EUR	living	pets	\N	t
16935	db	2015-11-10	2015-11-10			-5.44	EUR	health	wellness	\N	t
16934	db	2015-11-10	2015-11-10			-5.26	EUR	free time	going out	\N	t
16976	db	2015-11-12	2015-11-12			-3.00	EUR	living	food	\N	t
17002	db	2015-11-13	2015-11-13			-8.88	EUR	free time	hobbies	\N	t
17028	db	2015-11-14	2015-11-14			-1.39	EUR	free time	sport	\N	t
17070	db	2015-11-15	2015-11-15			-54.31	EUR	living	household	\N	t
17055	db	2015-11-15	2015-11-15			-1.18	EUR	living	food	\N	t
17054	db	2015-11-15	2015-11-15			-5.43	EUR	free time	entertainment	\N	t
17083	db	2015-11-16	2015-11-16			-17.78	EUR	living	food	\N	t
17082	db	2015-11-16	2015-11-16			-18.42	EUR	free time	going out	\N	t
17081	db	2015-11-16	2015-11-16			-6.32	EUR	mobility	gas	\N	t
17075	db	2015-11-16	2015-11-16			-20.00	EUR	other	cash	\N	t
17110	db	2015-11-17	2015-11-17			-1.36	EUR	health	wellness	\N	t
17109	db	2015-11-17	2015-11-17			-6.33	EUR	free time	going out	\N	t
17151	db	2015-11-19	2015-11-19			-2.23	EUR	living	food	\N	t
17197	db	2015-11-20	2015-11-20			-39.06	EUR	free time	gadgets	\N	t
17196	db	2015-11-20	2015-11-20			-46.95	EUR	living	clothes	\N	t
17177	db	2015-11-20	2015-11-20			-5.82	EUR	free time	hobbies	\N	t
17203	db	2015-11-21	2015-11-21			-4.52	EUR	free time	sport	\N	t
17230	db	2015-11-22	2015-11-22			-6.32	EUR	living	food	\N	t
17229	db	2015-11-22	2015-11-22			-8.74	EUR	free time	entertainment	\N	t
17258	db	2015-11-23	2015-11-23			-11.95	EUR	living	food	\N	t
17257	db	2015-11-23	2015-11-23			-8.40	EUR	free time	going out	\N	t
17256	db	2015-11-23	2015-11-23			-6.04	EUR	mobility	gas	\N	t
17250	db	2015-11-23	2015-11-23			-20.00	EUR	other	cash	\N	t
17285	db	2015-11-24	2015-11-24			-8.53	EUR	health	wellness	\N	t
17284	db	2015-11-24	2015-11-24			-3.17	EUR	free time	going out	\N	t
17326	db	2015-11-26	2015-11-26			-9.66	EUR	living	food	\N	t
17352	db	2015-11-27	2015-11-27			-1.21	EUR	free time	hobbies	\N	t
17378	db	2015-11-28	2015-11-28			-0.86	EUR	free time	sport	\N	t
17405	db	2015-11-29	2015-11-29			-9.78	EUR	living	food	\N	t
17404	db	2015-11-29	2015-11-29			-3.78	EUR	free time	entertainment	\N	t
17433	db	2015-11-30	2015-11-30			-2.27	EUR	living	food	\N	t
17432	db	2015-11-30	2015-11-30			-12.06	EUR	free time	going out	\N	t
17431	db	2015-11-30	2015-11-30			-8.22	EUR	mobility	gas	\N	t
17425	db	2015-11-30	2015-11-30			-20.00	EUR	other	cash	\N	t
17461	db	2015-12-01	2015-12-01			-10.00	EUR	house	phone	\N	t
17460	db	2015-12-01	2015-12-01			-0.01	EUR	health	wellness	\N	t
17459	db	2015-12-01	2015-12-01			-9.28	EUR	free time	going out	\N	t
17487	db	2015-12-02	2015-12-02			-10.00	EUR	house	electricity	\N	t
17513	db	2015-12-03	2015-12-03			-10.00	EUR	house	internet	\N	t
17501	db	2015-12-03	2015-12-03			-0.33	EUR	living	food	\N	t
17539	db	2015-12-04	2015-12-04			-250.00	EUR	house	rent	\N	t
17527	db	2015-12-04	2015-12-04			-5.81	EUR	free time	hobbies	\N	t
17565	db	2015-12-05	2015-12-05			-10.00	EUR	finance	costs and fees	\N	t
17553	db	2015-12-05	2015-12-05			-6.78	EUR	free time	sport	\N	t
17591	db	2015-12-06	2015-12-06			-50.00	EUR	finance	insurance	\N	t
17580	db	2015-12-06	2015-12-06			-1.96	EUR	living	food	\N	t
17579	db	2015-12-06	2015-12-06			-2.17	EUR	free time	entertainment	\N	t
17617	db	2015-12-07	2015-12-07			-21.22	EUR	health	doctor visits	\N	t
17608	db	2015-12-07	2015-12-07			-15.63	EUR	living	food	\N	t
17607	db	2015-12-07	2015-12-07			-8.58	EUR	free time	going out	\N	t
17606	db	2015-12-07	2015-12-07			-1.19	EUR	mobility	gas	\N	t
17600	db	2015-12-07	2015-12-07			-20.00	EUR	other	cash	\N	t
17643	db	2015-12-08	2015-12-08			1000.00	EUR	work and training	salary	\N	t
17635	db	2015-12-08	2015-12-08			-5.69	EUR	health	wellness	\N	t
17634	db	2015-12-08	2015-12-08			-7.54	EUR	free time	going out	\N	t
17694	db	2015-12-10	2015-12-10			-64.30	EUR	living	pets	\N	t
17676	db	2015-12-10	2015-12-10			-3.56	EUR	living	food	\N	t
17702	db	2015-12-11	2015-12-11			-1.92	EUR	free time	hobbies	\N	t
17728	db	2015-12-12	2015-12-12			-3.00	EUR	free time	sport	\N	t
17755	db	2015-12-13	2015-12-13			-1.75	EUR	living	food	\N	t
17754	db	2015-12-13	2015-12-13			-6.63	EUR	free time	entertainment	\N	t
17783	db	2015-12-14	2015-12-14			-12.02	EUR	living	food	\N	t
17782	db	2015-12-14	2015-12-14			-6.09	EUR	free time	going out	\N	t
17781	db	2015-12-14	2015-12-14			-17.28	EUR	mobility	gas	\N	t
17775	db	2015-12-14	2015-12-14			-20.00	EUR	other	cash	\N	t
17820	db	2015-12-15	2015-12-15			-42.16	EUR	living	household	\N	t
17810	db	2015-12-15	2015-12-15			-17.11	EUR	health	wellness	\N	t
17809	db	2015-12-15	2015-12-15			-10.61	EUR	free time	going out	\N	t
17851	db	2015-12-17	2015-12-17			-1.37	EUR	living	food	\N	t
17877	db	2015-12-18	2015-12-18			-1.01	EUR	free time	hobbies	\N	t
17903	db	2015-12-19	2015-12-19			-2.29	EUR	free time	sport	\N	t
17947	db	2015-12-20	2015-12-20			-44.62	EUR	free time	gadgets	\N	t
17946	db	2015-12-20	2015-12-20			-26.06	EUR	living	clothes	\N	t
17930	db	2015-12-20	2015-12-20			-8.42	EUR	living	food	\N	t
17929	db	2015-12-20	2015-12-20			-5.14	EUR	free time	entertainment	\N	t
17958	db	2015-12-21	2015-12-21			-9.84	EUR	living	food	\N	t
17957	db	2015-12-21	2015-12-21			-12.94	EUR	free time	going out	\N	t
17956	db	2015-12-21	2015-12-21			-17.98	EUR	mobility	gas	\N	t
17950	db	2015-12-21	2015-12-21			-20.00	EUR	other	cash	\N	t
17999	db	2015-12-22	2015-12-22			-152.83	EUR	free time	presents	\N	t
17985	db	2015-12-22	2015-12-22			-11.08	EUR	health	wellness	\N	t
17984	db	2015-12-22	2015-12-22			-10.08	EUR	free time	going out	\N	t
18026	db	2015-12-24	2015-12-24			-6.96	EUR	living	food	\N	t
18052	db	2015-12-25	2015-12-25			-3.62	EUR	free time	hobbies	\N	t
18078	db	2015-12-26	2015-12-26			-0.47	EUR	free time	sport	\N	t
18105	db	2015-12-27	2015-12-27			-4.81	EUR	living	food	\N	t
18104	db	2015-12-27	2015-12-27			-7.48	EUR	free time	entertainment	\N	t
18133	db	2015-12-28	2015-12-28			-7.15	EUR	living	food	\N	t
18132	db	2015-12-28	2015-12-28			-2.94	EUR	free time	going out	\N	t
18131	db	2015-12-28	2015-12-28			-2.67	EUR	mobility	gas	\N	t
18125	db	2015-12-28	2015-12-28			-20.00	EUR	other	cash	\N	t
18160	db	2015-12-29	2015-12-29			-1.28	EUR	health	wellness	\N	t
18159	db	2015-12-29	2015-12-29			-17.18	EUR	free time	going out	\N	t
18201	db	2015-12-31	2015-12-31			-3.17	EUR	living	food	\N	t
18236	db	2016-01-01	2016-01-01			-10.00	EUR	house	phone	\N	t
18227	db	2016-01-01	2016-01-01			-2.24	EUR	free time	hobbies	\N	t
\.
