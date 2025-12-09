.class public final Lcom/google/android/gms/internal/vision/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/v0;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/p0;->b:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/v0;->d([B)Lcom/google/android/gms/internal/vision/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/p0;->a:Lcom/google/android/gms/internal/vision/v0;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/vision/f0;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/p0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/vision/g0;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/p0;->a:Lcom/google/android/gms/internal/vision/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/v0;->J()V

    new-instance v0, Lcom/google/android/gms/internal/vision/r0;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/p0;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/r0;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/vision/v0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/p0;->a:Lcom/google/android/gms/internal/vision/v0;

    return-object v0
.end method
