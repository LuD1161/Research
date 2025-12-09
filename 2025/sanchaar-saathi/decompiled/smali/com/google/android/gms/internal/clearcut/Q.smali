.class public final Lcom/google/android/gms/internal/clearcut/Q;
.super Lcom/google/android/gms/internal/clearcut/P;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/P;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/U;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/clearcut/t1;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/internal/clearcut/S;->a:[I

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/U;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/U;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/P;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/U;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/U;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/U;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/P;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/U;)V

    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/P;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/U;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/U;->i()V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/clearcut/B0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
