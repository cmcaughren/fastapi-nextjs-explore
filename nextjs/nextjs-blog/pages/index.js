import Head from 'next/head';
import Layout, { siteTitle } from '../components/layout';
import utilStyles from '../styles/utils.module.css';
import { getSortedPostsData } from '../lib/posts';
import Link from 'next/link';
import Date from '../components/date';

import * as React from 'react';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import { CardActionArea } from '@mui/material';


export async function getStaticProps() {
  const allPostsData = getSortedPostsData();
  return {
    props: {
      allPostsData,
    },
  };
}

export default function Home({ allPostsData }) {
  return (
    <Layout home>
      <Head>
        <title>{siteTitle}</title>
      </Head>
      <section className={utilStyles.headingMd}>
        <p>
          This is a sample website built from{' '}
          <a href="https://nextjs.org/learn">the Next.js tutorial</a>.
          Below, key lessons from the tutorial are outlined for easy review.
        </p>
      </section>

      <section className={`${utilStyles.headingMd} ${utilStyles.padding1px}`}>
        <h2 className={utilStyles.headingLg}>Lessons</h2>
        <ul className={utilStyles.list}>
          {allPostsData.map(({ id, date, title, chapter }) => (
            <li className={utilStyles.listItem} key={id}>
              <Card>
                <CardActionArea href={`/posts/${id}`}>
                  <CardContent>
                    <Typography gutterBottom variant="h5" component="div">
                      {title}
                    </Typography>
                      {chapter}
                    <br />
                    <small className={utilStyles.lightText}>
                      <Date dateString={date} />
                    </small>
                  </CardContent>
                </CardActionArea>
              </Card>
            </li>
          ))}
        </ul>
      </section>
    </Layout>
  );
}