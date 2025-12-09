.class public interface abstract LQ0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ0/l$b;
    }
.end annotation


# static fields
.field public static final a:LQ0/l$b$c;

.field public static final b:LQ0/l$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ0/l$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQ0/l$b$c;-><init>(LQ0/l$a;)V

    sput-object v0, LQ0/l;->a:LQ0/l$b$c;

    new-instance v0, LQ0/l$b$b;

    invoke-direct {v0, v1}, LQ0/l$b$b;-><init>(LQ0/l$a;)V

    sput-object v0, LQ0/l;->b:LQ0/l$b$b;

    return-void
.end method
