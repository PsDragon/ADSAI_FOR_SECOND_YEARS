import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt

def load_data():
    (x_train, y_train), (x_test, y_test) = tf.keras.datasets.mnist.load_data()

    x_train = x_train / 255.0
    x_test = x_test / 255.0

    return (x_train, y_train), (x_test, y_test)

def create_model():
    model = tf.keras.models.Sequential([
        tf.keras.layers.Flatten(input_shape=(28, 28)),
        tf.keras.layers.Dense(128, activation='relu'),
        tf.keras.layers.Dense(10, activation='softmax')
    ])

    model.compile(optimizer='adam',
                  loss='sparse_categorical_crossentropy',
                  metrics=['accuracy'])

    return model

def predict(model, x):
    probabilities = model.predict(x)
    predictions = np.argmax(probabilities, axis=1)
    return predictions

def plot_results(x, y_true, y_pred):
    fig, axes = plt.subplots(1, 5, figsize=(15, 6))
    axes = axes.ravel()

    for i in range(len(x)): # Corrected loop to iterate through the indices of the sample images
        axes[i].imshow(x[i], cmap='gray')
        axes[i].set_title(f"True: {y_true[i]} \nPredicted: {y_pred[i]}", fontsize=12)
        axes[i].axis('off')

    plt.subplots_adjust(hspace=0.5)
    plt.show()

def main():
    (x_train, y_train), (x_test, y_test) = load_data()

    model = create_model()

    model.fit(x_train, y_train, epochs=5, batch_size=32, validation_split=0.2)

    _, accuracy = model.evaluate(x_test, y_test)
    print(f"Test accuracy: {accuracy}")

    x_sample = x_test[:5]
    y_sample = y_test[:5]

    predictions = predict(model, x_sample)

    print("Sample predictions:", predictions)
    print("True labels:", y_sample)

    plot_results(x_sample, y_sample, predictions)

if __name__ == "__main__":
    main()
