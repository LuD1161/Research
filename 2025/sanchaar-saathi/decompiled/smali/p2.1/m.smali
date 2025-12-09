.class public final Lp2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/g;


# instance fields
.field public final a:Lq2/g;

.field public final b:Lq2/g;

.field public final c:Lq2/g;


# direct methods
.method public constructor <init>(Lq2/g;Lq2/g;Lq2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/m;->a:Lq2/g;

    iput-object p2, p0, Lp2/m;->b:Lq2/g;

    iput-object p3, p0, Lp2/m;->c:Lq2/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lp2/m;->a:Lq2/g;

    invoke-interface {v0}, Lq2/g;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lp2/m;->b:Lq2/g;

    invoke-interface {v1}, Lq2/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/i;

    iget-object v2, p0, Lp2/m;->c:Lq2/g;

    check-cast v2, Lp2/p;

    invoke-virtual {v2}, Lp2/p;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lp2/l;

    check-cast v0, Lp2/w;

    invoke-direct {v3, v0, v1, v2}, Lp2/l;-><init>(Lp2/w;Lp2/i;Landroid/content/Context;)V

    return-object v3
.end method
