.class public LK2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# instance fields
.field public final c:LK2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LK2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/e;->c:LK2/a;

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 1

    const-string v0, "check"

    iget-object p1, p1, LY2/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LK2/e;->c:LK2/a;

    invoke-virtual {p1}, LK2/a;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, LY2/j$d;->c()V

    :goto_0
    return-void
.end method
