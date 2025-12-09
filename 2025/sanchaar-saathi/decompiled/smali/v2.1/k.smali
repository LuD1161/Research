.class public abstract Lv2/k;
.super Lw2/g;
.source "SourceFile"


# instance fields
.field public final c:Lw2/i;

.field public final d:LR1/g;

.field public final synthetic e:Lv2/m;


# direct methods
.method public constructor <init>(Lv2/m;Lw2/i;LR1/g;)V
    .locals 0

    iput-object p1, p0, Lv2/k;->e:Lv2/m;

    invoke-direct {p0}, Lw2/g;-><init>()V

    iput-object p2, p0, Lv2/k;->c:Lw2/i;

    iput-object p3, p0, Lv2/k;->d:LR1/g;

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lv2/k;->e:Lv2/m;

    iget-object p1, p1, Lv2/m;->a:Lw2/t;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lv2/k;->d:LR1/g;

    invoke-virtual {p1, v0}, Lw2/t;->u(LR1/g;)V

    :cond_0
    iget-object p1, p0, Lv2/k;->c:Lw2/i;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetLaunchReviewFlowInfo"

    invoke-virtual {p1, v1, v0}, Lw2/i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
