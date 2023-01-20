#!/usr/bin/env node
// https://www.twilio.com/blog/manipulate-notion-database-using-node-js
// 这个文章告诉我了怎么用nodejs和notion api来给文章增删改查
// https://github.com/sparksworld/Nodejs-for-ip 这个文章是让我得到了如何吧node添加到alfred中，在package.json中添加"type"="module"达成引入alfy插件的目的
import { Client } from '@notionhq/client'
import dontenv from 'dotenv'
// const dontenv = require('dotenv')
// const { Client } = require('@notionhq/client')
dontenv.config()

const notion = new Client({
  auth: process.env.NOTION_API_KEY
})
const databaseId = process.env.NOTION_DATABASE_ID
const argvs = process.argv

console.log(argvs[2])
// const date = new Date()

async function addToDatabase(databaseId, username, status) {
  try {
    const response = await notion.pages.create({
      parent: {
        database_id: databaseId
      },
      properties: {
        Word: {
          type: 'title',
          title: [
            {
              type: 'text',
              text: {
                content: username
              }
            }
          ]
        },
        Status: {
          type: 'checkbox',
          checkbox: status
        }
        // 'Date': { // Date is formatted as YYYY-MM-DD or null
        //     type: 'date',
        //     date: {
        //       "start": date.toISOString().split('T')[0]
        //     }
        // },
      }
    })
    console.log(response)
  } catch (error) {
    console.error(error.body)
  }
}

addToDatabase(databaseId, argvs[2], false)
