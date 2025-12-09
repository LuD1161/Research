.class public final Lcom/google/android/gms/internal/vision/r$a;
.super Lcom/google/android/gms/internal/vision/N0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/v1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/vision/r;->B()Lcom/google/android/gms/internal/vision/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/N0$b;-><init>(Lcom/google/android/gms/internal/vision/N0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/z;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final t(Lcom/google/android/gms/internal/vision/s;)Lcom/google/android/gms/internal/vision/r$a;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    check-cast v0, Lcom/google/android/gms/internal/vision/r;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/r;->x(Lcom/google/android/gms/internal/vision/r;Lcom/google/android/gms/internal/vision/s;)V

    return-object p0
.end method

.method public final u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/vision/r$a;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/N0$b;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->g:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0$b;->f:Lcom/google/android/gms/internal/vision/N0;

    check-cast v0, Lcom/google/android/gms/internal/vision/r;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/r;->y(Lcom/google/android/gms/internal/vision/r;Ljava/lang/Iterable;)V

    return-object p0
.end method
