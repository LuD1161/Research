.class public final LK0/i$a$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK0/i$a;->o(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LK0/i;

.field public final synthetic g:LR/a;


# direct methods
.method public constructor <init>(LK0/i;LR/a;)V
    .locals 0

    iput-object p1, p0, LK0/i$a$a;->f:LK0/i;

    iput-object p2, p0, LK0/i$a$a;->g:LR/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LK0/i$a$a;->f:LK0/i;

    invoke-static {v0}, LK0/i;->b(LK0/i;)LL0/a;

    move-result-object v0

    iget-object v1, p0, LK0/i$a$a;->g:LR/a;

    invoke-interface {v0, v1}, LL0/a;->b(LR/a;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LK0/i$a$a;->a()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    return-object v0
.end method
