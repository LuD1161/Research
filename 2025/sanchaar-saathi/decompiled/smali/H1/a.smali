.class public abstract LH1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LH1/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LH1/a;->a:I

    .line 3
    iput-object p2, p0, LH1/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LH1/a;->c:Ljava/lang/Object;

    .line 5
    invoke-static {}, LH1/c;->a()LH1/b;

    move-result-object p1

    invoke-virtual {p1, p0}, LH1/b;->a(LH1/a;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;LH1/d;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, LH1/a;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Boolean;)LH1/a$a;
    .locals 1

    new-instance v0, LH1/a$a;

    invoke-direct {v0, p0, p1, p2}, LH1/a$a;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method
