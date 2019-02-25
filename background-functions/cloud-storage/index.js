/**
 * Background Cloud Function to be triggered by Cloud Storage.
 *
 * @param {object} event the Cloud Functions event.
 * @param {function} callback the callback function.
 */
exports.helloGCS = (event, callback) => {
    const file = event.data;
    if (file.resourceState === 'not_exists') {
        console.log(`File ${file.name} deleted.`)
    } else if (file.metageneration === '1') {
        // metagenration attribute is updated on metadata changes.
        // value is 1 if file was newly created or overwritten
        console.log(`File ${file.name} uploaded`)
    } else {
        console.log(`File ${file.name} metadata updated.`)
    }
    callback(null, 'Cloud-Storage example has been executed!');
};
