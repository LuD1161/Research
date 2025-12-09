.class public final LG3/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/l;->a(LG3/d;Lu3/p;)LG3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:LG3/d;

.field public final synthetic f:Lu3/p;


# direct methods
.method public constructor <init>(LG3/d;Lu3/p;)V
    .locals 0

    iput-object p1, p0, LG3/l$a;->e:LG3/d;

    iput-object p2, p0, LG3/l$a;->f:Lu3/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lv3/t;

    invoke-direct {v0}, Lv3/t;-><init>()V

    iget-object v1, p0, LG3/l$a;->e:LG3/d;

    new-instance v2, LG3/l$b;

    iget-object v3, p0, LG3/l$a;->f:Lu3/p;

    invoke-direct {v2, v0, p1, v3}, LG3/l$b;-><init>(Lv3/t;LG3/e;Lu3/p;)V

    invoke-interface {v1, v2, p2}, LG3/d;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
