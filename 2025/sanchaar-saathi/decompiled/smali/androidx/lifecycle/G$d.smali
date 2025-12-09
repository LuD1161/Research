.class public abstract Landroidx/lifecycle/G$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/G$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/G$d$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/G$d$a;

.field public static final c:Lm0/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/G$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/G$d$a;-><init>(Lv3/g;)V

    sput-object v0, Landroidx/lifecycle/G$d;->b:Landroidx/lifecycle/G$d$a;

    sget-object v0, Ln0/c$a;->a:Ln0/c$a;

    sput-object v0, Landroidx/lifecycle/G$d;->c:Lm0/a$b;

    return-void
.end method
