.class public Ll1/d;
.super Ll1/b;
.source "SourceFile"


# instance fields
.field public final a:Lj1/d;

.field public final b:LY2/j$d;

.field public final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(LY2/j$d;Lj1/d;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ll1/b;-><init>()V

    iput-object p1, p0, Ll1/d;->b:LY2/j$d;

    iput-object p2, p0, Ll1/d;->a:Lj1/d;

    iput-object p3, p0, Ll1/d;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll1/d;->b:LY2/j$d;

    invoke-interface {v0, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll1/d;->b:LY2/j$d;

    invoke-interface {v0, p1, p2, p3}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Lj1/d;
    .locals 1

    iget-object v0, p0, Ll1/d;->a:Lj1/d;

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Ll1/d;->c:Ljava/lang/Boolean;

    return-object v0
.end method
