.class public final Lcom/google/android/gms/internal/vision/o$b;
.super Lcom/google/android/gms/internal/vision/N0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/v1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/o;->D()Lcom/google/android/gms/internal/vision/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/N0$b;-><init>(Lcom/google/android/gms/internal/vision/N0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/z;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final t(J)Lcom/google/android/gms/internal/vision/o$b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    check-cast v0, Lcom/google/android/gms/internal/vision/o;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/o;->y(Lcom/google/android/gms/internal/vision/o;J)V

    return-object p0
.end method

.method public final u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/vision/o$b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    check-cast v0, Lcom/google/android/gms/internal/vision/o;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/o;->z(Lcom/google/android/gms/internal/vision/o;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/o$b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    check-cast v0, Lcom/google/android/gms/internal/vision/o;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/o;->A(Lcom/google/android/gms/internal/vision/o;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w(J)Lcom/google/android/gms/internal/vision/o$b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    check-cast v0, Lcom/google/android/gms/internal/vision/o;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/o;->F(Lcom/google/android/gms/internal/vision/o;J)V

    return-object p0
.end method
