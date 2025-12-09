.class public final Lcom/google/android/gms/internal/vision/P1;
.super Lcom/google/android/gms/internal/vision/V1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/vision/O1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/O1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/P1;->f:Lcom/google/android/gms/internal/vision/O1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V1;-><init>(Lcom/google/android/gms/internal/vision/O1;Lcom/google/android/gms/internal/vision/N1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/O1;Lcom/google/android/gms/internal/vision/N1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/P1;-><init>(Lcom/google/android/gms/internal/vision/O1;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vision/Q1;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/P1;->f:Lcom/google/android/gms/internal/vision/O1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vision/Q1;-><init>(Lcom/google/android/gms/internal/vision/O1;Lcom/google/android/gms/internal/vision/N1;)V

    return-object v0
.end method
