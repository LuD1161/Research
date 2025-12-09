.class public Ll1/e;
.super Ll1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/e$a;
    }
.end annotation


# instance fields
.field public final a:LY2/i;

.field public final b:Ll1/e$a;


# direct methods
.method public constructor <init>(LY2/i;LY2/j$d;)V
    .locals 0

    invoke-direct {p0}, Ll1/a;-><init>()V

    iput-object p1, p0, Ll1/e;->a:LY2/i;

    new-instance p1, Ll1/e$a;

    invoke-direct {p1, p0, p2}, Ll1/e$a;-><init>(Ll1/e;LY2/j$d;)V

    iput-object p1, p0, Ll1/e;->b:Ll1/e$a;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll1/e;->a:LY2/i;

    invoke-virtual {v0, p1}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Ll1/g;
    .locals 1

    iget-object v0, p0, Ll1/e;->b:Ll1/e$a;

    return-object v0
.end method
