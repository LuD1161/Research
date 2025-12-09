.class public abstract Lv1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;Lv1/f;)Lv1/g;
    .locals 1

    const-string v0, "Result must not be null"

    invoke-static {p0, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lw1/m;

    invoke-direct {v0, p1}, Lw1/m;-><init>(Lv1/f;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lv1/j;)V

    return-object v0
.end method
