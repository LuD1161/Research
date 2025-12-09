.class public final Lcom/google/android/gms/internal/vision/f0;
.super Lcom/google/android/gms/internal/vision/h0;
.source "SourceFile"


# instance fields
.field public e:I

.field public final f:I

.field public final synthetic g:Lcom/google/android/gms/internal/vision/g0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/g0;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/f0;->g:Lcom/google/android/gms/internal/vision/g0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/h0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/vision/f0;->e:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/g0;->t()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/vision/f0;->f:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/vision/f0;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/f0;->f:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/vision/f0;->e:I

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/f0;->g:Lcom/google/android/gms/internal/vision/g0;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/g0;->B(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/vision/f0;->e:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/f0;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
