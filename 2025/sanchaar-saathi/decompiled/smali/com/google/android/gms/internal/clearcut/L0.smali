.class public final Lcom/google/android/gms/internal/clearcut/L0;
.super Lv1/e;
.source "SourceFile"

# interfaces
.implements Lt1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lt1/a;->p:Lv1/a;

    new-instance v1, Lw1/a;

    invoke-direct {v1}, Lw1/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lv1/e;-><init>(Landroid/content/Context;Lv1/a;Lv1/a$d;Lw1/l;)V

    return-void
.end method

.method public static p(Landroid/content/Context;)Lt1/c;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/L0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/L0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lt1/f;)Lv1/g;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/L1;

    invoke-virtual {p0}, Lv1/e;->c()Lv1/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/clearcut/L1;-><init>(Lt1/f;Lv1/f;)V

    invoke-virtual {p0, v0}, Lv1/e;->f(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    return-object p1
.end method
