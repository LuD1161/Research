.class public final Lcom/google/android/gms/internal/clearcut/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/K;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/D;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/K;->P([B)Lcom/google/android/gms/internal/clearcut/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/D;->a:Lcom/google/android/gms/internal/clearcut/K;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/clearcut/z;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/D;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/clearcut/y;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/D;->a:Lcom/google/android/gms/internal/clearcut/K;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/K;->s()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/clearcut/F;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/D;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/F;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/google/android/gms/internal/clearcut/K;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/D;->a:Lcom/google/android/gms/internal/clearcut/K;

    return-object v0
.end method
