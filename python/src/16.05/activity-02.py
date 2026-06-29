import math
import os
import wave


def _pack_sample(sample, bits):
    if bits == 8:
        return bytes((sample,))
    if bits == 16:
        return sample.to_bytes(2, byteorder="little", signed=True)
    if bits == 24:
        return sample.to_bytes(3, byteorder="little", signed=True)
    raise ValueError("Unsupported bit depth")


def generate_sine(filename, frequency, duration_seconds, sample_rate, bits_per_sample):
    if bits_per_sample == 8:
        max_amplitude = 127
        offset = 128
    elif bits_per_sample == 16:
        max_amplitude = 32767
        offset = 0
    elif bits_per_sample == 24:
        max_amplitude = 8388607
        offset = 0
    else:
        raise ValueError("Unsupported bit depth")

    total_samples = int(duration_seconds * sample_rate)
    frames = bytearray()
    with wave.open(filename, "wb") as wav:
        wav.setnchannels(1)
        wav.setsampwidth(bits_per_sample // 8)
        wav.setframerate(sample_rate)

        for n in range(total_samples):
            t = n / sample_rate
            value = math.sin(2 * math.pi * frequency * t)
            sample = int(round(max_amplitude * value)) + offset
            frames.extend(_pack_sample(sample, bits_per_sample))

        wav.writeframes(frames)


def main():
    output_dir = os.path.join(os.path.dirname(__file__), "..", "output")
    os.makedirs(output_dir, exist_ok=True)

    generate_sine(
        os.path.join(output_dir, "voz.wav"),
        frequency=1000,
        duration_seconds=5,
        sample_rate=8000,
        bits_per_sample=8,
    )
    generate_sine(
        os.path.join(output_dir, "hifi.wav"),
        frequency=1000,
        duration_seconds=5,
        sample_rate=44100,
        bits_per_sample=16,
    )
    generate_sine(
        os.path.join(output_dir, "hiend.wav"),
        frequency=1000,
        duration_seconds=5,
        sample_rate=96000,
        bits_per_sample=24,
    )


if __name__ == "__main__":
    main()
