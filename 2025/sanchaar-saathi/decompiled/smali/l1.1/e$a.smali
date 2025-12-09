.class public Ll1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:LY2/j$d;

.field public final synthetic b:Ll1/e;


# direct methods
.method public constructor <init>(Ll1/e;LY2/j$d;)V
    .locals 0

    iput-object p1, p0, Ll1/e$a;->b:Ll1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll1/e$a;->a:LY2/j$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll1/e$a;->a:LY2/j$d;

    invoke-interface {v0, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll1/e$a;->a:LY2/j$d;

    invoke-interface {v0, p1, p2, p3}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
