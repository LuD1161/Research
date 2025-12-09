.class public final Lw1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/g$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lw1/o;


# direct methods
.method public constructor <init>(Lw1/o;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p2, p0, Lw1/a0;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/a0;->b:Lw1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Lw1/a0;->b:Lw1/o;

    invoke-virtual {p1}, Lw1/o;->f()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lw1/a0;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
