FROM tensorflow/tfx:0.25.0
WORKDIR ./pipeline
COPY ./ ./
RUN pip install tensorflow_text==2.3.0 google-cloud-aiplatform requests_toolbelt==0.8.0 google-cloud-core google-cloud-storage
ENV PYTHONPATH="/pipeline:${PYTHONPATH}"