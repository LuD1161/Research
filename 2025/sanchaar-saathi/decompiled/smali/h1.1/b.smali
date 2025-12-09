.class public final synthetic Lh1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# instance fields
.field public final synthetic c:Lh1/e;


# direct methods
.method public synthetic constructor <init>(Lh1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/b;->c:Lh1/e;

    return-void
.end method


# virtual methods
.method public final onMethodCall(LY2/i;LY2/j$d;)V
    .locals 1

    iget-object v0, p0, Lh1/b;->c:Lh1/e;

    invoke-static {v0, p1, p2}, Lh1/e;->h(Lh1/e;LY2/i;LY2/j$d;)V

    return-void
.end method
