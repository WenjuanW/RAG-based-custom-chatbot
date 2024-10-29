# RAG-based-custom-chatbot

The project is to use an RAG-based method to build a chatbot that can answer questions about recent events that the model did not train on. The model used here is ChatGPT 3.5.

For this custom chatbot project, I will use Wiki page about 2024 Summer Olympics and answer questions about 2024 Summer Olympics!

I will use GPT-3.5 as our chatbot-based model for answering questions. However, the information that GPT-3.5 was trained on includes data up to September 2021. This means it does not know of events, developments, or advancements that have occurred after that date. Consequently, any information or context that has emerged post-September 2021 will not be reflected in its responses.

To enable GPT-3.5 to answer questions for recent events such as 2024 Summer Olympics, we use the RAG-based AI systems which retrieve the relevant information from the context, input both the question and relevant information into the GPT-3.5 prompt and answer the question with the relevant information rather than depending only on the data GPT-3.5 trained on.

2024 Summer Olympics happened after September 2021, thus GPT-3.5 does not have information on these events which makes the dataset suitable for use as the input information for RAG. 

We could ask the following questions:

- Which city hosted 2024 Summer Olympics?
- When did the opening ceremony start?
- Which country had the most metals in 2024 Summer Olympics?
- Where was the closing ceremony held?
- How many gold medals Japan had?
