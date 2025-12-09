.class public final LR0/I$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR0/I;->c(LR0/E;Ljava/lang/String;LQ0/u;)LQ0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LQ0/u;

.field public final synthetic g:LR0/E;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:LR0/o;


# direct methods
.method public constructor <init>(LQ0/u;LR0/E;Ljava/lang/String;LR0/o;)V
    .locals 0

    iput-object p1, p0, LR0/I$a;->f:LQ0/u;

    iput-object p2, p0, LR0/I$a;->g:LR0/E;

    iput-object p3, p0, LR0/I$a;->h:Ljava/lang/String;

    iput-object p4, p0, LR0/I$a;->i:LR0/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LR0/I$a;->f:LQ0/u;

    invoke-static {v0}, Li3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LR0/x;

    iget-object v2, p0, LR0/I$a;->g:LR0/E;

    iget-object v3, p0, LR0/I$a;->h:Ljava/lang/String;

    sget-object v4, LQ0/d;->f:LQ0/d;

    invoke-direct {v1, v2, v3, v4, v0}, LR0/x;-><init>(LR0/E;Ljava/lang/String;LQ0/d;Ljava/util/List;)V

    new-instance v0, La1/c;

    iget-object v2, p0, LR0/I$a;->i:LR0/o;

    invoke-direct {v0, v1, v2}, La1/c;-><init>(LR0/x;LR0/o;)V

    invoke-virtual {v0}, La1/c;->run()V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LR0/I$a;->a()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    return-object v0
.end method
