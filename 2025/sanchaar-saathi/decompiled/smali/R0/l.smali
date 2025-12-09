.class public final LR0/l;
.super Lv0/b;
.source "SourceFile"


# static fields
.field public static final c:LR0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR0/l;

    invoke-direct {v0}, LR0/l;-><init>()V

    sput-object v0, LR0/l;->c:LR0/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lv0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    "

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method
