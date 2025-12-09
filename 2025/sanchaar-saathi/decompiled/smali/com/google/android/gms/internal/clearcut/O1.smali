.class public final Lcom/google/android/gms/internal/clearcut/O1;
.super Lcom/google/android/gms/internal/clearcut/z1;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/clearcut/L1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/L1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/O1;->c:Lcom/google/android/gms/internal/clearcut/L1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/z1;-><init>(Lcom/google/android/gms/internal/clearcut/b1;)V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O1;->c:Lcom/google/android/gms/internal/clearcut/L1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lv1/j;)V

    return-void
.end method
