.class public final Lcom/google/android/gms/internal/clearcut/d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/clearcut/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/c;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/d;->a:Lcom/google/android/gms/internal/clearcut/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/d;->a:Lcom/google/android/gms/internal/clearcut/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/c;->d()V

    iget-object p1, p0, Lcom/google/android/gms/internal/clearcut/d;->a:Lcom/google/android/gms/internal/clearcut/c;

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/c;->b(Lcom/google/android/gms/internal/clearcut/c;)V

    return-void
.end method
