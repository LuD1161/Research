.class public abstract Lcom/google/android/gms/internal/clearcut/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/C0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j(Lcom/google/android/gms/internal/clearcut/B0;)Lcom/google/android/gms/internal/clearcut/C0;
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/D0;->h()Lcom/google/android/gms/internal/clearcut/B0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/p;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/q;->k(Lcom/google/android/gms/internal/clearcut/p;)Lcom/google/android/gms/internal/clearcut/q;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract k(Lcom/google/android/gms/internal/clearcut/p;)Lcom/google/android/gms/internal/clearcut/q;
.end method
